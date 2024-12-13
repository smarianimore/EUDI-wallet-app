import 'package:keyfull/service/storage/keys.dart';
import 'package:keyfull/utils/error/applicationerror.dart';
import 'package:keyfull/utils/extensions/empty_response/emptyresponse.dart';
import 'package:keyfull/utils/logger/custom_logger.dart';
import 'package:keyfull/utils/response.dart';
import 'package:shared_preferences/shared_preferences.dart';

mixin StorageServiceProvider {
  Future<ILocalStorageProvider> getLocalStorage() async {
    return LocalStorageProvider.instance;
  }
}

class CachedLocalStorage extends ILocalStorageProvider {
  Map<String, dynamic> cache = <String, dynamic>{};

  @override
  Future<Response<T, ApplicationError>> deleteValue<T>(String key) async {
    if (!cache.containsKey(key)) return Responses.success(null);
    cache.remove(key);
    return Responses.success(null);
  }

  @override
  Future<Response<T, ApplicationError>> readValue<T>(String key) async {
    if (!cache.containsKey(key)) return Responses.failure([]);
    final value = cache[key];
    return Responses.success(value as T);
  }

  @override
  Future<Response<T, ApplicationError>> saveValue<T>(String key, T value) async {
    if (cache.containsKey(key)) {
      cache.update(key, (_) => value);
    } else {
      cache.putIfAbsent(key, () => value);
    }
    return Responses.success(value);
  }

  @override
  Future<Response<T, ApplicationError>> updateValue<T>(String key, T value) async {
    if (cache.containsKey(key)) {
      cache.update(key, (_) => value);
    } else {
      cache.putIfAbsent(key, () => value);
    }
    return Responses.success(value);
  }

  @override
  AsyncApplicationResponse<EmptyResponse> clear() {
    cache.clear();
    return Future.value(Responses.success(EmptyResponse()));
  }
}

class LocalStorageProvider extends ILocalStorageProvider {
  LocalStorageProvider._();
  static Future<LocalStorageProvider> get instance async {
    if (_singleton.sharedPreferences != null) return Future.value(_singleton);
    _singleton.sharedPreferences = await SharedPreferences.getInstance();
    final version = _singleton.sharedPreferences!.getString(LocalStorageKey.version.name);
    const appVersion = '2';
    if (version == null || version != appVersion) {
      await _singleton.clear();
      await _singleton.saveValue<String>(LocalStorageKey.version.name, appVersion);
    }
    return _singleton;
  }

  static final _singleton = LocalStorageProvider._();

  SharedPreferences? sharedPreferences;

  @override
  Future<Response<T, ApplicationError>> readValue<T>(String key) async {
    if (sharedPreferences == null) return getUnintializedError<T>();
    dynamic value;
    try {
      switch (T) {
        case String:
          value = sharedPreferences!.getString(key);
        case int:
          value = sharedPreferences!.getInt(key);
        case bool:
          value = sharedPreferences!.getBool(key);
        case const (List<String>):
          value = sharedPreferences!.getStringList(key);
        case DateTime:
          final stringValue = sharedPreferences!.getString(key);
          value = DateTime.parse(stringValue!);
        default:
      }
    } catch (e) {
      value = null;
    }
    if (value != null) return Responses.success<T, ApplicationError>(value as T);
    ApplicationLogger.instance.logApplicationError('Lettura di $key');
    return Responses.failure([ApplicationError.generic()]);
  }

  @override
  Future<Response<T, ApplicationError>> saveValue<T>(String key, T value) async {
    if (sharedPreferences == null) return getUnintializedError<T>();
    var response = Responses.success<T, ApplicationError>(value);
    switch (T) {
      case String:
        final outcome = await sharedPreferences!.setString(key, value as String);
        if (!outcome) response = getSavingError();
      case int:
        final outcome = await sharedPreferences!.setInt(key, value as int);
        if (!outcome) response = getSavingError();
      case bool:
        final outcome = await sharedPreferences!.setBool(key, value as bool);
        if (!outcome) response = getSavingError();
      case const (List<String>):
        final outcome = await sharedPreferences!.setStringList(key, value as List<String>);
        if (!outcome) response = getSavingError();
      case DateTime:
        final toString = (value as DateTime).toIso8601String();
        final outcome = await sharedPreferences!.setString(key, toString);
        if (!outcome) response = getSavingError();
      default:
    }
    void log(ApplicationError? _) => ApplicationLogger.instance.logApplicationError('Errore in scrittura di $key');
    return response.ifError(log);
  }

  @override
  Future<Response<T, ApplicationError>> updateValue<T>(String key, T value) async {
    return saveValue<T>(key, value);
  }

  @override
  Future<Response<T, ApplicationError>> deleteValue<T>(String key) async {
    if (sharedPreferences == null) return getUnintializedError();
    if (!sharedPreferences!.containsKey(key)) return getSavingError();
    final value = await readValue<T>(key);
    final outcome = await sharedPreferences!.remove(key);
    if (outcome) return value;
    return getSavingError();
  }

  Response<T, ApplicationError> getUnintializedError<T>() => Responses.failure([
        ApplicationError.generic(),
      ]);

  Response<T, ApplicationError> getSavingError<T>() => Responses.failure([
        ApplicationError.generic(),
      ]);

  @override
  AsyncApplicationResponse<EmptyResponse> clear() async {
    if (sharedPreferences == null) return getUnintializedError();
    final hasCleared = await sharedPreferences!.clear();
    if (hasCleared) return Responses.success(null);
    return Responses.failure();
  }
}

abstract class ILocalStorageProvider {
  Future<Response<T, ApplicationError>> readValue<T>(String key);

  Future<Response<T, ApplicationError>> saveValue<T>(String key, T value);

  Future<Response<T, ApplicationError>> updateValue<T>(String key, T value);

  Future<Response<T, ApplicationError>> deleteValue<T>(String key);

  AsyncApplicationResponse<EmptyResponse> clear();
}
