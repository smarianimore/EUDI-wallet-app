import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'applicationerror.freezed.dart';

@freezed
class ApplicationError with _$ApplicationError {
  factory ApplicationError.generic({
    String? message,
    @Default(ErrorCode.generic) ErrorCode code,
  }) = Generic;

  factory ApplicationError.openIDError({
    String? error,
    @JsonKey(name: 'error_description') String? errorDescription,
    @Default(ErrorCode.openIDError) ErrorCode code,
  }) = OpenIDError;

  factory ApplicationError.operationAborted({
    @Default(ErrorCode.operationAborted) ErrorCode code,
  }) = OperationAborted;

  factory ApplicationError.unauthorized({
    @Default(ErrorCode.unauthorized) ErrorCode code,
  }) = Unauthorized;
}

class ApplicationErrorFactory {
  ApplicationErrorFactory._();

  static final _singleton = ApplicationErrorFactory._();
  static ApplicationErrorFactory get instance => _singleton;

  ApplicationError mapNetworkError(DioException error) {
    final responseData = error.response?.data;
    if (responseData is Map<String, dynamic>) {
      return _mapStructuredNetworkError(error);
    } else {
      return _mapPlainErrorBody(error);
    }
  }

  ApplicationError _mapPlainErrorBody(DioException error) {
    final responseData = error.response?.data;
    if (responseData is String) {
      return ApplicationError.generic(message: responseData);
    }
    return ApplicationError.generic(message: error.message);
  }

  ApplicationError _mapStructuredNetworkError(DioException error) {
    final payload = error.response?.data as Map<String, dynamic>?;
    if (payload == null) return ApplicationError.generic();
    final openIDError = _mapOpenIDError(payload);
    if (openIDError != null) return openIDError;
    final lissiNetworkError = _mapLissiNetworkError(payload);
    if (lissiNetworkError != null) return lissiNetworkError;
    return ApplicationError.generic(message: error.response?.statusMessage ?? error.message);
  }

  ApplicationError? _mapOpenIDError(Map<String, dynamic> payload) {
    final error = payload['error'] as String?;
    final errorDescription = payload['error_description'] as String?;
    if (error == null || errorDescription == null) return null;
    return ApplicationError.openIDError(error: error, errorDescription: errorDescription);
  }

  ApplicationError? _mapLissiNetworkError(Map<String, dynamic> payload) {
    final error = payload['error'] as String?;
    if (error == null) return null;
    return ApplicationError.generic(message: error);
  }
}

enum ErrorCode {
  generic,
  openIDError,
  operationAborted,
  unauthorized,
}

extension ErrorLabelMapper on ApplicationError {
  String get title {
    return maybeMap(
      orElse: () => 'Attenzione',
    );
  }

  String get message {
    return map(
      generic: (error) => error.message ?? 'Errore generico',
      operationAborted: (_) => 'Operazione annullata',
      unauthorized: (_) => 'Non autorizzato',
      openIDError: (value) => value.errorDescription ?? 'Errore OpenID',
    );
  }
}
