import 'package:birex/data/model/authentication/tokenauthenticationresponse.dart';
import 'package:birex/data/repository/authentication/i_authentication_repository.dart';
import 'package:birex/data/repository/authentication/impl/authentication_repository.dart';
import 'package:birex/data/repository/verifiable_credential/i_verifiable_credential_repository.dart';
import 'package:birex/data/repository/verifiable_credential/impl/verifiable_credential_repository.dart';
import 'package:birex/data/repository/well_known/i_well_known_repository.dart';
import 'package:birex/data/repository/well_known/impl/well_known_repository.dart';
import 'package:birex/utils/logger/custom_logger.dart';
import 'package:birex/utils/response.dart';
import 'package:birex/utils/usecase/use_case.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'request_authorized_credential_use_case.g.dart';

@riverpod
RequestAuthorizedCredentialUseCase requestAuthorizedCredentialUseCase(Ref ref) {
  return RequestAuthorizedCredentialUseCase(
    repository: ref.read(authenticationRepositoryProvider),
    verifiableCredentialRepository: ref.read(verifiableCredentialRepositoryProvider),
    wellKnownRepository: ref.read(wellKnownRepositoryProvider),
  );
}

class RequestAuthorizedCredentialUseCase extends UseCase<void, CredentialPreauthorizationResponse> {
  RequestAuthorizedCredentialUseCase({
    required this.repository,
    required this.verifiableCredentialRepository,
    required this.wellKnownRepository,
    super.requirements,
    super.errorHandlers,
    super.successHandlers,
    super.validators,
  });

  final IAuthenticationRepository repository;
  final IWellKnownRepository wellKnownRepository;
  final IVerifiableCredentialRepository verifiableCredentialRepository;

  @override
  AsyncApplicationResponse<void> call(CredentialPreauthorizationResponse input) async {
    final check = await checkRequirements();
    final issuerResponse = await check.flatMapAsync(
      (_) => wellKnownRepository.getCredentialIssuerConfiguration(
        input.credentialIssuer,
      ),
    );
    final issuerPayload = issuerResponse.payload;
    if (issuerResponse.isError || issuerPayload == null) return _closeRequest(issuerResponse, input: input);
    final oauthResponse = await wellKnownRepository.getAuthorizationServerConfiguration(
      input.credentialIssuer,
    );
    final oauthPayload = oauthResponse.payload;
    if (oauthResponse.isError || oauthPayload == null) return _closeRequest(oauthResponse, input: input);

    /* Credential request */
    final loginResponse = await repository.login(
      uri: oauthPayload.tokenEndpoint,
      code: input.grants.entries.first.value.code,
      grantType: input.grants.entries.first.key,
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
        format: 'vc+sd-jwt',
        vct: issuerPayload.credentialConfigurationsSupported.values.first.vct,
        jwt: jwtToken,
        proofType: 'jwt',
      ),
    );
    final credentialPayload = credentialResponse.payload;

    if (credentialResponse.isError || credentialPayload == null) return _closeRequest(credentialResponse, input: input);
    final decodedCredential = JWT.decode(credentialPayload.credential);
    ApplicationLogger.instance.logApplicationSuccess(decodedCredential.toString());
    await credentialResponse.ifErrorAsync((_) => applyErrorHandlers(credentialResponse));
    await credentialResponse.ifSuccessAsync((_) => applySuccessHandlers(credentialResponse, input));
    return credentialResponse.map((_) {});
  }

  AsyncApplicationResponse<void> _closeRequest(
    ApplicationResponse<void> response, {
    required CredentialPreauthorizationResponse input,
  }) async {
    await response.ifErrorAsync((_) => applyErrorHandlers(response));
    await response.ifSuccessAsync((_) => applySuccessHandlers(response, input));
    return response.map((_) {});
  }
}
