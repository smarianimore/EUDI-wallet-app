import 'package:birex/data/model/authorization_server/issuerauthorizationserverconfiguration.dart';
import 'package:birex/data/model/issuer/credentialissuerconfiguration.dart';
import 'package:birex/data/model/key_proof/keyproofresponse.dart';
import 'package:birex/data/model/openid/issueropenidconfiguration.dart';
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

  @override
  AsyncApplicationResponse<SigningProofConfiguration> getJWKConfiguration(String issuer) async {
    final jwksAttempt = await handleResponse<SigningProofConfiguration>(
      request: () => dio.get('$issuer/.well-known/jwks.json'),
      payloadMapper: (payload) => (payload['keys'] as List<dynamic>)
          .map<SigningProofConfiguration>((e) => SigningProofConfiguration.fromJson(e as Map<String, dynamic>))
          .first,
    );
    if (!jwksAttempt.isError) return jwksAttempt;
    return handleResponse<SigningProofConfiguration>(
      request: () => dio.get('$issuer/.well-known/jwt-vc-issuer'),
      payloadMapper: (payload) {
        final key = ((payload['jwks'] as Map<String, dynamic>)['keys'] as List<dynamic>).first;
        final keyMap = key as Map<String, dynamic>;
        return SigningProofConfiguration(
          kty: keyMap['kty'] as String,
          crv: keyMap['crv'] as String,
          x: keyMap['x'] as String,
          y: keyMap['y'] as String,
          kid: keyMap['kid'] as String,
        );
      },
    );
  }
}
