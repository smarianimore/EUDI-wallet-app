import 'package:birex/domain/usecase/request_credential/command/requestcredentialcommand.dart';
import 'package:birex/domain/usecase/request_credential/request_credential_usecase.dart';
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
  final requestCredentialUseCase = ref.watch(requestCredentialUseCaseProvider);
  final dialogService = ref.watch(dialogServiceProvider);
  final errorHandler = ShowDialogErrorHandler(dialogService);
  return ScanCredentialQrCodeUsecase(
    router: router,
    requestCredentialUseCase: requestCredentialUseCase,
    errorHandlers: [errorHandler],
  );
}

class ScanCredentialQrCodeUsecase extends UseCase<void, BuildContext> {
  ScanCredentialQrCodeUsecase({
    required this.router,
    required this.requestCredentialUseCase,
    super.requirements,
    super.errorHandlers,
    super.successHandlers,
    super.validators,
  });

  final GoRouter router;
  final RequestCredentialUseCase requestCredentialUseCase;

  @override
  AsyncApplicationResponse<void> call(BuildContext input) async {
    final check = await checkRequirements();
    if (check.isError) return check;
    final qrResponse = await router.push<(Uri?, String?)>(QRCodeScannerPageRoute.pagePath);
    if (qrResponse == null) return Responses.failure([ApplicationError.operationAborted()]);
    final credentialUri = qrResponse.$1;
    final credentialSubject = qrResponse.$2;
    if (credentialUri == null || credentialSubject == null) {
      final error = ApplicationError.generic(message: 'Il QR code non è valido');
      final errorResponse = Responses.failure<void, ApplicationError>([error]);
      await applyErrorHandlers(errorResponse);
      return Responses.failure([error]);
    }
    final command = RequestCredentialCommand(
      host: credentialUri.toString(),
      credentialType: 0,
      credentialSubject: credentialSubject,
    );
    if (input.mounted) OverlayLoaderManager.instance.showLoader(input);
    final credentialResponse = await requestCredentialUseCase.call(command);
    await credentialResponse.ifSuccessAsync((_) => applySuccessHandlers(credentialResponse, input));
    await credentialResponse.ifErrorAsync((error) => applyErrorHandlers(credentialResponse));
    return credentialResponse;
  }
}