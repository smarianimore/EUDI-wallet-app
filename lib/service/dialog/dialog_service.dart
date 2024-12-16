import 'package:birex/service/routing/router.dart';
import 'package:birex/utils/error/applicationerror.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dialog_service.g.dart';

@riverpod
DialogService dialogService(Ref ref) {
  final navigatorKey = ref.watch(navigatorKeyProvider);
  return DialogService(navigatorKey: navigatorKey);
}

class DialogService {
  DialogService({required this.navigatorKey});

  final GlobalKey<NavigatorState> navigatorKey;

  Future<T?> showCustomDialog<T>({
    required Widget Function(BuildContext context) dialogBuilder,
  }) async {
    final context = navigatorKey.currentContext;
    if (context == null) return null;
    return showDialog(
      context: context,
      builder: dialogBuilder,
    );
  }

  Future<void> showErrorDialog(ApplicationError error) async {}

  Future<void> showSuccessDialog({required String message}) => showCustomDialog(
        dialogBuilder: (context) => AlertDialog(
          title: const Text('Success'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
}
