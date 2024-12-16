import 'package:birex/presentation/components/screen/base_screen.dart';
import 'package:birex/presentation/theme/dimension.dart';
import 'package:birex/presentation/theme/separator.dart';
import 'package:birex/presentation/theme/theme_mode/theme_mode.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(themeModeProvider);
    final style = ref.watch(themeStyleProvider);
    return BaseScreen(
      title: 'Impostazioni',
      actions: [
        IconButton.outlined(
          onPressed: () {},
          icon: const Icon(Icons.network_cell_rounded),
        ),
      ],
      slivers: [
        SliverPadding(
          padding: Dimensions.pageInsets,
          sliver: SliverList.list(
            children: [
              DropdownMenu<ThemeMode>(
                initialSelection: selected,
                width: double.infinity,
                label: const Text('Tema'),
                onSelected: (value) => value == null ? null : ref.read(themeModeProvider.notifier).state = value,
                enableSearch: false,
                dropdownMenuEntries: const [
                  DropdownMenuEntry(
                    value: ThemeMode.system,
                    label: 'Sistema',
                  ),
                  DropdownMenuEntry(
                    value: ThemeMode.dark,
                    label: 'Scuro',
                  ),
                  DropdownMenuEntry(
                    value: ThemeMode.light,
                    label: 'Chiaro',
                  ),
                ],
              ),
              Dimensions.mediumSize.spacer(),
              DropdownMenu<FlexScheme>(
                initialSelection: style,
                width: double.infinity,
                label: const Text('Palette'),
                onSelected: (value) => value == null ? null : ref.read(themeStyleProvider.notifier).state = value,
                enableSearch: false,
                dropdownMenuEntries: [
                  for (final i in FlexScheme.values)
                    DropdownMenuEntry(
                      value: i,
                      label: i.name,
                      leadingIcon: CircleAvatar(
                        backgroundColor: i.data.light.primary,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
