// ignore_for_file: use_build_context_synchronously

import 'package:birex/data/model/authentication/tokenauthenticationresponse.dart';
import 'package:birex/data/repository/authentication/i_authentication_repository.dart';
import 'package:birex/data/repository/authentication/impl/authentication_repository.dart';
import 'package:birex/domain/usecase/request_credential/request_authorized_credential_use_case.dart';
import 'package:birex/presentation/components/screen/loading/overlay_manager.dart';
import 'package:birex/service/dialog/dialog_service.dart';
import 'package:birex/service/routing/router.dart';
import 'package:birex/service/routing/routes/qr_code_scanner_route.dart';
import 'package:birex/utils/error/applicationerror.dart';
import 'package:birex/utils/response.dart';
import 'package:birex/utils/usecase/handler/show_dialog_error_handler.dart';
import 'package:birex/utils/usecase/use_case.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scan_credential_qr_code_usecase.g.dart';

@riverpod
ScanCredentialQrCodeUsecase scanCredentialQrCodeUsecase(Ref ref) {
  final router = ref.watch(birexRouterProvider);
  final requestCredentialUseCase = ref.watch(requestAuthorizedCredentialUseCaseProvider);
  final dialogService = ref.watch(dialogServiceProvider);
  final errorHandler = ShowDialogErrorHandler(dialogService);
  return ScanCredentialQrCodeUsecase(
    router: router,
    requestCredentialUseCase: requestCredentialUseCase,
    authRepository: ref.read(authenticationRepositoryProvider),
    errorHandlers: [errorHandler],
  );
}

class ScanCredentialQrCodeUsecase extends UseCase<void, BuildContext> {
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
  AsyncApplicationResponse<void> call(BuildContext input) async {
    final check = await checkRequirements();
    if (check.isError) return check;
    final qrResponse = await router.push<(Uri?, CredentialPreauthorizationResponse?)>(QRCodeScannerPageRoute.pagePath);
    if (qrResponse == null) {
      final error = Responses.failure<void, ApplicationError>([ApplicationError.operationAborted()]);
      return _closeRequest(error, input: input);
    }
    final credentialUri = qrResponse.$1;
    final credentialOffer = qrResponse.$2;
    if (credentialUri == null && credentialOffer == null) {
      final error = ApplicationError.generic(message: 'Il QR code non è valido');
      final errorResponse = Responses.failure<void, ApplicationError>([error]);
      await applyErrorHandlers(errorResponse);
      return Responses.failure([error]);
    }
    var offerPayload = credentialOffer;
    /* Handle case where the QR Code contained a reference to the credetialOffer API instead of a value */
    if (credentialOffer == null && credentialUri == null) {
      final offer = await check.flatMapAsync((_) => authRepository.getIssuerOffer(uri: credentialUri.toString()));
      if (offer.isError) return _closeRequest(offer, input: input);
      offerPayload = offer.payload;
    }
    if (offerPayload == null) return _closeRequest(check, input: input);
    if (input.mounted) OverlayLoaderManager.instance.showLoader(input);
    return requestCredentialUseCase.call(offerPayload);
  }

  AsyncApplicationResponse<void> _closeRequest(
    ApplicationResponse<void> response, {
    required BuildContext input,
  }) async {
    await response.ifErrorAsync((_) => applyErrorHandlers(response));
    await response.ifSuccessAsync((_) => applySuccessHandlers(response, input));
    return response.map((_) {});
  }
}
