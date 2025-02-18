import 'package:birex/presentation/components/screen/loading/overlay_manager.dart';
import 'package:birex/service/dialog/dialog_service.dart';
import 'package:birex/utils/error/applicationerror.dart';
import 'package:birex/utils/usecase/handler/handler.dart';

class ShowDialogErrorHandler<I> extends UseCaseErrorHandler<I> {
  ShowDialogErrorHandler(this.dialogService, {this.textMapper});
  final DialogService dialogService;
  final String Function(ApplicationError error, I input)? textMapper;

  @override
  Future<void> handle(List<ApplicationError> errors, I input) async {
    OverlayLoaderManager.instance.hideLoader();
    final error = errors.first;
    return dialogService.showErrorDialog(
      error,
      customErrorMessage: textMapper?.call(error, input),
    );
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
    OverlayLoaderManager.instance.hideLoader();
    return dialogService.showSuccessDialog(message: textMapper(payload, input));
  }
}
