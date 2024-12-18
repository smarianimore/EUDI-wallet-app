import 'dart:convert';

import 'package:birex/data/model/authentication/tokenauthenticationresponse.dart';
import 'package:birex/presentation/components/screen/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';

class QRCodeScannerPage extends ConsumerWidget {
  const QRCodeScannerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseScreen(
      title: 'Qr Code',
      slivers: [
        SliverFillRemaining(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: QRCodeDartScanView(
                  scanInvertedQRCode: true,
                  formats: const [BarcodeFormat.qrCode],
                  onResultInterceptor: (old, newResult) => old == null || old.text != newResult.text,
                  onCapture: (Result result) {
                    final qrcodeUri = Uri.tryParse(result.text);
                    final queryParameters = qrcodeUri?.queryParameters;
                    final credentialOfferUri = queryParameters?['credential_offer_uri'];
                    final credentialUri = Uri.tryParse(credentialOfferUri ?? '');
                    if (credentialOfferUri != null && credentialUri != null) return context.pop((credentialUri, null));
                    final credentialOfferObject = queryParameters?['credential_offer'];
                    final credentialOffer = credentialOfferObject == null ? null : jsonDecode(credentialOfferObject);
                    final parsed = CredentialPreauthorizationResponse.fromJson(credentialOffer as Map<String, dynamic>);
                    return context.pop((null, parsed));
                  },
                ),
              ),
              Positioned(
                child: Center(
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
            ],
          ),
        ),
      ],
    );
  }
}
