import 'package:birex/domain/session/state/authenticationstate.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_controller.g.dart';

@Riverpod(keepAlive: true)
class AuthenticationController extends _$AuthenticationController {
  @override
  Future<AuthenticationState> build() async {
    return AuthenticationState.unauthorized();
  }
}
