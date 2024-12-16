import 'package:birex/presentation/pages/authentication/auth_page.dart';
import 'package:go_router/go_router.dart';

class AuthPageRoute extends GoRoute {
  AuthPageRoute()
      : super(
          path: pagePath,
          builder: (context, state) => const AuthenticationPage(),
        );

  static const String pagePath = '/auth';
}
