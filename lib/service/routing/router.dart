import 'package:birex/service/routing/routes/auth_route.dart';
import 'package:birex/service/routing/routes/discovery_route.dart';
import 'package:birex/service/routing/routes/home_route.dart';
import 'package:birex/service/routing/routes/qr_code_scanner_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GlobalKey<NavigatorState> navigatorKey(Ref ref) {
  return GlobalKey<NavigatorState>();
}

@Riverpod(keepAlive: true)
GlobalKey<NavigatorState> homeShellNavigatorKey(Ref ref) {
  return GlobalKey<NavigatorState>();
}

@Riverpod(keepAlive: true)
GoRouter birexRouter(Ref ref) {
  final key = ref.watch(navigatorKeyProvider);
  final shellKey = ref.watch(homeShellNavigatorKeyProvider);
  return GoRouter(
    navigatorKey: key,
    initialLocation: AuthPageRoute.pagePath,
    routes: [
      HomePageShellRoute(shellKey: shellKey),
      AuthPageRoute(),
      DiscoveryPageRoute(),
      QRCodeScannerPageRoute(),
    ],
  );
}

extension KeyNavigator on GlobalKey<NavigatorState> {
  void go(String path) {
    currentContext!.go(path);
  }
}
