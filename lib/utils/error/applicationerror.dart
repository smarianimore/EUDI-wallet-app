import 'package:freezed_annotation/freezed_annotation.dart';

part 'applicationerror.freezed.dart';

@freezed
class ApplicationError with _$ApplicationError {
  factory ApplicationError.generic({
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
