// ignore_for_file: use_build_context_synchronously

import 'package:birex/data/data.dart';
import 'package:birex/data/model/credential_offer/credentialofferresponse.dart';
import 'package:birex/domain/usecase/request_credential/request_authorized_credential_use_case.dart';
import 'package:birex/domain/utils/home_page_redirect_sucess_handler.dart';
import 'package:birex/presentation/components/screen/loading/overlay_manager.dart';
import 'package:birex/service/service.dart';
import 'package:birex/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scan_credential_qr_code_usecase.g.dart';

@riverpod
Future<ScanCredentialQrCodeUsecase> scanCredentialQrCodeUsecase(Ref ref) async {
  final router = ref.watch(birexRouterProvider);
  final requestCredentialUseCase = await ref.watch(requestAuthorizedCredentialUseCaseProvider.future);
  final dialogService = ref.watch(dialogServiceProvider);
  final errorHandler = ShowDialogErrorHandler<BuildContext>(dialogService);
  final successHandler = ShowDialogSuccessHandler<VerifiableCredential, BuildContext>(
    dialogService,
    textMapper: (payload, __) => 'Credenziali ${payload!.subject} richieste con successo!',
  );
  final redirectToHome = RedirectToHomePageSuccessHandler<VerifiableCredential, BuildContext>(router: router);
  return ScanCredentialQrCodeUsecase(
    router: router,
    requestCredentialUseCase: requestCredentialUseCase,
    authRepository: ref.read(authenticationRepositoryProvider),
    errorHandlers: [errorHandler],
    successHandlers: [successHandler, redirectToHome],
  );
}

class ScanCredentialQrCodeUsecase extends UseCase<VerifiableCredential, BuildContext> {
  ScanCredentialQrCodeUsecase({
    required this.router,
    required this.requestCredentialUseCase,
    required this.authRepository,
    super.requirements,
    super.errorHandlers,
    super.successHandlers,
    super.validators,
  });

  final GoRouter router;
  final RequestAuthorizedCredentialUseCase requestCredentialUseCase;
  final IAuthenticationRepository authRepository;

  @override
  AsyncApplicationResponse<VerifiableCredential> call(BuildContext input) async {
    final check = await checkRequirements();
    if (check.isError) return _closeRequest(check, input: input);
    final qrResponse = await router.push<(Uri?, CredentialOfferResponse?)>(QRCodeScannerPageRoute.pagePath);
    if (qrResponse == null) {
      final error = Responses.failure<void, ApplicationError>([ApplicationError.operationAborted()]);
      return _closeRequest(error, input: input);
    }
    final credentialUri = qrResponse.$1;
    final credentialOffer = qrResponse.$2;
    if (credentialUri == null && credentialOffer == null) {
      final error = ApplicationError.generic(message: 'Il QR code non è valido');
      final errorResponse = Responses.failure<VerifiableCredential, ApplicationError>([error]);
      await applyErrorHandlers(errorResponse, input);
      return Responses.failure([error]);
    }
    var offerPayload = credentialOffer;
    /* Handle case where the QR Code contained a reference to the credetialOffer API instead of a value */
    if (credentialOffer == null && credentialUri != null) {
      final offer = await check.flatMapAsync((_) => authRepository.getIssuerOffer(uri: credentialUri.toString()));
      if (offer.isError) return _closeRequest(offer, input: input);
      offerPayload = offer.payload;
    }
    if (offerPayload == null) return _closeRequest(check, input: input);
    if (input.mounted) OverlayLoaderManager.instance.showLoader(input);
    final response = await requestCredentialUseCase.call(offerPayload);
    await response.ifErrorAsync((_) => applyErrorHandlers(response, input));
    await response.ifSuccessAsync((_) => applySuccessHandlers(response, input));
    return response;
  }

  AsyncApplicationResponse<VerifiableCredential> _closeRequest(
    ApplicationResponse<dynamic> response, {
    required BuildContext input,
  }) async {
    final errorResponse = Responses.failure<VerifiableCredential, ApplicationError>([
      ...response.errors ?? <ApplicationError>[],
    ]);
    await errorResponse.ifErrorAsync((_) => applyErrorHandlers(errorResponse, input));
    await errorResponse.ifSuccessAsync((_) => applySuccessHandlers(errorResponse, input));
    return errorResponse;
  }
}
