import 'package:freezed_annotation/freezed_annotation.dart';

part 'applicationerror.freezed.dart';

@freezed
class ApplicationError with _$ApplicationError {
  factory ApplicationError.generic({
    String? message,
    @Default(ErrorCode.generic) ErrorCode code,
  }) = Generic;

  factory ApplicationError.operationAborted({
    @Default(ErrorCode.operationAborted) ErrorCode code,
  }) = OperationAborted;

  factory ApplicationError.unauthorized({
    @Default(ErrorCode.unauthorized) ErrorCode code,
  }) = Unauthorized;
}

enum ErrorCode {
  generic,
  operationAborted,
  unauthorized,
}

extension ErrorLabelMapper on ApplicationError {
  String get title {
    return maybeMap(
      orElse: () => 'Qualcosa è andato storto',
    );
  }

  String get message {
    return map(
      generic: (error) => error.message ?? 'Errore generico',
      operationAborted: (_) => 'Operazione annullata',
      unauthorized: (_) => 'Non autorizzato',
    );
  }
}
