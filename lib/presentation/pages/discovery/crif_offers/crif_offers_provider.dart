import 'package:birex/data/data.dart';
import 'package:birex/domain/domain.dart';
import 'package:birex/utils/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'crif_offers_provider.g.dart';

@riverpod
Future<CredentialIssuerConfiguration> crifOffers(Ref ref) async {
  final usecase = ref.read(getCRIFCredentialsOfferUseCaseProvider);
  final response = await usecase.call(null);
  return response.toFuture();
}
