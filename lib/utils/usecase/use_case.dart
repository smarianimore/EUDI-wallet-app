import 'package:birex/utils/error/applicationerror.dart';
import 'package:birex/utils/extensions/empty_response/emptyresponse.dart';
import 'package:birex/utils/response.dart';
import 'package:birex/utils/usecase/handler/handler.dart';
import 'package:birex/utils/usecase/requirement/requirement.dart';
import 'package:birex/utils/usecase/validator/use_case_validator.dart';

abstract class UseCase<R, I> {
  UseCase({
    this.requirements,
    this.errorHandlers,
    this.successHandlers,
    this.validators,
  });

  final List<UseCaseRequirement>? requirements;
  final List<UseCaseValidator<I>>? validators;
  final List<UseCaseErrorHandler<I>>? errorHandlers;
  final List<UseCaseSuccessHandler<R, I>>? successHandlers;

  AsyncApplicationResponse<R> call(I input);

  AsyncApplicationResponse<EmptyResponse> checkRequirements() async {
    if (requirements == null) {
      return Responses.success<EmptyResponse, ApplicationError>(EmptyResponse());
    }
    for (final req in requirements!) {
      final response = await req.check();
      if (response.isError) return response;
    }
    return Responses.success(EmptyResponse());
  }

  AsyncApplicationResponse<EmptyResponse> validateInput(I input) async {
    if (validators == null) {
      return Responses.success<EmptyResponse, ApplicationError>(EmptyResponse());
    }
    for (final validator in validators!) {
      final response = await validator.validate(input);
      if (response.isError) return response;
    }
    return Responses.success(EmptyResponse());
  }

  Future<void> applyErrorHandlers(
    ApplicationResponse<R> response,
    I input, {
    bool ignoreAbortedOperations = true,
  }) async {
    if (errorHandlers == null) return Future.value();
    if (ignoreAbortedOperations) {
      final abortedError = ApplicationError.operationAborted();
      if (response.hasError(abortedError)) return Future.value();
    }
    for (final handler in errorHandlers!) {
      final match = await handler.isError(response);
      if (match) {
        final error = response.errors?.isEmpty ?? true ? null : response.errors?.first;
        if (error == null) return;
        await handler.handle(response.errors ?? <ApplicationError>[], input);
      }
    }
  }

  Future<void> applySuccessHandlers(ApplicationResponse<R> response, I input) async {
    if (successHandlers == null) return;
    for (final handler in successHandlers!) {
      await handler.handle(response.payload, input);
    }
  }
}
