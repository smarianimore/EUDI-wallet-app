import 'package:birex/data/model/authentication/tokenauthenticationresponse.dart';
import 'package:birex/utils/utils.dart';

abstract class IAuthenticationRepository {
  AsyncApplicationResponse<CredentialPreauthorizationResponse> authorizeCredentialIssuance({
    required String uri,
    required String credentialSubject,
  });

  AsyncApplicationResponse<CredentialPreauthorizationResponse> getIssuerOffer({
    required String uri,
  });

  AsyncApplicationResponse<TokenAuthenticationResponse> login({
    required String uri,
    required String code,
    required String grantType,
    String? transactionCode,
  });
}
