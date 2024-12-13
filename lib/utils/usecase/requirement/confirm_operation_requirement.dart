/* import 'package:keyfull/domain/domain.dart';
import 'package:keyfull/presentation/presentation.dart';
import 'package:keyfull/service/service.dart';
import 'package:keyfull/utils/utils.dart';
import 'package:flutter/material.dart';

class ConfirmOperationRequirement extends UseCaseRequirement {
  final DialogService dialogService;
  final String confirmMessage;
  final String? message;

  ConfirmOperationRequirement(
    this.dialogService, {
    required this.confirmMessage,
    this.message,
  });

  @override
  Future<Response<EmptyResponse, ApplicationError>> check() async {
    var response = await dialogService.showCustomDialog<bool?>(
      dialogBuilder: (_) => ConfirmDialog(title: confirmMessage, child: message != null ? Text(message!) : null),
    );
    return Responses.create<bool?, ApplicationError>(
      builder: () => response,
      isError: (value) => value == null || !value,
      error: ApplicationError.operationAborted(),
    ).map((payload) => EmptyResponse());
  }
}
 */
