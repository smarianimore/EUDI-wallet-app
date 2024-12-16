import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeModeProvider = StateProvider<ThemeMode>((ref) {
  return ThemeMode.system;
});

final themeStyleProvider = StateProvider<FlexScheme>((ref) {
  return FlexScheme.mandyRed;
});
