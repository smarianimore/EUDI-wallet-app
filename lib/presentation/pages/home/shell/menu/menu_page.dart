import 'package:birex/presentation/components/screen/base_screen.dart';
import 'package:birex/service/routing/router.dart';
import 'package:birex/service/routing/routes/discovery_route.dart';
import 'package:birex/service/routing/routes/settings_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuPage extends ConsumerWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseScreen(
      title: 'Menu',
      slivers: [
        SliverList.list(
          children: [
            ListTile(
              leading: const Icon(Icons.wallet),
              title: const Text('Scopri credenziali'),
              subtitle: const Text('Trova nuove credenziali che puoi richiedere da uno dei nostri service provider.'),
              onTap: () => ref.read(birexRouterProvider).go(DiscoveryPageRoute.fromMenu),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Impostazioni'),
              onTap: () => ref.read(birexRouterProvider).go(SettingsPageRoute.fromMenu),
            ),
          ],
        ),
      ],
    );
  }
}
