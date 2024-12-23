import 'package:birex/service/routing/routes/home_route.dart';
import 'package:birex/utils/usecase/handler/handler.dart';
import 'package:go_router/go_router.dart';

class RedirectToHomePageSuccessHandler<R, I> extends CustomSuccessHandler<R, I> {
  RedirectToHomePageSuccessHandler({
    required this.router,
  }) : super(
          (payload, input) {
            router.go(MyWalletPageRoute.pagePath);
          },
        );

  final GoRouter router;
}
