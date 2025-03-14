import 'package:birex/data/model/verifiable_credentials/credential/verifiablecredential.dart';
import 'package:birex/data/repository/authentication/i_authentication_repository.dart';
import 'package:birex/data/repository/authentication/impl/authentication_repository.dart';
import 'package:birex/domain/usecase/request_credential/by_issuer/command/requestcredentialcommand.dart';
import 'package:birex/domain/usecase/request_credential/request_authorized_credential_use_case.dart';
import 'package:birex/domain/utils/home_page_redirect_sucess_handler.dart';
import 'package:birex/service/dialog/dialog_service.dart';
import 'package:birex/service/routing/router.dart';
import 'package:birex/utils/error/applicationerror.dart';
import 'package:birex/utils/response.dart';
import 'package:birex/utils/usecase/handler/show_dialog_error_handler.dart';
import 'package:birex/utils/usecase/use_case.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'request_credential_usecase.g.dart';

@riverpod
RequestCredentialUseCase requestCredentialUseCase(Ref ref) {
  final dialogService = ref.read(dialogServiceProvider);
  final router = ref.read(birexRouterProvider);
  final successDialog = ShowDialogSuccessHandler<VerifiableCredential, RequestCredentialCommand>(
    dialogService,
    textMapper: (payload, input) => 'Credenziali ${payload!.subject} richieste con successo!',
  );
  final redirectToHome =
      RedirectToHomePageSuccessHandler<VerifiableCredential, RequestCredentialCommand>(router: router);
  final errorHandler = ShowDialogErrorHandler<RequestCredentialCommand>(dialogService);

  return RequestCredentialUseCase(
    requestAuthorizedCredentialUseCase: ref.read(requestAuthorizedCredentialUseCaseProvider),
    repository: ref.read(authenticationRepositoryProvider),
    errorHandlers: [errorHandler],
    successHandlers: [successDialog, redirectToHome],
  );
}

class RequestCredentialUseCase extends UseCase<VerifiableCredential, RequestCredentialCommand> {
  RequestCredentialUseCase({
    required this.requestAuthorizedCredentialUseCase,
    required this.repository,
    super.requirements,
    super.errorHandlers,
    super.successHandlers,
    super.validators,
  });

  final RequestAuthorizedCredentialUseCase requestAuthorizedCredentialUseCase;
  final IAuthenticationRepository repository;

  @override
  AsyncApplicationResponse<VerifiableCredential> call(RequestCredentialCommand input) async {
    final check = await checkRequirements();
    final authResponse = await check.flatMapAsync(
      (_) => repository.authorizeCredentialIssuance(
        uri: input.host,
        credentialSubject: input.credentialSubject,
      ),
    );
    final authPayload = authResponse.payload;
    if (authResponse.isError || authPayload == null) return _closeRequest(authResponse, input: input);
    final response = await authResponse.flatMapAsync((_) => requestAuthorizedCredentialUseCase.call(authPayload));
    await response.ifErrorAsync((_) => applyErrorHandlers(response, input));
    await response.ifSuccessAsync((_) => applySuccessHandlers(response, input));
    return response;
  }

  AsyncApplicationResponse<VerifiableCredential> _closeRequest(
    ApplicationResponse<dynamic> response, {
    required RequestCredentialCommand input,
  }) async {
    final errorResponse = Responses.failure<VerifiableCredential, ApplicationError>([
      ...response.errors ?? <ApplicationError>[],
    ]);
    await errorResponse.ifErrorAsync((_) => applyErrorHandlers(errorResponse, input));
    await errorResponse.ifSuccessAsync((_) => applySuccessHandlers(errorResponse, input));
    return errorResponse;
  }
}
