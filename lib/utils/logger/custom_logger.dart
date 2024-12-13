import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:keyfull/utils/env.dart';
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
    printer: PrettyPrinter(
      methodCount: 0,
      dateTimeFormat: (value) => value.toIso8601String(),
    ),
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
    logger.e(details.exceptionAsString(), stackTrace: details.stack);
  }

  void logFrameworkError(Object error, StackTrace? stacktrace) {
    logger.e(error.toString(), stackTrace: stacktrace);
  }
}
