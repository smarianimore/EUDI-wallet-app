import 'package:birex/data/model/well_known/authorization_server/issuerauthorizationserverconfiguration.dart';
import 'package:birex/data/model/well_known/issuer/credentialissuerconfiguration.dart';
import 'package:birex/data/model/well_known/openid/issueropenidconfiguration.dart';
import 'package:birex/data/repository/repository_response_handler.dart';
import 'package:birex/data/repository/well_known/i_well_known_repository.dart';
import 'package:birex/service/service.dart';
import 'package:birex/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'well_known_repository.g.dart';

@riverpod
WellKnownRepository wellKnownRepository(Ref ref) {
  return WellKnownRepository(dio: ref.read(dioProvider));
}

class WellKnownRepository with RepositoryResponseHandler implements IWellKnownRepository {
  WellKnownRepository({required this.dio});

  final Dio dio;

  @override
  AsyncApplicationResponse<WellKnownAuthorizationServerInformation> getAuthorizationServerConfiguration(
    String issuer,
  ) {
    return handleResponse<WellKnownAuthorizationServerInformation>(
      request: () => dio.get('$issuer/.well-known/oauth-authorization-server'),
      payloadMapper: WellKnownAuthorizationServerInformation.fromJson,
    );
  }

  @override
  AsyncApplicationResponse<WellKnownOpenIDConfiguration> getOpenIDConfiguration(
    String issuer,
  ) {
    return handleResponse<WellKnownOpenIDConfiguration>(
      request: () => dio.get('$issuer/.well-known/openid-configuration'),
      payloadMapper: WellKnownOpenIDConfiguration.fromJson,
    );
  }

  @override
  AsyncApplicationResponse<WellKnownCredentialIssuerConfiguration> getCredentialIssuerConfiguration(
    String issuer,
  ) {
    return handleResponse<WellKnownCredentialIssuerConfiguration>(
      request: () => dio.get('$issuer/.well-known/openid-credential-issuer'),
      payloadMapper: WellKnownCredentialIssuerConfiguration.fromJson,
    );
  }
}
