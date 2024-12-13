import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'authenticationstate.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  factory AuthenticationState.auth() = Auth;
  factory AuthenticationState.unauthorized() = Anauthorized;
}

extension AsyncAuthStateFeature on AsyncValue<AuthenticationState> {
  bool get isAuthenticated => maybeWhen(
        data: (state) => state.isAuthenticated,
        orElse: () => false,
      );
}

extension AuthStateFeature on AuthenticationState {
  bool get isAuthenticated => maybeWhen(
        orElse: () => false,
        auth: () => true,
      );
}
