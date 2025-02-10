import 'package:birex/service/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_sheet_service.g.dart';

@riverpod
BottomSheetService bottomSheetService(Ref ref) {
  final navigatorKey = ref.watch(navigatorKeyProvider);
  return BottomSheetService(navigatorKey: navigatorKey);
}

class BottomSheetService {
  BottomSheetService({required this.navigatorKey});

  final GlobalKey<NavigatorState> navigatorKey;

  Future<T?> showCustomBottomSheet<T>({
    required Widget Function(BuildContext context) bottomSheetBuilder,
  }) async {
    final context = navigatorKey.currentContext;
    if (context == null) return null;
    return showModalBottomSheet(
      context: context,
      builder: bottomSheetBuilder,
    );
  }
}
