import 'package:birex/data/model/authentication/tokenauthenticationresponse.dart';
import 'package:birex/data/model/verifiable_credentials/supportedcredentialconfiguration.dart';
import 'package:birex/data/repository/authentication/i_authentication_repository.dart';
import 'package:birex/data/repository/authentication/impl/authentication_repository.dart';
import 'package:birex/data/repository/verifiable_credential/i_verifiable_credential_repository.dart';
import 'package:birex/data/repository/verifiable_credential/impl/verifiable_credential_repository.dart';
import 'package:birex/data/repository/well_known/i_well_known_repository.dart';
import 'package:birex/data/repository/well_known/impl/well_known_repository.dart';
import 'package:birex/presentation/pages/qr_code/transaction_code_input_bottom_sheet.dart';
import 'package:birex/service/bottom_sheet.dart/bottom_sheet_service.dart';
import 'package:birex/service/storage/hive/hive_controller.dart';
import 'package:birex/utils/error/applicationerror.dart';
import 'package:birex/utils/response.dart';
import 'package:birex/utils/usecase/use_case.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'request_authorized_credential_use_case.g.dart';

@riverpod
RequestAuthorizedCredentialUseCase requestAuthorizedCredentialUseCase(Ref ref) {
  return RequestAuthorizedCredentialUseCase(
    bottomSheetService: ref.read(bottomSheetServiceProvider),
    repository: ref.read(authenticationRepositoryProvider),
    verifiableCredentialRepository: ref.read(verifiableCredentialRepositoryProvider),
    wellKnownRepository: ref.read(wellKnownRepositoryProvider),
  );
}

class RequestAuthorizedCredentialUseCase extends UseCase<VerifiableCredential, CredentialPreauthorizationResponse> {
  RequestAuthorizedCredentialUseCase({
    required this.bottomSheetService,
    required this.repository,
    required this.verifiableCredentialRepository,
    required this.wellKnownRepository,
    super.requirements,
    super.errorHandlers,
    super.successHandlers,
    super.validators,
  });

  final BottomSheetService bottomSheetService;
  final IAuthenticationRepository repository;
  final IWellKnownRepository wellKnownRepository;
  final IVerifiableCredentialRepository verifiableCredentialRepository;

  @override
  AsyncApplicationResponse<VerifiableCredential> call(CredentialPreauthorizationResponse input) async {
    final check = await checkRequirements();
    final issuerResponse = await check.flatMapAsync(
      (_) => wellKnownRepository.getCredentialIssuerConfiguration(
        input.credentialIssuer,
      ),
    );
    final issuerPayload = issuerResponse.payload;
    if (issuerResponse.isError || issuerPayload == null) return _closeRequest(issuerResponse, input: input);
    final target = issuerPayload.credentialConfigurationsSupported[input.credentialConfigurationIds.first];
    if (target == null) {
      final error = ApplicationError.generic(message: 'Invalid credential configuration');
      return _closeRequest(Responses.failure<void, ApplicationError>([error]), input: input);
    }
    final oauthResponse = await wellKnownRepository.getAuthorizationServerConfiguration(
      input.credentialIssuer,
    );
    final oauthPayload = oauthResponse.payload;
    if (oauthResponse.isError || oauthPayload == null) return _closeRequest(oauthResponse, input: input);

    final preAuthorizedGrant = input.grants.entries.first;
    final preAuthorizedGrantProperties = preAuthorizedGrant.value;
    final preAuthorizedGrantName = preAuthorizedGrant.key;

    String? txCode;

    if (preAuthorizedGrantProperties.transactionCode != null) {
      txCode = await bottomSheetService.showCustomBottomSheet<String>(
        bottomSheetBuilder: (context) => const TransactionCodeInputBottomSheet(),
      );
      // Show dialog to input transaction code
    }

    /* Credential request */
    final loginResponse = await repository.login(
      uri: oauthPayload.tokenEndpoint,
      code: preAuthorizedGrantProperties.code,
      grantType: preAuthorizedGrantName,
      transactionCode: txCode,
    );
    final loginPayload = loginResponse.payload;
    if (loginResponse.isError || loginPayload == null) return _closeRequest(loginResponse, input: input);
    final keyProofResponse = await loginResponse.flatMapAsync(
      (payload) => wellKnownRepository.getJWKConfiguration(
        input.credentialIssuer,
      ),
    );
    final keyProofPayload = keyProofResponse.payload;
    if (keyProofResponse.isError || keyProofPayload == null) return _closeRequest(keyProofResponse, input: input);
    final jwt = JWT(
      {
        'aud': issuerPayload.credentialIssuer,
        'iat': DateTime.now().millisecondsSinceEpoch,
        'nonce': loginPayload.cNonce,
      },
      issuer: issuerPayload.credentialIssuer,
      header: {
        'type': 'openid4vci-proof+jwt',
        'alg': 'ES256',
        'jwk': {
          'kty': keyProofPayload.kty,
          'crv': keyProofPayload.crv,
          'x': keyProofPayload.x,
          'y': keyProofPayload.y,
        },
      },
    );
    final jwtToken = jwt.sign(SecretKey(keyProofPayload.x));
    final credentialResponse = await keyProofResponse.flatMapAsync(
      (keyproof) => verifiableCredentialRepository.generateCredentials(
        accessToken: loginPayload.accessToken,
        uri: issuerPayload.credentialEndpoint,
        format: target.format,
        vct: target.vct,
        jwt: jwtToken,
        proofType: 'jwt',
        subject: target.scope,
      ),
    );
    final credentialPayload = credentialResponse.payload;
    if (credentialResponse.isError || credentialPayload == null) return _closeRequest(credentialResponse, input: input);
    final hiveController = HiveController.instance;
    await hiveController.saveVerifiableCredential(credentialPayload);
    await credentialResponse.ifErrorAsync((_) => applyErrorHandlers(credentialResponse));
    await credentialResponse.ifSuccessAsync((_) => applySuccessHandlers(credentialResponse, input));
    return credentialResponse;
  }

  AsyncApplicationResponse<VerifiableCredential> _closeRequest(
    ApplicationResponse<dynamic> response, {
    required CredentialPreauthorizationResponse input,
  }) async {
    final errorResponse = Responses.failure<VerifiableCredential, ApplicationError>([
      ...response.errors ?? <ApplicationError>[],
    ]);
    await errorResponse.ifErrorAsync((_) => applyErrorHandlers(errorResponse));
    await errorResponse.ifSuccessAsync((_) => applySuccessHandlers(errorResponse, input));
    return errorResponse;
  }
}
