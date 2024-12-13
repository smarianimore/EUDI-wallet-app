import 'package:keyfull/presentation/components/dialog/confirm_dialog.dart';
import 'package:keyfull/service/dialog/dialog_service.dart';
import 'package:keyfull/utils/error/applicationerror.dart';
import 'package:keyfull/utils/extensions/empty_response/emptyresponse.dart';
import 'package:keyfull/utils/response.dart';
import 'package:keyfull/utils/usecase/validator/use_case_validator.dart';

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
