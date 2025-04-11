import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'presentcredentialcommand.freezed.dart';

@freezed
class PresentCredentialCommand with _$PresentCredentialCommand {
  factory PresentCredentialCommand({
    required BuildContext context,
    required String requestUri,
  }) = _PresentCredentialCommand;
}
