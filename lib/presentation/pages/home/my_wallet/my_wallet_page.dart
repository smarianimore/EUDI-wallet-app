import 'package:birex/data/data.dart';
import 'package:birex/presentation/components/components.dart';
import 'package:birex/presentation/pages/home/my_wallet/verifiable_credential_card.dart';
import 'package:birex/presentation/theme/theme.dart';
import 'package:birex/service/service.dart';
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
  const _EmptyWalletBuilder();

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

final _expandendProvider = StateProvider.autoDispose.family<List<bool>, List<VerifiableCredential>>((ref, items) {
  return items.map((_) => false).toList();
});

class _CredentialListSection extends ConsumerWidget {
  const _CredentialListSection({
    required this.values,
  });

  final List<VerifiableCredential> values;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expansionState = ref.watch(_expandendProvider(values));
    return SliverToBoxAdapter(
      child: Padding(
        padding: Dimensions.pageInsets,
        child: ClipRRect(
          borderRadius: Dimensions.containerRadius,
          child: ExpansionPanelList(
            animationDuration: const Duration(milliseconds: 500),
            expandedHeaderPadding: EdgeInsets.zero,
            expansionCallback: (index, isExpanded) {
              final newState = [...expansionState];
              newState[index] = isExpanded;
              ref.read(_expandendProvider(values).notifier).state = newState;
            },
            children: [
              for (final (index, value) in values.indexed)
                ExpansionPanel(
                  backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
                  isExpanded: expansionState[index],
                  canTapOnHeader: true,
                  headerBuilder: (context, expanded) => Padding(
                    padding: Dimensions.mediumSize.padding,
                    child: VerifiableCredentialCardHeader(credential: value),
                  ),
                  body: VerifiableCredentialCard(credential: value),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
