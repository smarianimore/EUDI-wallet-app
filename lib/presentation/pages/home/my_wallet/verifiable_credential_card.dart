import 'dart:convert';

import 'package:birex/data/data.dart';
import 'package:birex/presentation/components/components.dart';
import 'package:birex/presentation/pages/home/my_wallet/verifiable_credential_qr.dart';
import 'package:birex/presentation/theme/theme.dart';
import 'package:birex/service/service.dart';
import 'package:birex/utils/utils.dart';
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
        shape: Shapes.buildRoundedShape(borderSide: BorderSide(color: Theme.of(context).cardColor)),
        margin: EdgeInsets.zero,
        child: Padding(
          padding: Dimensions.mediumSize.padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Header(credential: credential),
              Dimensions.largeSize.spacer(),
              IntrinsicHeight(
                child: Stack(
                  children: [
                    const Positioned(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: VerticalDivider(width: 40),
                      ),
                    ),
                    Positioned(
                      child: Column(
                        children: [
                          _UserInformationSection(
                            firstName: credential.firstName,
                            lastName: credential.lastName,
                            fiscalCode: credential.fiscalCode,
                          ),
                          Dimensions.largeSize.spacer(),
                          _ScoreInformationSection(
                            scoreIndex: credential.scoreIndex,
                            scoreDesc: credential.scoreDesc,
                            rentAmount: credential.rentAmount,
                            scoreDate: credential.scoreDate,
                            scoreDateExpiration: credential.scoreDateExpiration,
                            scoreDetail: credential.scoreDetail,
                          ),
                          if (credential.paymentAnalysis != null) ...[
                            Dimensions.largeSize.spacer(),
                            _PaymentDetailsSection(paymentAnalysis: credential.paymentAnalysis),
                          ],
                          if (credential.hasUnknownInformations) ...[
                            Dimensions.largeSize.spacer(),
                            _UnknownDisclosuresSection(credential: credential),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Dimensions.largeSize.spacer(),
              _ActionBar(credential: credential),
            ],
          ),
        ),
      ),
    );
  }
}

/* Sections */

class _Header extends StatelessWidget {
  const _Header({
    required this.credential,
  });

  final VerifiableCredential credential;

  @override
  Widget build(BuildContext context) {
    final logoUri = credential.display?.logo.uri;
    return Row(
      children: [
        if (logoUri != null) ...[
          CircleAvatar(backgroundImage: NetworkImage(logoUri)),
          Dimensions.mediumSize.spacer(axis: Axis.horizontal),
        ],
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

/* Known information */

class _UserInformationSection extends StatelessWidget {
  const _UserInformationSection({
    this.firstName,
    this.lastName,
    this.fiscalCode,
  });

  final VerifiableDisclosure? firstName;
  final VerifiableDisclosure? lastName;
  final VerifiableDisclosure? fiscalCode;

  @override
  Widget build(BuildContext context) {
    return _InformationSection(
      leading: const Icon(Icons.person),
      title: 'Informazioni utente',
      children: [
        if (firstName != null) ...[
          LabelAndDescriptionComponent(
            label: 'Nome',
            description: firstName!.value,
          ),
        ],
        if (lastName != null) ...[
          LabelAndDescriptionComponent(
            label: 'Cognome',
            description: lastName!.value,
          ),
        ],
        if (fiscalCode != null) ...[
          LabelAndDescriptionComponent(
            label: 'Codice fiscale',
            description: fiscalCode!.value,
          ),
        ],
        const SizedBox.shrink(),
      ],
    );
  }
}

class _ScoreInformationSection extends StatelessWidget {
  const _ScoreInformationSection({
    this.scoreIndex,
    this.scoreDesc,
    this.rentAmount,
    this.scoreDate,
    this.scoreDateExpiration,
    this.scoreDetail,
  });

  final VerifiableDisclosure? scoreIndex;
  final VerifiableDisclosure? scoreDesc;
  final VerifiableDisclosure? rentAmount;
  final VerifiableDisclosure? scoreDate;
  final VerifiableDisclosure? scoreDateExpiration;
  final VerifiableDisclosure? scoreDetail;

  @override
  Widget build(BuildContext context) {
    return _InformationSection(
      leading: const Icon(Icons.credit_card),
      title: 'Informazioni di credito',
      children: [
        if (scoreIndex != null) ...[
          LabelAndDescriptionComponent(
            label: 'Indice affidabilità',
            description: scoreIndex!.value,
          ),
        ],
        if (scoreDesc != null) ...[
          LabelAndDescriptionComponent(
            label: 'Descrizione affidabilità',
            description: scoreDesc!.value,
          ),
        ],
        if (rentAmount != null) ...[
          LabelAndDescriptionComponent(
            label: 'Canone sostenibile',
            description: rentAmount!.value,
          ),
        ],
        if (scoreDate != null) ...[
          LabelAndDescriptionComponent(
            label: 'Data emissione',
            description: scoreDate!.value,
          ),
        ],
        if (scoreDateExpiration != null) ...[
          LabelAndDescriptionComponent(
            label: 'Data validità',
            description: scoreDateExpiration!.value,
          ),
        ],
        if (scoreDetail != null) ...[
          LabelAndDescriptionComponent(
            label: 'Dettagli',
            description: scoreDetail!.value,
          ),
        ],
      ],
    );
  }
}

class _PaymentDetailsSection extends ConsumerWidget {
  const _PaymentDetailsSection({
    required this.paymentAnalysis,
  });

  final PaymentAnalysisInformation? paymentAnalysis;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (paymentAnalysis == null) return const SizedBox.shrink();
    return _InformationSection(
      leading: const Icon(Icons.payment),
      title: 'Analisi dei pagamenti',
      children: [
        LabelAndDescriptionComponent(
          label: 'Protesti',
          description: paymentAnalysis!.protestiInfo,
        ),
        LabelAndDescriptionComponent(
          label: 'Ritardo nei pagamenti di prestiti e finanziamenti',
          description: paymentAnalysis!.latePaymentsInfo,
        ),
        LabelAndDescriptionComponent(
          label: 'Altre informazioni pubbliche negative',
          description: paymentAnalysis!.otherNegativeInfo,
        ),
      ],
    );
  }
}

class _UnknownDisclosuresSection extends StatelessWidget {
  const _UnknownDisclosuresSection({
    required this.credential,
  });

  final VerifiableCredential credential;

  @override
  Widget build(BuildContext context) {
    return _InformationSection(
      title: 'Altre informazioni',
      leading: const Icon(Icons.info),
      children: [
        for (final claim in credential.unknownDiscolures)
          LabelAndDescriptionComponent(
            label: claim.formatName,
            description: claim.value,
          ),
        for (final claim in credential.unknownClaims)
          LabelAndDescriptionComponent(
            label: claim.formatName,
            description: claim.value,
          ),
      ],
    );
  }
}

class _InformationSection extends StatelessWidget {
  const _InformationSection({
    required this.title,
    required this.children,
    required this.leading,
  });

  final String title;
  final List<Widget> children;
  final Widget leading;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(child: leading),
        Dimensions.mediumSize.spacer(axis: Axis.horizontal),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleMedium),
              const Divider(height: Dimensions.smallSize),
              Wrap(
                spacing: Dimensions.largeSize,
                runSpacing: Dimensions.smallSize,
                children: children,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
