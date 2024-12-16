import 'package:birex/presentation/components/screen/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyWalletPage extends ConsumerWidget {
  const MyWalletPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseScreen(
      title: 'My Wallet',
      slivers: [
        SliverFillRemaining(
          child: Center(
            child: Text(
              'Il tuo wallet è vuoto al momento.\nClicca sul bottone "+" per scannerizzare un nuovo codice.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.grey,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
