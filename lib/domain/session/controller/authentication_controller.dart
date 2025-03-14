import 'package:birex/domain/session/state/authenticationstate.dart';
import 'package:birex/service/service.dart';
import 'package:birex/utils/utils.dart';
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
    if (!canAuthenticate) {
      state = AsyncData(AuthenticationState.auth());
      router.go(MyWalletPageRoute.pagePath);
      return;
    }
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
      if (e.code == auth_error.notAvailable) {
        /// The device does not have biometric capabilities
      } else if (e.code == auth_error.notEnrolled) {
        /// The user hasn't enrolled any biometrics to authenticate with
      } else {}
      state = AsyncData(AuthenticationState.auth());
      router.go(MyWalletPageRoute.pagePath);
    } catch (e) {
      state = AsyncData(AuthenticationState.unauthorized());
    }
  }
}
