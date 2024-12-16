import 'package:birex/data/repository/authentication/i_authentication_repository.dart';
import 'package:birex/data/repository/authentication/impl/authentication_repository.dart';
import 'package:birex/data/repository/verifiable_credential/i_verifiable_credential_repository.dart';
import 'package:birex/data/repository/verifiable_credential/impl/verifiable_credential_repository.dart';
import 'package:birex/domain/usecase/request_credential/command/requestcredentialcommand.dart';
import 'package:birex/service/dialog/dialog_service.dart';
import 'package:birex/utils/response.dart';
import 'package:birex/utils/usecase/handler/show_dialog_error_handler.dart';
import 'package:birex/utils/usecase/use_case.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'request_credential_usecase.g.dart';

@riverpod
RequestCredentialUseCase requestCredentialUseCase(Ref ref) {
  final dialogService = ref.read(dialogServiceProvider);
  final successDialog = ShowDialogSuccessHandler<void, RequestCredentialCommand>(
    dialogService,
    textMapper: (payload, input) => 'Login effettuato con successo',
  );
  final errorHandler = ShowDialogErrorHandler(dialogService);
  return RequestCredentialUseCase(
    repository: ref.read(authenticationRepositoryProvider),
    verifiableCredentialRepository: ref.read(verifiableCredentialRepositoryProvider),
    errorHandlers: [errorHandler],
    successHandlers: [successDialog],
  );
}

class RequestCredentialUseCase extends UseCase<void, RequestCredentialCommand> {
  RequestCredentialUseCase({
    required this.repository,
    required this.verifiableCredentialRepository,
    super.requirements,
    super.errorHandlers,
    super.successHandlers,
    super.validators,
  });

  final IAuthenticationRepository repository;
  final IVerifiableCredentialRepository verifiableCredentialRepository;

  @override
  AsyncApplicationResponse<void> call(RequestCredentialCommand input) async {
    const clientId = 'clientId';
    final check = await checkRequirements();
    final authorizationResponse = await check.flatMapAsync(
      (_) => repository.authorizeCredentialIssuance(
        host: input.host,
        credentialSubject: input.credentialSubject,
        credentialType: input.credentialType,
      ),
    );
    final loginResponse = await authorizationResponse.flatMapAsync(
      (auth) => repository.login(
        host: input.host,
        code: auth!.grants.entries.first.value.code,
        grantType: auth.grants.entries.first.key,
        clientId: clientId,
      ),
    );
    final keyProofResponse = await loginResponse.flatMapAsync(
      (payload) => verifiableCredentialRepository.generateKeyProof(
        accessToken: payload!.accessToken,
        host: input.host,
        clientId: clientId,
        issuer: input.host,
        nonce: payload.cNonce,
      ),
    );
    await keyProofResponse.ifErrorAsync((_) => applyErrorHandlers(keyProofResponse));
    await keyProofResponse.ifSuccessAsync((_) => applySuccessHandlers(keyProofResponse, input));
    return keyProofResponse.map((_) {});
  }
}
