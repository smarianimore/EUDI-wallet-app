import 'package:birex/presentation/pages/home/home_page.dart';
import 'package:go_router/go_router.dart';

class HomePageRoute extends GoRoute {
  HomePageRoute()
      : super(
          path: _path,
          builder: (context, state) => const HomePage(),
        );

  static const String _path = '/home';
}
