class EnvVariables {
  static const env = String.fromEnvironment('ENVIRONMENT');

  static const loggingEnabled = bool.fromEnvironment('LOGGING_ENABLED', defaultValue: true);

  static const visibleStacktrace = bool.fromEnvironment('VISIBLE_STACKTRACE', defaultValue: true);
}

enum ApplicationEnv {
  development,
  test,
  production;

  static ApplicationEnv get fromEnvironment {
    const env = EnvVariables.env;
    const fallback = ApplicationEnv.development;
    if (env.isEmpty) return fallback;
    if (env == ApplicationEnv.development.name) return ApplicationEnv.development;
    if (env == ApplicationEnv.test.name) return ApplicationEnv.test;
    if (env == ApplicationEnv.production.name) return ApplicationEnv.production;
    return fallback;
  }
}
