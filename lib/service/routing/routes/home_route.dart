import 'package:birex/presentation/pages/home/home_page.dart';
import 'package:go_router/go_router.dart';

class HomePageRoute extends GoRoute {
  HomePageRoute()
      : super(
          path: pagePath,
          builder: (context, state) => const HomePage(),
        );

  static const String pagePath = '/home';
}
