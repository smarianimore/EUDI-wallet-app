import 'package:birex/data/model/authorization_server/issuerauthorizationserverconfiguration.dart';
import 'package:birex/data/model/issuer/credentialissuerconfiguration.dart';
import 'package:birex/data/model/openid/issueropenidconfiguration.dart';
import 'package:birex/data/repository/repository_response_handler.dart';
import 'package:birex/data/repository/well_known/i_well_known_repository.dart';
import 'package:birex/service/network/dio/dio_provider.dart';
import 'package:birex/utils/response.dart';
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
  AsyncApplicationResponse<IssuerAuthorizationServerConfiguration> getAuthorizationServerConfiguration(
    String issuer,
  ) {
    return handleResponse<IssuerAuthorizationServerConfiguration>(
      request: () => dio.get('$issuer/.well-known/oauth-authorization-server'),
      payloadMapper: IssuerAuthorizationServerConfiguration.fromJson,
    );
  }

  @override
  AsyncApplicationResponse<IssuerOpenIDConfiguration> getOpenIDConfiguration(
    String issuer,
  ) {
    return handleResponse<IssuerOpenIDConfiguration>(
      request: () => dio.get('$issuer/.well-known/openid-configuration'),
      payloadMapper: IssuerOpenIDConfiguration.fromJson,
    );
  }

  @override
  AsyncApplicationResponse<CredentialIssuerConfiguration> getCredentialIssuerConfiguration(
    String issuer,
  ) {
    return handleResponse<CredentialIssuerConfiguration>(
      request: () => dio.get('$issuer/.well-known/openid-credential-issuer'),
      payloadMapper: CredentialIssuerConfiguration.fromJson,
    );
  }
}
