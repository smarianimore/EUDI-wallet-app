import 'package:birex/data/data.dart';
import 'package:birex/presentation/components/components.dart';
import 'package:birex/presentation/components/star/star_component.dart';
import 'package:birex/presentation/pages/home/my_wallet/verifiable_credential_qr.dart';
import 'package:birex/presentation/theme/theme.dart';
import 'package:birex/service/service.dart';
import 'package:birex/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VerifiableCredentialCard extends StatelessWidget {
  const VerifiableCredentialCard({
    required this.credential,
    super.key,
  });

  final VerifiableCredential credential;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimensions.mediumSize.padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
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
                        configuration: credential.credentialConfiguration!,
                      ),
                      Dimensions.largeSize.spacer(),
                      _ScoreInformationSection(
                        scoreIndex: credential.scoreIndex,
                        scoreDesc: credential.scoreDesc,
                        rentAmount: credential.rentAmount,
                        scoreDate: credential.scoreDate,
                        scoreDateExpiration: credential.scoreDateExpiration,
                        scoreDetail: credential.scoreDetail,
                        configuration: credential.credentialConfiguration!,
                      ),
                      if (credential.paymentAnalysis != null && credential.paymentAnalysis!.hasPaymentAnalysis) ...[
                        Dimensions.largeSize.spacer(),
                        _PaymentDetailsSection(paymentAnalysis: credential.paymentAnalysis),
                      ],
                      if (credential.accountDataAnalysis != null &&
                          credential.accountDataAnalysis!.hasAccountDataAnalysis) ...[
                        Dimensions.largeSize.spacer(),
                        _AccountDataAnalysisSection(accountDataAnalysis: credential.accountDataAnalysis),
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
    );
  }
}

/* Sections */

class VerifiableCredentialCardHeader extends StatelessWidget {
  const VerifiableCredentialCardHeader({
    required this.credential,
    super.key,
  });

  final VerifiableCredential credential;

  @override
  Widget build(BuildContext context) {
    final logoUri = credential.credentialConfiguration?.display.first.logo.uri;
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
                credential.credentialName ?? 'Credenziale',
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
    required this.configuration,
    this.firstName,
    this.lastName,
    this.fiscalCode,
  });

  final KnownVerifiableCredentialInformation? firstName;
  final KnownVerifiableCredentialInformation? lastName;
  final KnownVerifiableCredentialInformation? fiscalCode;
  final SupportedCredentialConfiguration configuration;

  @override
  Widget build(BuildContext context) {
    return _InformationSection(
      leading: const Icon(Icons.person),
      title: 'Informazioni utente',
      children: [
        if (firstName != null) ...[
          LabelAndDescriptionComponent(
            label: firstName!.type.findName(configuration),
            description: firstName!.basicKeyValue!.value,
          ),
        ],
        if (lastName != null) ...[
          LabelAndDescriptionComponent(
            label: lastName!.type.findName(configuration),
            description: lastName!.basicKeyValue!.value,
          ),
        ],
        if (fiscalCode != null) ...[
          LabelAndDescriptionComponent(
            label: fiscalCode!.type.findName(configuration),
            description: fiscalCode!.basicKeyValue!.value,
          ),
        ],
        const SizedBox.shrink(),
      ],
    );
  }
}

class _ScoreInformationSection extends StatelessWidget {
  const _ScoreInformationSection({
    required this.configuration,
    this.scoreIndex,
    this.scoreDesc,
    this.rentAmount,
    this.scoreDate,
    this.scoreDateExpiration,
    this.scoreDetail,
  });

  final KnownVerifiableCredentialInformation? scoreIndex;
  final KnownVerifiableCredentialInformation? scoreDesc;
  final KnownVerifiableCredentialInformation? rentAmount;
  final KnownVerifiableCredentialInformation? scoreDate;
  final KnownVerifiableCredentialInformation? scoreDateExpiration;
  final KnownVerifiableCredentialInformation? scoreDetail;

  final SupportedCredentialConfiguration configuration;

