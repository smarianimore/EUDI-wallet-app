import 'package:birex/service/logger/custom_logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RiverpodApplicationLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    final logger = ApplicationLogger.instance;
    if (provider.name == null) return;
    logger.logApplicationEvent(newValue);
  }
}
