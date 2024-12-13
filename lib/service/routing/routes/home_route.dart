import 'package:go_router/go_router.dart';
import 'package:keyfull/presentation/pages/home/home_page.dart';

class HomePageRoute extends GoRoute {
  HomePageRoute()
      : super(
          path: _path,
          builder: (context, state) => const HomePage(),
        );

  static const String _path = '/home';
}
