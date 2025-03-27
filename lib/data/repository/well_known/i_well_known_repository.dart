import 'package:birex/data/model/well_known/authorization_server/issuerauthorizationserverconfiguration.dart';
import 'package:birex/data/model/well_known/issuer/credentialissuerconfiguration.dart';
import 'package:birex/data/model/well_known/openid/issueropenidconfiguration.dart';
import 'package:birex/utils/utils.dart';

abstract class IWellKnownRepository {
  AsyncApplicationResponse<WellKnownAuthorizationServerInformation> getAuthorizationServerConfiguration(
    String issuer,
  );

  AsyncApplicationResponse<WellKnownOpenIDConfiguration> getOpenIDConfiguration(
    String issuer,
  );

  AsyncApplicationResponse<WellKnownCredentialIssuerConfiguration> getCredentialIssuerConfiguration(
    String issuer,
  );
}
