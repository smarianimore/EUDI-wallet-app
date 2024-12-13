import 'package:birex/utils/error/applicationerror.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dialog_service.g.dart';

@riverpod
DialogService dialogService(Ref ref) {
  return DialogService();
}

class DialogService {
  Future<T?> showCustomDialog<T>({
    required Widget Function(BuildContext) dialogBuilder,
  }) async {
    return null;
  }

  Future<void> showErrorDialog(ApplicationError error) async {}

  Future<void> showSuccessDialog({required String message}) async {}
}
