import 'package:birex/domain/domain.dart';
import 'package:birex/service/service.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePageShellWrapper extends ConsumerWidget {
  const HomePageShellWrapper({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: child,
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(scanCredentialQrCodeUsecaseProvider).call(context),
        child: const Icon(Icons.qr_code),
      ),
      bottomNavigationBar: const _HomeBottomNavBar(),
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
    return BottomNavigationBar(
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