  int get scoreIndexValue {
    try {
      final value = int.parse(scoreIndex!.basicKeyValue!.value);
      return value;
    } catch (e) {
      try {
        final value = int.parse(scoreIndex!.basicKeyValue!.value[0]);
        return value;
      } catch (e) {
        return 0;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return _InformationSection(
      leading: const Icon(Icons.credit_card),
      title: 'Informazioni di credito',
      children: [
        if (scoreIndex != null) ...[
          LabelAndDescriptionWidgetComponent(
            label: scoreIndex!.type.findName(configuration),
            description: StarComponent(value: scoreIndexValue),
          ),
        ],
        if (scoreDesc != null) ...[
          LabelAndDescriptionComponent(
            label: scoreDesc!.type.findName(configuration),
            description: scoreDesc!.basicKeyValue!.value,
          ),
        ],
        if (rentAmount != null) ...[
          LabelAndDescriptionComponent(
            label: rentAmount!.type.findName(configuration),
            description: rentAmount!.basicKeyValue!.value,
          ),
        ],
        if (scoreDate != null) ...[
          LabelAndDescriptionComponent(
            label: scoreDate!.type.findName(configuration),
            description: scoreDate!.basicKeyValue!.value,
          ),
        ],
        if (scoreDateExpiration != null) ...[
          LabelAndDescriptionComponent(
            label: scoreDateExpiration!.type.findName(configuration),
            description: scoreDateExpiration!.basicKeyValue!.value,
          ),
        ],
        if (scoreDetail != null) ...[
          LabelAndDescriptionComponent(
            label: scoreDetail!.type.findName(configuration),
            description: scoreDetail!.basicKeyValue!.value,
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
    final protesti = paymentAnalysis?.protestiInfo;
    final latePayments = paymentAnalysis?.latePaymentsInfo;
    final otherNegativeInfo = paymentAnalysis?.otherNegativeInfo;
    return _InformationSection(
      leading: const Icon(Icons.analytics_outlined),
      title: 'Analisi dei pagamenti',
      children: [
        if (protesti != null)
          LabelAndDescriptionComponent(
            label: 'Protesti',
            description: protesti,
          ),
        if (latePayments != null)
          LabelAndDescriptionComponent(
            label: 'Ritardo nei pagamenti di prestiti e finanziamenti',
            description: latePayments,
          ),
        if (otherNegativeInfo != null)
          LabelAndDescriptionComponent(
            label: 'Altre informazioni pubbliche negative',
            description: otherNegativeInfo,
          ),
      ],
    );
  }
}

class _AccountDataAnalysisSection extends ConsumerWidget {
  const _AccountDataAnalysisSection({
    required this.accountDataAnalysis,
  });

  final AccountDataAnalysis? accountDataAnalysis;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (accountDataAnalysis == null) return const SizedBox.shrink();
    final cashflowBalance = accountDataAnalysis?.cashflowBalance;
    final incomeOutcomeRatio = accountDataAnalysis?.incomeOutcomeRatio;
    final taxesOrUtilitiesAccount = accountDataAnalysis?.taxesOrUtilitiesAccount;
    final recurringIncome = accountDataAnalysis?.recurringIncome;
    final accountDescription = accountDataAnalysis?.accountDescription;
    final financialCommitments = accountDataAnalysis?.financialCommitments;
    final extraordinaryIncome = accountDataAnalysis?.extraordinaryIncome;
    return _InformationSection(
      leading: const Icon(Icons.account_balance),
      title: 'Analisi del conto',
      children: [
        if (cashflowBalance != null)
          LabelAndDescriptionComponent(
            label: 'Equilibrio tra Uscite e Entrate',
            description: cashflowBalance,
          ),
        if (incomeOutcomeRatio != null)
          LabelAndDescriptionComponent(
            label: 'Rapporto tra Uscite e Saldo Mensile',
            description: incomeOutcomeRatio,
          ),
        if (taxesOrUtilitiesAccount != null)
          LabelAndDescriptionComponent(
            label: 'Conto utilizzato per Tasse o Utenze',
            description: taxesOrUtilitiesAccount,
          ),
        if (recurringIncome != null)
          LabelAndDescriptionComponent(
            label: 'Presenza di Entrate Ricorrenti',
            description: recurringIncome,
          ),
        if (accountDescription != null)
          LabelAndDescriptionComponent(
            label: 'Caratteristiche del conto',
            description: accountDescription,
          ),
        if (financialCommitments != null)
          LabelAndDescriptionComponent(
            label: 'Incidenza Impegni Finanziari sul Reddito',
            description: financialCommitments,
          ),
        if (extraordinaryIncome != null)
          LabelAndDescriptionComponent(
            label: 'Conto destinato a uscite “virtuose”',
            description: extraordinaryIncome,
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
        for (final claim in credential.unknownDisclosures)
          LabelAndDescriptionComponent(
            label: credential.findClaimDisplayName(claim.name) ?? claim.name,
            description: claim.value,
          ),
        for (final claim in credential.unknownClaims)
          LabelAndDescriptionComponent(
            label: credential.findClaimDisplayName(claim.name) ?? claim.name,
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
