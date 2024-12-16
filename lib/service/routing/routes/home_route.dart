import 'package:birex/presentation/pages/home/home_shell_wrapper.dart';
import 'package:birex/presentation/pages/home/shell/menu/menu_page.dart';
import 'package:birex/presentation/pages/home/shell/my_wallet/my_wallet_page.dart';
import 'package:birex/service/routing/routes/discovery_route.dart';
import 'package:birex/service/routing/routes/settings_route.dart';
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
          builder: (context, state) => const MyWalletPage(),
        );

  static const String pagePath = '/my-wallet';
}

class MenuPageRoute extends GoRoute {
  MenuPageRoute()
      : super(
          path: pagePath,
          builder: (context, state) => const MenuPage(),
          routes: [DiscoveryPageRoute(), SettingsPageRoute()],
        );

  static const String pagePath = '/menu';
}
