import 'package:birex/presentation/pages/discovery/discovery_page.dart';
import 'package:birex/service/routing/routes/home_route.dart';
import 'package:go_router/go_router.dart';

class DiscoveryPageRoute extends GoRoute {
  DiscoveryPageRoute()
      : super(
          path: _pagePath,
          builder: (context, state) => const DiscoveryPage(),
        );

  static const String _pagePath = 'discovery';
  static const String fromMenu = '${MenuPageRoute.pagePath}/discovery';
}
