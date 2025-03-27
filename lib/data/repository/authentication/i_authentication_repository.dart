import 'package:birex/data/model/authentication/tokenauthenticationresponse.dart';
import 'package:birex/data/model/credential_offer/credentialofferresponse.dart';
import 'package:birex/utils/utils.dart';

abstract class IAuthenticationRepository {
  AsyncApplicationResponse<CredentialOfferResponse> authorizeCredentialIssuance({
    required String uri,
    required String credentialSubject,
  });

  AsyncApplicationResponse<CredentialOfferResponse> getIssuerOffer({
    required String uri,
  });

  AsyncApplicationResponse<TokenAuthenticationResponse> login({
    required String uri,
    required String code,
    required String grantType,
    String? transactionCode,
  });
}
