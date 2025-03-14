import 'package:birex/presentation/components/components.dart';
import 'package:birex/presentation/pages/discovery/crif_offer_section.dart';
import 'package:birex/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DiscoveryPage extends ConsumerWidget {
  const DiscoveryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const BaseScreen(
      title: 'Discovery',
      slivers: [
        SliverPadding(
          padding: Dimensions.pageInsets,
          sliver: SliverToBoxAdapter(child: CRIFOfferSection()),
        ),
      ],
    );
  }
}
