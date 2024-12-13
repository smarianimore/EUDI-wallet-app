import 'package:birex/service/dialog/dialog_service.dart';
import 'package:birex/utils/error/applicationerror.dart';
import 'package:birex/utils/usecase/handler/handler.dart';

class ShowDialogErrorHandler extends UseCaseErrorHandler {
  ShowDialogErrorHandler(this.dialogService);
  final DialogService dialogService;

  @override
  Future<void> handle(List<ApplicationError> errors) async {
    return dialogService.showErrorDialog(errors.first);
  }
}

class ShowDialogSuccessHandler<R, I> extends UseCaseSuccessHandler<R, I> {
  ShowDialogSuccessHandler(
    this.dialogService, {
    required this.textMapper,
  });
  final DialogService dialogService;
  final String Function(R? payload, I input) textMapper;

  @override
  Future<void> handle(R? payload, I input) async {
    return dialogService.showSuccessDialog(message: textMapper(payload, input));
  }
}
