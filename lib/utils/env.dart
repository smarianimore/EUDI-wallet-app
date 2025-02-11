class EnvVariables {
  static const env = String.fromEnvironment('ENVIRONMENT');

  static const crifApiKey = String.fromEnvironment('CRIF_API_KEY');

  static const crifHost = String.fromEnvironment('CRIF_HOST');

  static const loggingEnabled = bool.fromEnvironment('LOGGING_ENABLED', defaultValue: true);

  static const visibleStacktrace = bool.fromEnvironment('VISIBLE_STACKTRACE', defaultValue: true);
}
