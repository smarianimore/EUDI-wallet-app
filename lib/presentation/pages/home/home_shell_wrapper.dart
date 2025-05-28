import 'package:birex/domain/domain.dart';
import 'package:birex/domain/usecase/present_credential/command/presentcredentialcommand.dart';
import 'package:birex/domain/usecase/present_credential/present_credential_use_case.dart';
import 'package:birex/domain/usecase/request_credential/by_qr_code/command/scanqrcredentialcommand.dart';
import 'package:birex/presentation/pages/qr_code/qr_code_content/qrcodecontent.dart';
import 'package:birex/service/service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePageShellWrapper extends ConsumerWidget {
  const HomePageShellWrapper({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: child,
      floatingActionButton: const _QrCodePageFAB(),
      bottomNavigationBar: const _HomeBottomNavBar(),
    );
  }
}

class _QrCodePageFAB extends ConsumerWidget {
  const _QrCodePageFAB();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () => _onTap(context, ref),
      child: const Icon(Icons.qr_code),
    );
  }

  void _onTap(
    BuildContext context,
    WidgetRef ref,
  ) =>
      context.push<QrCodeContent?>(QRCodeScannerPageRoute.pagePath).then((e) async {
        final presentation = e?.mapOrNull(presentation: (e) => e);
        final issuance = e?.mapOrNull(issuance: (e) => e);
        if (!context.mounted) return;
        if (issuance != null) {
          final command = ScanQrCredentialCommand(
            context: context,
            credentialOffer: issuance.credentialOffer,
            credentialOfferUri: issuance.credentialOfferUri,
          );
          final usecase = await ref.read(scanCredentialQrCodeUsecaseProvider.future);
          await usecase.call(command);
        } else if (presentation != null) {
          final command = PresentCredentialCommand(
            context: context,
            requestUri: presentation.requestUri!,
          );
          final usecase = await ref.read(presentCredentialUseCaseProvider.future);
          await usecase.call(command);
        }
      });
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
