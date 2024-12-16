import 'package:birex/presentation/pages/home/home_shell_wrapper.dart';
import 'package:birex/presentation/pages/home/shell/menu/menu_page.dart';
import 'package:birex/presentation/pages/home/shell/my_wallet/my_wallet_page.dart';
import 'package:birex/service/routing/routes/discovery_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePageShellRoute extends ShellRoute {
  HomePageShellRoute({
    required GlobalKey<NavigatorState> shellKey,
  }) : super(
          navigatorKey: shellKey,
          builder: (context, state, child) => HomePageShellWrapper(child: child),
          routes: [MyWalletPageRoute(), MenuPageRoute()],
        );

  static const String pagePath = '/home';
}

class MyWalletPageRoute extends GoRoute {
  MyWalletPageRoute()
      : super(
          path: pagePath,
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const MyWalletPage(),
            transitionsBuilder: (context, animation, _, child) => SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            ),
          ),
        );

  static const String pagePath = '/my-wallet';
}

class MenuPageRoute extends GoRoute {
  MenuPageRoute()
      : super(
          path: pagePath,
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const MenuPage(),
            transitionsBuilder: (context, animation, secondary, child) => SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            ),
          ),
          routes: [DiscoveryPageRoute()],
        );

  static const String pagePath = '/menu';
}
