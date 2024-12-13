import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:keyfull/domain/session/state/authenticationstate.dart';
import 'package:keyfull/service/storage/local_storage_service.dart';
import 'package:keyfull/utils/error/applicationerror.dart';
import 'package:keyfull/utils/extensions/empty_response/emptyresponse.dart';
import 'package:keyfull/utils/response.dart';
import 'package:keyfull/utils/usecase/requirement/requirement.dart';

class RequiresAuthentication extends UseCaseRequirement with StorageServiceProvider {
  const RequiresAuthentication(this.authState);
  final AsyncValue<AuthenticationState> authState;

  @override
  AsyncApplicationResponse<EmptyResponse> check() async {
    final isAuth = authState.isAuthResponse;
    final refreshed = await isAuth.flatMapAsync((payload) => _refreshIfNeeded());
    return Future.value(refreshed);
  }

  AsyncApplicationResponse<EmptyResponse> _refreshIfNeeded() async {
    /* final storage = await getLocalStorage();
    final cachedUser = await storage.readAuthInfo();
    if (cachedUser.isError) return Responses.failure<EmptyResponse, ApplicationError>();
    final userData = cachedUser.payload;
    if (userData.isExpiring) {
      final userExpiresResponse = await TokenRefresher.refresh(authNotifier.refreshSession);
      if (userExpiresResponse.isError) return userExpiresResponse;
    } */
    return Responses.success(EmptyResponse());
  }
}

extension on AsyncValue<AuthenticationState> {
  ApplicationResponse<EmptyResponse> get isAuthResponse {
    final isAuth = isAuthenticated;
    if (isAuth) return Responses.success(EmptyResponse());
    return Responses.failure([ApplicationError.generic()]);
  }
}
