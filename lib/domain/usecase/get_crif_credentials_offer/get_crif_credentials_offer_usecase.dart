import 'package:birex/data/data.dart';
import 'package:birex/service/service.dart';
import 'package:birex/utils/utils.dart';
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

class GetCRIFCredentialsOfferUseCase extends UseCase<WellKnownCredentialIssuerConfiguration, void> {
  GetCRIFCredentialsOfferUseCase({
    required this.repository,
    super.requirements,
    super.errorHandlers,
    super.successHandlers,
    super.validators,
  });

  final IWellKnownRepository repository;

  @override
  AsyncApplicationResponse<WellKnownCredentialIssuerConfiguration> call(void input) async {
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
