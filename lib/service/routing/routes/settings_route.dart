import 'package:birex/presentation/pages/settings/settings_page.dart';
import 'package:birex/service/routing/routes/home_route.dart';
import 'package:go_router/go_router.dart';

class SettingsPageRoute extends GoRoute {
  SettingsPageRoute()
      : super(
          path: pagePath,
          builder: (context, state) => const SettingsPage(),
        );

  static const pagePath = 'settings';
  static const String fromMenu = '${MenuPageRoute.pagePath}/$pagePath';
}
