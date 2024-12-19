import 'package:birex/app.dart';
import 'package:birex/service/storage/hive/hive_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  await HiveController.instance.init();
  runApp(const ProviderScope(child: BirexApp()));
}
