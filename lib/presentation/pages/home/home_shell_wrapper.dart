import 'package:birex/service/routing/router.dart';
import 'package:birex/service/routing/routes/home_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePageShellWrapper extends ConsumerWidget {
  const HomePageShellWrapper({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: child),
        const _HomeBottomNavBar(),
      ],
    );
  }
}

final _homeBottomNavStateProvider = StateProvider<int>((ref) {
  return 0;
});

class _HomeBottomNavBar extends ConsumerWidget {
  const _HomeBottomNavBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(_homeBottomNavStateProvider);
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        BottomNavigationBar(
          onTap: (value) => _onTap(value, ref),
          currentIndex: state,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
            ),
          ],
        ),
        Positioned(
          top: -30,
          height: 60,
          width: 60,
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }

  void _onTap(int value, WidgetRef ref) {
    ref.read(_homeBottomNavStateProvider.notifier).state = value;
    switch (value) {
      case 0:
        ref.read(homeShellNavigatorKeyProvider).go(MyWalletPageRoute.pagePath);
      case 1:
        ref.read(homeShellNavigatorKeyProvider).go(MenuPageRoute.pagePath);
    }
  }
}
