import 'package:birex/data/model/issuer/credentialissuerconfiguration.dart';
import 'package:birex/data/model/verifiable_credentials/supportedcredentialconfiguration.dart';
import 'package:birex/domain/usecase/request_credential/command/requestcredentialcommand.dart';
import 'package:birex/domain/usecase/request_credential/request_credential_usecase.dart';
import 'package:birex/presentation/components/screen/loading_switcher.dart';
import 'package:birex/presentation/pages/discovery/crif_offers/crif_offers_provider.dart';
import 'package:birex/presentation/theme/dimension.dart';
import 'package:birex/presentation/theme/separator.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CRIFOfferSection extends ConsumerWidget {
  const CRIFOfferSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final crifOffer = ref.watch(crifOffersProvider).whenOrNull(data: (data) => data);
    return LoadingSwitcher(
      value: crifOffer,
      builder: (context, crifOffer) => Column(
        children: [
          _IssuerOffersSection(configuration: crifOffer),
          Dimensions.mediumSize.spacer(),
          _SupportedCredentialsSection(configuration: crifOffer),
        ],
      ),
    );
  }
}

class _IssuerOffersSection extends StatelessWidget {
  const _IssuerOffersSection({
    required this.configuration,
  });

  final CredentialIssuerConfiguration configuration;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Issuer',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Dimensions.mediumSize.spacer(),
        Wrap(
          spacing: Dimensions.mediumSize,
          runSpacing: Dimensions.mediumSize,
          children: [
            for (final issuer in configuration.display) _IssuerDisplayInformationCard(issuer: issuer),
          ],
        ),
      ],
    );
  }
}

class _IssuerDisplayInformationCard extends StatelessWidget {
  const _IssuerDisplayInformationCard({
    required this.issuer,
  });

  final CredentialIssuerDisplayInformation issuer;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: Dimensions.mediumSize.padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(issuer.name),
            const WidgetSeparator.small(),
            Text(issuer.description),
          ],
        ),
      ),
    );
  }
}

class _SupportedCredentialsSection extends StatelessWidget {
  const _SupportedCredentialsSection({required this.configuration});

  final CredentialIssuerConfiguration configuration;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Credenziali supportate',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Dimensions.mediumSize.spacer(),
        for (final credential in configuration.credentialConfigurationsSupported.entries)
          _SupportedCredentialComponent(
            credential: credential.value,
            configuration: configuration,
            credentialSubject: credential.key,
          ),
      ],
    );
  }
}

class _SupportedCredentialComponent extends ConsumerWidget {
  const _SupportedCredentialComponent({
    required this.credential,
    required this.configuration,
    required this.credentialSubject,
  });

  final SupportedCredentialConfiguration credential;
  final String credentialSubject;
  final CredentialIssuerConfiguration configuration;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final display = credential.display.first;
    return ExpansionTile(
      title: Text(display.name),
      subtitle: Text(
        display.description,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      leading: CircleAvatar(backgroundImage: NetworkImage(display.logo.uri)),
      expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
      tilePadding: EdgeInsets.zero,
      childrenPadding: Dimensions.mediumSize.verticalPadding.copyWith(top: 0),
      children: [
        Wrap(
          spacing: Dimensions.smallSize,
          children: [
            for (final claim in credential.claims.entries) Chip(label: Text(claim.value.display.first.name)),
          ],
        ),
        const WidgetSeparator.small(),
        Align(
          alignment: Alignment.bottomRight,
          child: FilledButton(
            onPressed: () => _onLogin(ref),
            child: const Text('Richiedi'),
          ),
        ),
      ],
    );
  }

  void _onLogin(WidgetRef ref) => ref.read(requestCredentialUseCaseProvider).call(
        RequestCredentialCommand(
          host: configuration.credentialIssuer,
          credentialSubject: credentialSubject,
          credentialType: 2,
        ),
      );
}