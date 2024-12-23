import 'package:birex/data/model/verifiable_credentials/supportedcredentialconfiguration.dart';
import 'package:birex/presentation/components/screen/base_screen.dart';
import 'package:birex/presentation/pages/home/my_wallet/verifiable_credential_card.dart';
import 'package:birex/presentation/theme/dimension.dart';
import 'package:birex/presentation/theme/separator.dart';
import 'package:birex/service/storage/hive/hive_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyWalletPage extends ConsumerWidget {
  const MyWalletPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseScreen(
      title: 'BiRex',
      actions: [
        IconButton(
          onPressed: () => HiveController.instance.clear(),
          icon: const Icon(Icons.delete),
        ),
      ],
      slivers: [
        ValueListenableBuilder(
          valueListenable: HiveController.instance.verifiableCredentials,
          builder: (context, box, widget) {
            if (box.isEmpty) return const _EmptyWalletBuilder();
            return _CredentialListSection(values: box.values.map((e) => e.credential).toList());
          },
        ),
      ],
    );
  }
}

class _EmptyWalletBuilder extends StatelessWidget {
  const _EmptyWalletBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Center(
        child: Text(
          'Il tuo wallet è vuoto al momento.\nClicca sul bottone "+" per scannerizzare un nuovo codice.',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.grey,
              ),
        ),
      ),
    );
  }
}

class _CredentialListSection extends StatelessWidget {
  const _CredentialListSection({
    required this.values,
    super.key,
  });

  final List<VerifiableCredential> values;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: Dimensions.pageInsets,
      sliver: SliverList.separated(
        itemCount: values.length,
        separatorBuilder: (context, index) => Dimensions.mediumSize.spacer(),
        itemBuilder: (context, index) => VerifiableCredentialCard(credential: values[index]),
      ),
    );
  }
}
