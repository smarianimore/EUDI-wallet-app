class EnvVariables {
  static const env = String.fromEnvironment('ENVIRONMENT');

  static const loggingEnabled = bool.fromEnvironment('LOGGING_ENABLED', defaultValue: true);

  static const visibleStacktrace = bool.fromEnvironment('VISIBLE_STACKTRACE', defaultValue: true);
}
