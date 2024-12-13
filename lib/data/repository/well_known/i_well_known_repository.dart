import 'package:birex/data/model/authorization_server/issuerauthorizationserverconfiguration.dart';
import 'package:birex/data/model/issuer/credentialissuerconfiguration.dart';
import 'package:birex/data/model/openid/issueropenidconfiguration.dart';
import 'package:birex/utils/response.dart';

abstract class IWellKnownRepository {
  AsyncApplicationResponse<IssuerAuthorizationServerConfiguration> getAuthorizationServerConfiguration(
    String issuer,
  );

  AsyncApplicationResponse<IssuerOpenIDConfiguration> getOpenIDConfiguration(
    String issuer,
  );

  AsyncApplicationResponse<CredentialIssuerConfiguration> getCredentialIssuerConfiguration(
    String issuer,
  );
}
