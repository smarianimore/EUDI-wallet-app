import 'package:birex/presentation/theme/theme_mode/theme_mode.dart';
import 'package:birex/service/routing/router.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BirexApp extends ConsumerWidget {
  const BirexApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(birexRouterProvider);
    final themeMode = ref.watch(themeModeProvider);
    final style = ref.watch(themeStyleProvider);
    final lightTheme = FlexThemeData.light(scheme: style);
    final darkTheme = FlexThemeData.dark(scheme: style);
    final lightTextTheme = GoogleFonts.interTextTheme(lightTheme.textTheme);
    final darkTextTheme = GoogleFonts.interTextTheme(darkTheme.textTheme);
    return MaterialApp.router(
      title: 'birex',
      routerConfig: router,
      themeMode: themeMode,
      theme: lightTheme.copyWith(textTheme: lightTextTheme),
      darkTheme: darkTheme.copyWith(textTheme: darkTextTheme),
    );
  }
}
