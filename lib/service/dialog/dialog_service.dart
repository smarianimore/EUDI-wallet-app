import 'package:birex/presentation/components/dialog/confirm_dialog.dart';
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

  Future<void> showErrorDialog(ApplicationError error, {String? customErrorMessage}) {
    final isAbortedOperation = error.maybeMap(orElse: () => false, operationAborted: (_) => true);
    final isNetworkError = error.maybeMap(orElse: () => false, network: (_) => true);
    if (isNetworkError) return _showNetworkErrorDialog(error);
    if (isAbortedOperation) return Future.value();
    return showCustomDialog(
      dialogBuilder: (context) => AlertDialog(
        title: Text(error.title),
        content: Text(customErrorMessage ?? error.message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  Future<void> _showNetworkErrorDialog(ApplicationError error) {
    final networkError = error.mapOrNull(network: (value) => value);
    if (networkError == null) return Future.value();
    return showCustomDialog(
      dialogBuilder: (context) => NetworkErrorDialog(dioError: networkError.error!),
    );
  }

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
