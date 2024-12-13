import 'package:birex/presentation/components/screen/base_screen.dart';
import 'package:birex/presentation/pages/home/crif_offer_section.dart';
import 'package:birex/presentation/theme/dimension.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const BaseScreen(
      title: 'Home',
      slivers: [
        SliverPadding(
          padding: Dimensions.pageInsets,
          sliver: SliverToBoxAdapter(child: CRIFOfferSection()),
        ),
      ],
    );
  }
}
