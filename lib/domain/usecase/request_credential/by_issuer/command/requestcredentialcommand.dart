import 'package:freezed_annotation/freezed_annotation.dart';

part 'requestcredentialcommand.freezed.dart';

@freezed
class RequestCredentialCommand with _$RequestCredentialCommand {
  factory RequestCredentialCommand({
    required String host,
    required String credentialSubject,
  }) = _RequestCredentialCommand;
}
