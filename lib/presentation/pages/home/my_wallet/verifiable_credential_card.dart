import 'dart:convert';

import 'package:birex/data/model/verifiable_credentials/supportedcredentialconfiguration.dart';
import 'package:birex/presentation/pages/home/my_wallet/verifiable_credential_qr.dart';
import 'package:birex/presentation/theme/dimension.dart';
import 'package:birex/presentation/theme/separator.dart';
import 'package:birex/service/dialog/dialog_service.dart';
import 'package:birex/utils/extensions/formatter/date_formatter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_plus/share_plus.dart';

class VerifiableCredentialCard extends StatelessWidget {
  const VerifiableCredentialCard({
    required this.credential,
    super.key,
  });

  final VerifiableCredential credential;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () => Share.share(
        jsonEncode(credential.toJson()),
        subject: 'Verifiable Credential: ${credential.formatName}',
      ),
      child: Card(
        shape: Shapes.buildRoundedShape(color: Theme.of(context).cardColor),
        margin: EdgeInsets.zero,
        child: Padding(
          padding: Dimensions.mediumSize.padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Header(credential: credential),
              Dimensions.mediumSize.spacer(),
              _Disclosures(credential: credential),
              Dimensions.mediumSize.spacer(),
              _ActionBar(credential: credential),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.credential,
  });

  final VerifiableCredential credential;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                credential.formatName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Dimensions.tinySize.spacer(),
              Text(
                'Scadenza: ${DateFormatter.formatStandardDate(credential.expiresAt)}',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
        Dimensions.smallSize.spacer(axis: Axis.horizontal),
        const Icon(
          Icons.verified,
          color: Colors.green,
          size: 36,
        ),
      ],
    );
  }
}

class _Disclosures extends StatelessWidget {
  const _Disclosures({
    required this.credential,
  });

  final VerifiableCredential credential;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: Dimensions.mediumSize,
      children: [
        for (final claim in credential.disclosures)
          Chip(
            label: Text('${claim.formatName}: ${claim.value}'),
          ),
      ],
    );
  }
}

class _ActionBar extends ConsumerWidget {
  const _ActionBar({
    required this.credential,
  });

  final VerifiableCredential credential;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Wrap(
      spacing: Dimensions.mediumSize,
      alignment: WrapAlignment.end,
      children: [
        OutlinedButton.icon(
          label: const Text('Condividi'),
          icon: const Icon(Icons.qr_code),
          onPressed: () => ref.read(dialogServiceProvider).showCustomDialog<void>(
                dialogBuilder: (context) => VerifiableCredentialQRCodeDialog(
                  credential: credential,
                ),
              ),
        ),
      ],
    );
  }
}
