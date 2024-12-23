import 'package:birex/domain/session/authentication_controller.dart';
import 'package:birex/presentation/components/screen/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthenticationPage extends ConsumerWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseScreen(
      title: 'Login',
      slivers: [
        SliverFillRemaining(
          child: Center(
            child: FilledButton(
              onPressed: () => ref.read(authenticationControllerProvider.notifier).login(),
              child: const Text('Home'),
            ),
          ),
        ),
      ],
    );
  }
}
