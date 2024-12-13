import 'package:birex/presentation/components/dialog/confirm_dialog.dart';
import 'package:birex/service/dialog/dialog_service.dart';
import 'package:birex/utils/error/applicationerror.dart';
import 'package:birex/utils/extensions/empty_response/emptyresponse.dart';
import 'package:birex/utils/response.dart';
import 'package:birex/utils/usecase/validator/use_case_validator.dart';

class ConfirmOperationValidator<I> extends UseCaseValidator<I> {
  ConfirmOperationValidator(
    this.dialogService, {
    required this.title,
    this.message,
  });
  final DialogService dialogService;
  final String title;
  final String Function(I input)? message;

  @override
  Future<ApplicationResponse<EmptyResponse>> validate(I input) async {
    final response = await dialogService.showCustomDialog<bool?>(
      dialogBuilder: (_) => ConfirmDialog(
        title: title,
        message: message == null ? null : message!(input),
      ),
    );
    return Responses.create<bool?, ApplicationError>(
      builder: () => response,
      isError: (value) => value == null || !value,
      error: ApplicationError.operationAborted(),
    ).map((payload) => EmptyResponse());
  }
}
