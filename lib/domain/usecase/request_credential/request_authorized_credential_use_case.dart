import 'package:birex/data/model/authentication/tokenauthenticationresponse.dart';
import 'package:birex/data/model/verifiable_credentials/configuration/supportedcredentialconfiguration.dart';
import 'package:birex/data/model/verifiable_credentials/credential/verifiablecredential.dart';
import 'package:birex/data/repository/authentication/i_authentication_repository.dart';
import 'package:birex/data/repository/authentication/impl/authentication_repository.dart';
import 'package:birex/data/repository/verifiable_credential/i_verifiable_credential_repository.dart';
import 'package:birex/data/repository/verifiable_credential/impl/verifiable_credential_repository.dart';
import 'package:birex/data/repository/well_known/i_well_known_repository.dart';
import 'package:birex/data/repository/well_known/impl/well_known_repository.dart';
import 'package:birex/presentation/components/bottom_sheet/custom_bottom_sheet.dart';
import 'package:birex/presentation/components/screen/loading/overlay_manager.dart';
import 'package:birex/presentation/theme/dimension.dart';
import 'package:birex/presentation/theme/separator.dart';
import 'package:birex/service/bottom_sheet/bottom_sheet_service.dart';
import 'package:birex/service/dialog/dialog_service.dart';
import 'package:birex/service/jwt/jwt_service.dart';
import 'package:birex/service/storage/hive/hive_controller.dart';
import 'package:birex/utils/error/applicationerror.dart';
import 'package:birex/utils/response.dart';
import 'package:birex/utils/usecase/handler/show_dialog_error_handler.dart';
import 'package:birex/utils/usecase/use_case.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'request_authorized_credential_use_case.g.dart';

@riverpod
RequestAuthorizedCredentialUseCase requestAuthorizedCredentialUseCase(Ref ref) {
  final dialogService = ref.read(dialogServiceProvider);
  final dialogOnError = ShowDialogErrorHandler<CredentialPreauthorizationResponse>(dialogService);
  return RequestAuthorizedCredentialUseCase(
    bottomSheetService: ref.read(bottomSheetServiceProvider),
    jwtService: ref.read(jwtServiceProvider).builder(),
    repository: ref.read(authenticationRepositoryProvider),
    verifiableCredentialRepository: ref.read(verifiableCredentialRepositoryProvider),
    wellKnownRepository: ref.read(wellKnownRepositoryProvider),
    errorHandlers: [dialogOnError],
  );
}

class RequestAuthorizedCredentialUseCase extends UseCase<VerifiableCredential, CredentialPreauthorizationResponse> {
  RequestAuthorizedCredentialUseCase({
    required this.bottomSheetService,
    required this.jwtService,
    required this.repository,
    required this.verifiableCredentialRepository,
    required this.wellKnownRepository,
    super.requirements,
    super.errorHandlers,
    super.successHandlers,
    super.validators,
  });

  final BottomSheetService bottomSheetService;
  final JWTBuilder jwtService;
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
    final txCodeRequest = preAuthorizedGrantProperties.transactionCode;

    final txCode = await bottomSheetService.showCustomBottomSheet<String>(
      bottomSheetBuilder: (context) => _RequestedCredentialsDisplay(
        configuration: target,
        requiresTxCode: txCodeRequest != null,
        codeLength: txCodeRequest?.length,
        hint: txCodeRequest?.description,
      ),
    );

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
    final jwt = jwtService.buildVCLoginJWT(
      issuer: issuerPayload.credentialIssuer,
      nonce: loginPayload.cNonce,
      kty: keyProofPayload.kty,
      crv: keyProofPayload.crv,
      x: keyProofPayload.x,
      y: keyProofPayload.y,
    );
    final jwtToken = jwtService.signJWT(jwt, keyProofPayload.x);
    final credentialResponse = await keyProofResponse.flatMapAsync(
      (keyproof) => verifiableCredentialRepository.generateCredentials(
        display: target.display.first,
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
    await credentialResponse.ifErrorAsync((_) => applyErrorHandlers(credentialResponse, input));
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
    await errorResponse.ifErrorAsync((_) => applyErrorHandlers(errorResponse, input));
    await errorResponse.ifSuccessAsync((_) => applySuccessHandlers(errorResponse, input));
    return errorResponse;
  }
}

/* UI Components related to UseCase */

class _RequestedCredentialsDisplay extends StatefulWidget {
  const _RequestedCredentialsDisplay({
    required this.configuration,
    required this.requiresTxCode,
    this.codeLength,
    this.hint,
  });

  final SupportedCredentialConfiguration configuration;
  final bool requiresTxCode;
  final num? codeLength;
  final String? hint;

  @override
  State<_RequestedCredentialsDisplay> createState() => __RequestedCredentialsDisplayState();
}

class __RequestedCredentialsDisplayState extends State<_RequestedCredentialsDisplay> {
  late final TextEditingController _controller;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      OverlayLoaderManager.instance.hideLoader();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      title: 'Richiesta credenziali',
      beforeClosing: () => OverlayLoaderManager.instance.showLoader(context),
      body: (context) => Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text.rich(
              TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
                  const TextSpan(
                    text: 'Richiesta di credenziali per: ',
                  ),
                  TextSpan(
                    text: widget.configuration.display.first.name,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Dimensions.mediumSize.spacer(),
            Wrap(
              spacing: Dimensions.smallSize,
              children: [
                for (final claim in widget.configuration.claims.entries)
                  Chip(label: Text(claim.value.display.first.name)),
              ],
            ),
            Dimensions.mediumSize.spacer(),
            if (widget.requiresTxCode) ...[
              TextFormField(
                controller: _controller,
                validator: _validator,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: widget.hint,
                  label: const Text('Inserisci codice'),
                  alignLabelWithHint: true,
                  counterText: '${_controller.text.length}/${widget.codeLength}',
                ),
              ),
              Dimensions.mediumSize.spacer(),
            ],
            FilledButton(
              onPressed: () {
                if (!widget.requiresTxCode) {
                  _completeOperation(context);
                } else if (_formKey.currentState!.validate()) {
                  _completeOperation(context);
                }
              },
              child: const Text('Conferma'),
            ),
          ],
        ),
      ),
    );
  }

  void _completeOperation(BuildContext context) {
    OverlayLoaderManager.instance.showLoader(context);
    final value = _controller.text.isEmpty ? null : _controller.text;
    context.pop(value);
  }

  String? _validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Inserisci il codice di sicurezza';
    }
    return null;
  }
}
