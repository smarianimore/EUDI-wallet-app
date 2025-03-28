class EnvVariables {
  static const env = String.fromEnvironment('ENVIRONMENT');

  static const crifApiKey = String.fromEnvironment('CRIF_API_KEY');

  static const walletEncryptionKey = String.fromEnvironment('WALLET_ENCRYPTION_KEY');

  static const loggingEnabled = bool.fromEnvironment('LOGGING_ENABLED', defaultValue: true);

  static const visibleStacktrace = bool.fromEnvironment('VISIBLE_STACKTRACE', defaultValue: true);
}
