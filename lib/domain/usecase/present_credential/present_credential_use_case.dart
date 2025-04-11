import 'package:birex/data/data.dart';
import 'package:birex/domain/usecase/present_credential/command/presentcredentialcommand.dart';
import 'package:birex/domain/utils/home_page_redirect_sucess_handler.dart';
import 'package:birex/presentation/components/bottom_sheet/custom_bottom_sheet.dart';
import 'package:birex/presentation/components/screen/loading/overlay_manager.dart';
import 'package:birex/presentation/theme/theme.dart';
import 'package:birex/service/service.dart';
import 'package:birex/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'present_credential_use_case.g.dart';

@riverpod
Future<PresentCredentialUseCase> presentCredentialUseCase(Ref ref) async {
  final router = ref.watch(birexRouterProvider);
  final dialogService = ref.watch(dialogServiceProvider);
  final errorHandler = ShowDialogErrorHandler<PresentCredentialCommand>(dialogService);
  final walletProofBuilder = await ref.read(jwtBuilderProvider.future);
  final successHandler = ShowDialogSuccessHandler<void, PresentCredentialCommand>(
    dialogService,
    textMapper: (payload, __) => 'Credenziali presentate con successo!',
  );
  final redirectToHome = RedirectToHomePageSuccessHandler<void, PresentCredentialCommand>(router: router);
  final verifiableCredentialRepository = ref.watch(verifiableCredentialRepositoryProvider);
  final bottomSheetService = ref.watch(bottomSheetServiceProvider);
  return PresentCredentialUseCase(
    bottomSheetService: bottomSheetService,
    walletProofBuilder: walletProofBuilder,
    repository: verifiableCredentialRepository,
    errorHandlers: [errorHandler],
    successHandlers: [successHandler, redirectToHome],
  );
}

class PresentCredentialUseCase extends UseCase<void, PresentCredentialCommand> {
  PresentCredentialUseCase({
    required this.repository,
    required this.walletProofBuilder,
    required this.bottomSheetService,
    super.requirements,
    super.errorHandlers,
    super.successHandlers,
    super.validators,
  });

  final IVerifiableCredentialRepository repository;
  final WalletProofBuilder walletProofBuilder;
  final BottomSheetService bottomSheetService;

  @override
  AsyncApplicationResponse<void> call(PresentCredentialCommand input) async {
    final context = input.context;
    final check = await checkRequirements();
    final validate = await check.flatMapAsync((e) => validateInput(input));
    if (context.mounted) OverlayLoaderManager.instance.showLoader(context);
    final requestUriResponse = await validate.flatMapAsync(
      (e) => repository.generatePresentation(requestUri: input.requestUri),
    );
    final presentation = requestUriResponse.payload;
    if (requestUriResponse.isError || presentation == null) return _closeRequest(requestUriResponse.map((_) {}), input);

    final credentialResponse = _findCredential(presentation.credential);
    final credential = credentialResponse.payload;
    if (credentialResponse.isError || credential == null) return _closeRequest(credentialResponse.map((_) {}), input);
    final targetInfo = presentation.requiredInformation;
    final knownTargetInfo = credential.knownCredentialInfo.where((e) => targetInfo.contains(e.type.apiValue)).toList();
    final bottomSheetConfirmation = await bottomSheetService.showCustomBottomSheet<bool>(
      bottomSheetBuilder: (context) =>
          _RequestedCredentialsDisplay(requestedInfo: knownTargetInfo, credential: credential),
    );

    if (bottomSheetConfirmation == null || !bottomSheetConfirmation) {
      OverlayLoaderManager.instance.hideLoader();
      return _closeRequest(Responses.failure<void, ApplicationError>([]), input);
    }

    final vpTokenResponse = _generateVpToken(
      targetInfo,
      credential,
      nonce: presentation.nonce,
      clientId: presentation.clientId,
    );
    final vpToken = vpTokenResponse.payload;
    if (vpTokenResponse.isError || vpToken == null) return _closeRequest(vpTokenResponse.map((_) {}), input);

    final response = await repository.presentCredential(
      uri: presentation.responseUri,
      vpToken: vpToken,
      state: presentation.state,
      presentationDefinition: presentation.presentationDefinition,
    );
    OverlayLoaderManager.instance.hideLoader();
    return _closeRequest(response, input);
  }

  AsyncApplicationResponse<void> _closeRequest(
    Response<void, ApplicationError> response,
    PresentCredentialCommand input,
  ) async {
    await response.ifSuccessAsync((_) => applySuccessHandlers(response, input));
    await response.ifErrorAsync((e) => applyErrorHandlers(response, input));
    return response;
  }

  Response<VerifiableCredential, ApplicationError> _findCredential(String name) {
    final myCredentials = HiveController.instance.getVerifiableCredentials();
    final match = myCredentials.getWhere((e) => e.credential.subject == name)?.credential;

    if (match == null) {
      final error = ApplicationError.generic(message: 'The credential is not in the wallet');
      final response = Responses.failure<VerifiableCredential, ApplicationError>([error]);
      return response;
    }
    return Responses.success<VerifiableCredential, ApplicationError>(match);
  }

  Response<String, ApplicationError> _generateVpToken(
    List<String> targetInfo,
    VerifiableCredential match, {
    required String nonce,
    required String clientId,
  }) {
    final selectedDisclosures =
        match.knownCredentialInfo.where((e) => targetInfo.contains(e.type.apiValue)).map((e) => e.disclosure).toList();

    final cleanCredential = match.credentialResponse.credential.split('~').first;
    final vpToken = '$cleanCredential~${selectedDisclosures.join('~')}';

    final keyBinding = walletProofBuilder.createPresentationKeyBindingJWT(
      nonce: nonce,
      audience: clientId,
    );

    return Responses.success<String, ApplicationError>('$vpToken~$keyBinding');
  }
}

/* UI Components related to UseCase */

class _RequestedCredentialsDisplay extends StatefulWidget {
  const _RequestedCredentialsDisplay({
    required this.requestedInfo,
    required this.credential,
  });

  final VerifiableCredential credential;
  final List<KnownVerifiableCredentialInformation> requestedInfo;

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
    final credentialDisplay = widget.credential.display;
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
                    text: credentialDisplay?.name ?? 'N/A',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Dimensions.mediumSize.spacer(),
            Wrap(
              spacing: Dimensions.smallSize,
              children: [
                for (final claim in widget.requestedInfo) Chip(label: Text(claim.type.formattedName)),
              ],
            ),
            Dimensions.mediumSize.spacer(),
            FilledButton(
              onPressed: () => _completeOperation(context),
              child: const Text('Conferma'),
            ),
          ],
        ),
      ),
    );
  }

  void _completeOperation(BuildContext context) {
    OverlayLoaderManager.instance.showLoader(context);
    context.pop(true);
  }
}
