import 'package:birex/domain/session/state/authenticationstate.dart';
import 'package:birex/utils/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RequiresAuthentication extends UseCaseRequirement {
  const RequiresAuthentication(this.authState);
  final AsyncValue<AuthenticationState> authState;

  @override
  AsyncApplicationResponse<EmptyResponse> check() async {
    final isAuth = authState.isAuthResponse;
    final refreshed = await isAuth.flatMapAsync((payload) => _refreshIfNeeded());
    return Future.value(refreshed);
  }

  AsyncApplicationResponse<EmptyResponse> _refreshIfNeeded() async {
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
