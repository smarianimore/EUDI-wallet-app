import 'package:birex/service/env.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class AlwaysOnLogger extends LogFilter {
  @override
  bool shouldLog(LogEvent event) => true;
}

class ApplicationLogger {
  ApplicationLogger._();
  static final ApplicationLogger _singleton = ApplicationLogger._();
  static ApplicationLogger get instance => _singleton;

  final logger = Logger(
    filter: AlwaysOnLogger(),
    printer: PrettyPrinter(methodCount: 0, dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart),
  );

  void logApplicationEvent(Object? event) {
    _logMessage('NEW VALUE: $event');
  }

  void logApplicationError(String error) {
    _logMessage('[ERROR] $error', level: Level.error);
  }

  void logApplicationSuccess(String message) {
    _logMessage('[SUCCESS] $message', level: Level.info);
  }

  void _logMessage(String message, {Level level = Level.debug}) {
    if (!EnvVariables.loggingEnabled) return;
    logger.log(level, message);
  }

  void logFlutterError(FlutterErrorDetails details) {
    if (kDebugMode) {
      print('Error from INSIDE framework');
      print('----------------------');
      print('Error :  ${details.exception}');
      print('StackTrace :  ${details.stack}');
    }
  }

  void logFrameworkError(Object error, StackTrace? stacktrace) {
    if (kDebugMode) {
      print('Error from OUTSIDE framework');
      print('----------------------');
      print('Error :  $error');
      print('StackTrace :  $stacktrace');
    }
  }
}
