import 'package:birex/data/repository/authentication/i_authentication_repository.dart';
import 'package:birex/data/repository/authentication/impl/authentication_repository.dart';
import 'package:birex/domain/usecase/request_credential/command/requestcredentialcommand.dart';
import 'package:birex/utils/response.dart';
import 'package:birex/utils/usecase/use_case.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'request_credential_usecase.g.dart';

@riverpod
RequestCredentialUseCase requestCredentialUseCase(Ref ref) {
  return RequestCredentialUseCase(repository: ref.read(authenticationRepositoryProvider));
}

class RequestCredentialUseCase extends UseCase<void, RequestCredentialCommand> {
  RequestCredentialUseCase({
    required this.repository,
    super.requirements,
    super.errorHandlers,
    super.successHandlers,
    super.validators,
  });

  final IAuthenticationRepository repository;

  @override
  AsyncApplicationResponse<void> call(RequestCredentialCommand input) async {
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
        clientId: 'clientId',
      ),
    );
    return loginResponse.map((_) {});
  }
}
