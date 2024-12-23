import 'package:birex/data/model/verifiable_credentials/supportedcredentialconfiguration.dart';
import 'package:birex/presentation/theme/dimension.dart';
import 'package:birex/presentation/theme/separator.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class VerifiableCredentialQRCodeDialog extends StatelessWidget {
  const VerifiableCredentialQRCodeDialog({
    required this.credential,
    super.key,
  });

  final VerifiableCredential credential;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: Shapes.buildRoundedShape(color: Theme.of(context).dialogBackgroundColor),
      child: ClipRRect(
        borderRadius: Dimensions.containerRadius,
        child: QrImageView(
          embeddedImage: const AssetImage('assets/icon/launcher.png'),
          data: credential.credentialResponse.credential,
          padding: Dimensions.largeSize.padding,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
