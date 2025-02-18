import 'package:birex/data/model/issuer/credentialissuerconfiguration.dart';
import 'package:birex/data/repository/well_known/i_well_known_repository.dart';
import 'package:birex/data/repository/well_known/impl/well_known_repository.dart';
import 'package:birex/service/dialog/dialog_service.dart';
import 'package:birex/utils/response.dart';
import 'package:birex/utils/usecase/handler/show_dialog_error_handler.dart';
import 'package:birex/utils/usecase/use_case.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_crif_credentials_offer_usecase.g.dart';

@riverpod
GetCRIFCredentialsOfferUseCase getCRIFCredentialsOfferUseCase(Ref ref) {
  final repo = ref.read(wellKnownRepositoryProvider);
  final dialogService = ref.read(dialogServiceProvider);
  final errorHandler = ShowDialogErrorHandler<void>(dialogService);
  return GetCRIFCredentialsOfferUseCase(
    repository: repo,
    errorHandlers: [errorHandler],
  );
}

class GetCRIFCredentialsOfferUseCase extends UseCase<CredentialIssuerConfiguration, void> {
  GetCRIFCredentialsOfferUseCase({
    required this.repository,
    super.requirements,
    super.errorHandlers,
    super.successHandlers,
    super.validators,
  });

  final IWellKnownRepository repository;

  @override
  AsyncApplicationResponse<CredentialIssuerConfiguration> call(void input) async {
    final check = await checkRequirements();
    final response = await check.flatMapAsync(
      (_) => repository.getCredentialIssuerConfiguration(
        'https://crif.azurewebsites.net',
      ),
    );
    await response.ifErrorAsync((_) => applyErrorHandlers(response, input));
    await response.ifSuccessAsync((_) => applySuccessHandlers(response, input));
    return response;
  }
}
