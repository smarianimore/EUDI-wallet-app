import 'package:birex/data/model/issuer/credentialissuerconfiguration.dart';
import 'package:birex/domain/usecase/get_crif_credentials_offer/get_crif_credentials_offer_usecase.dart';
import 'package:birex/utils/response.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'crif_offers_provider.g.dart';

@riverpod
Future<CredentialIssuerConfiguration> crifOffers(Ref ref) async {
  final usecase = ref.read(getCRIFCredentialsOfferUseCaseProvider);
  final response = await usecase.call(null);
  return response.toFuture();
}
