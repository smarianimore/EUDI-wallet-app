// ignore_for_file: strict_raw_type

import 'package:birex/utils/logger/custom_logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RiverpodApplicationLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (provider.name == null) return;
    ApplicationLogger.instance.logApplicationEvent(newValue);
  }
}
