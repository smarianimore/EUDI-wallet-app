import 'package:birex/domain/session/state/authenticationstate.dart';
import 'package:birex/service/routing/router.dart';
import 'package:birex/service/routing/routes/home_route.dart';
import 'package:birex/utils/logger/custom_logger.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth_darwin/local_auth_darwin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_controller.g.dart';

@Riverpod(keepAlive: true)
class AuthenticationController extends _$AuthenticationController {
  final localAuthentication = LocalAuthentication();
  late final GoRouter router;

  @override
  Future<AuthenticationState> build() async {
    router = ref.watch(birexRouterProvider);
    return AuthenticationState.unauthorized();
  }

  Future<void> login() async {
    final canAuthenticateWithBiometrics = await localAuthentication.canCheckBiometrics;
    final canAuthenticate = canAuthenticateWithBiometrics || await localAuthentication.isDeviceSupported();
    if (!canAuthenticate) return;
    try {
      final didAuthenticate = await localAuthentication.authenticate(
        localizedReason: 'Please authenticate to access your wallet',
        authMessages: [
          const AndroidAuthMessages(
            signInTitle: 'Oops! Biometric authentication required!',
            cancelButton: 'No thanks',
          ),
          const IOSAuthMessages(
            cancelButton: 'No thanks',
          ),
        ],
      );
      if (didAuthenticate) {
        state = AsyncData(AuthenticationState.auth());
        router.go(MyWalletPageRoute.pagePath);
      }
    } on PlatformException catch (e) {
      ApplicationLogger.instance.logApplicationError(e.code);
      ApplicationLogger.instance.logApplicationError(e.message ?? '');
      state = AsyncData(AuthenticationState.unauthorized());
      if (e.code == auth_error.notAvailable) {
        // Add handling of no hardware here.
      } else if (e.code == auth_error.notEnrolled) {
        // ...
      } else {
        // ...
      }
    } catch (e) {
      state = AsyncData(AuthenticationState.unauthorized());
    }
  }
}
