import 'package:birex/presentation/pages/qr_code/qr_code_scanner_page.dart';
import 'package:go_router/go_router.dart';

class QRCodeScannerPageRoute extends GoRoute {
  QRCodeScannerPageRoute()
      : super(
          path: pagePath,
          builder: (context, state) => const QRCodeScannerPage(),
        );

  static const String pagePath = '/qr-code';
}
