import 'dart:async';
import 'dart:convert';

import 'package:birex/data/data.dart';
import 'package:birex/presentation/components/components.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRCodeScannerPage extends StatefulWidget {
  const QRCodeScannerPage({super.key});

  @override
  State<QRCodeScannerPage> createState() => _QRCodeScannerPageState();
}

class _QRCodeScannerPageState extends State<QRCodeScannerPage> with WidgetsBindingObserver {
  final MobileScannerController controller = MobileScannerController(
      // required options for the scanner
      );

  StreamSubscription<Object?>? _subscription;

  @override
  void initState() {
    super.initState();
    // Start listening to lifecycle changes.
    WidgetsBinding.instance.addObserver(this);

    // Start listening to the barcode events.
    _subscription = controller.barcodes.listen(_handleBarcode);

    // Finally, start the scanner itself.
    unawaited(controller.start());
  }

  void _handleBarcode(BarcodeCapture? barcode) {
    final result = barcode?.barcodes.firstOrNull;
    if (result == null) return;
    final qrcodeUri = Uri.tryParse(result.rawValue ?? '');
    final queryParameters = qrcodeUri?.queryParameters;
    final credentialOfferUri = queryParameters?['credential_offer_uri'];
    final credentialUri = Uri.tryParse(credentialOfferUri ?? '');
    if (credentialOfferUri != null && credentialUri != null) return context.pop((credentialUri, null));
    final credentialOfferObject = queryParameters?['credential_offer'];
    final credentialOffer = credentialOfferObject == null ? null : jsonDecode(credentialOfferObject);
    final parsed = CredentialPreauthorizationResponse.fromJson(credentialOffer as Map<String, dynamic>);
    return context.pop((null, parsed));
  }

  @override
  Future<void> dispose() async {
    // Stop listening to lifecycle changes.
    WidgetsBinding.instance.removeObserver(this);
    // Stop listening to the barcode events.
    unawaited(_subscription?.cancel());
    _subscription = null;
    // Dispose the widget itself.
    super.dispose();
    // Finally, dispose of the controller.
    await controller.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // If the controller is not ready, do not try to start or stop it.
    // Permission dialogs can trigger lifecycle changes before the controller is ready.
    if (!controller.value.hasCameraPermission) {
      return;
    }

    switch (state) {
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
        return;
      case AppLifecycleState.resumed:
        // Restart the scanner when the app is resumed.
        // Don't forget to resume listening to the barcode events.
        _subscription = controller.barcodes.listen(_handleBarcode);

        unawaited(controller.start());
      case AppLifecycleState.inactive:
        // Stop the scanner when the app is paused.
        // Also stop the barcode events subscription.
        unawaited(_subscription?.cancel());
        _subscription = null;
        unawaited(controller.stop());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: 'Qr Code',
      roundedAppBar: false,
      slivers: [
        SliverFillRemaining(
          child: MobileScanner(
            controller: controller,
            overlayBuilder: (context, constraints) => Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  ),
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
