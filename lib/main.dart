import 'package:birex/app.dart';
import 'package:birex/service/service.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  await HiveController.instance.init();
  runApp(const ProviderScope(child: BirexApp()));
}
