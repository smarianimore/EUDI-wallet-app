import 'package:birex/data/model/authentication/tokenauthenticationresponse.dart';
import 'package:birex/utils/response.dart';

abstract class IAuthenticationRepository {
  AsyncApplicationResponse<CredentialPreauthorizationResponse> authorizeCredentialIssuance({
    required String uri,
    required String credentialSubject,
    required int credentialType,
  });

  AsyncApplicationResponse<CredentialPreauthorizationResponse> getIssuerOffer({
    required String uri,
  });

  AsyncApplicationResponse<TokenAuthenticationResponse> login({
    required String uri,
    required String code,
    required String grantType,
  });
}
