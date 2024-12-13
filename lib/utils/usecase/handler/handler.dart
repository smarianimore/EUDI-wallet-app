import 'dart:async';

import 'package:birex/utils/error/applicationerror.dart';
import 'package:birex/utils/extensions/list_extensions.dart';
import 'package:birex/utils/response.dart';

abstract class UseCaseSuccessHandler<R, I> {
  Future<void> handle(R? payload, I input);
}

abstract class UseCaseErrorHandler {
  Future<bool> isError(Response<dynamic, ApplicationError> response) {
    final isError = response.isError;
    if (!isError) return Future.value(isError);
    final errors = response.errors;
    if (errors == null || errors.isEmpty) return Future.value(isError);
    final error = errors.first;
    return Future.value(error.maybeMap(orElse: () => isError, unauthorized: (value) => false));
  }

  Future<void> handle(List<ApplicationError> errors);
}

class CustomSuccessHandler<R, I> extends UseCaseSuccessHandler<R, I> {
  CustomSuccessHandler(this.onSuccess);
  final FutureOr<void> Function(R? payload, I input) onSuccess;

  @override
  Future<void> handle(R? payload, I input) async => await onSuccess(payload, input);
}

class CustomErrorHandler extends UseCaseErrorHandler {
  CustomErrorHandler({required this.onError, this.errorCode});
  final Future<void> Function(List<ApplicationError> errors) onError;
  final ErrorCode? errorCode;

  @override
  Future<bool> isError(Response<dynamic, ApplicationError> response) {
    final errors = response.errors ?? <ApplicationError>[];
    if (errors.isEmpty) return super.isError(response);
    final hasMatch = errors.getWhere((element) => element.code == errorCode) != null;
    return Future.value(hasMatch);
  }

  @override
  Future<void> handle(List<ApplicationError> errors) => onError(errors);
}
