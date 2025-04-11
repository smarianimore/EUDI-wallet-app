// ignore_for_file: use_build_context_synchronously

import 'package:birex/data/data.dart';
import 'package:birex/domain/usecase/request_credential/by_qr_code/command/scanqrcredentialcommand.dart';
import 'package:birex/domain/usecase/request_credential/request_authorized_credential_use_case.dart';
import 'package:birex/domain/utils/home_page_redirect_sucess_handler.dart';
import 'package:birex/presentation/components/screen/loading/overlay_manager.dart';
import 'package:birex/service/service.dart';
import 'package:birex/utils/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scan_credential_qr_code_usecase.g.dart';

@riverpod
Future<ScanCredentialQrCodeUsecase> scanCredentialQrCodeUsecase(Ref ref) async {
  final router = ref.watch(birexRouterProvider);
  final requestCredentialUseCase = await ref.watch(requestAuthorizedCredentialUseCaseProvider.future);
  final dialogService = ref.watch(dialogServiceProvider);
  final errorHandler = ShowDialogErrorHandler<ScanQrCredentialCommand>(dialogService);
  final successHandler = ShowDialogSuccessHandler<VerifiableCredential, ScanQrCredentialCommand>(
    dialogService,
    textMapper: (payload, __) => 'Credenziali ${payload!.subject} richieste con successo!',
  );
  final redirectToHome =
      RedirectToHomePageSuccessHandler<VerifiableCredential, ScanQrCredentialCommand>(router: router);
  return ScanCredentialQrCodeUsecase(
    requestCredentialUseCase: requestCredentialUseCase,
    authRepository: ref.read(authenticationRepositoryProvider),
    errorHandlers: [errorHandler],
    successHandlers: [successHandler, redirectToHome],
  );
}

class ScanCredentialQrCodeUsecase extends UseCase<VerifiableCredential, ScanQrCredentialCommand> {
  ScanCredentialQrCodeUsecase({
    required this.requestCredentialUseCase,
    required this.authRepository,
    super.requirements,
    super.errorHandlers,
    super.successHandlers,
    super.validators,
  });

  final RequestAuthorizedCredentialUseCase requestCredentialUseCase;
  final IAuthenticationRepository authRepository;

  @override
  AsyncApplicationResponse<VerifiableCredential> call(ScanQrCredentialCommand input) async {
    final context = input.context;
    final check = await checkRequirements();
    if (check.isError) return _closeRequest(check, input: input);
    final credentialUri = input.credentialOfferUri;
    final credentialOffer = input.credentialOffer;
    if (credentialUri == null && credentialOffer == null) {
      final error = ApplicationError.generic(message: 'Il QR code non è valido');
      final errorResponse = Responses.failure<VerifiableCredential, ApplicationError>([error]);
      await applyErrorHandlers(errorResponse, input);
      return Responses.failure([error]);
    }
    var offerPayload = credentialOffer;
    /* Handle case where the QR Code contained a reference to the credetialOffer API instead of a value */
    if (credentialOffer == null && credentialUri != null) {
      final offer = await check.flatMapAsync((_) => authRepository.getIssuerOffer(uri: credentialUri));
      if (offer.isError) return _closeRequest(offer, input: input);
      offerPayload = offer.payload;
    }
    if (offerPayload == null) return _closeRequest(check, input: input);
    if (context.mounted) OverlayLoaderManager.instance.showLoader(context);
    final response = await requestCredentialUseCase.call(offerPayload);
    await response.ifErrorAsync((_) => applyErrorHandlers(response, input));
    await response.ifSuccessAsync((_) => applySuccessHandlers(response, input));
    return response;
  }

  AsyncApplicationResponse<VerifiableCredential> _closeRequest(
    ApplicationResponse<dynamic> response, {
    required ScanQrCredentialCommand input,
  }) async {
    final errorResponse = Responses.failure<VerifiableCredential, ApplicationError>([
      ...response.errors ?? <ApplicationError>[],
    ]);
    await errorResponse.ifErrorAsync((_) => applyErrorHandlers(errorResponse, input));
    await errorResponse.ifSuccessAsync((_) => applySuccessHandlers(errorResponse, input));
    return errorResponse;
  }
}
