import 'package:birex/data/model/authentication/tokenauthenticationresponse.dart';
import 'package:birex/data/repository/authentication/i_authentication_repository.dart';
import 'package:birex/data/repository/repository_response_handler.dart';
import 'package:birex/service/network/dio/dio_provider.dart';
import 'package:birex/utils/response.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_repository.g.dart';

@riverpod
AuthenticationRepository authenticationRepository(Ref ref) {
  return AuthenticationRepository(dio: ref.read(dioProvider));
}

class AuthenticationRepository with RepositoryResponseHandler implements IAuthenticationRepository {
  AuthenticationRepository({required this.dio});

  final Dio dio;

  @override
  AsyncApplicationResponse<CredentialPreauthorizationResponse> authorizeCredentialIssuance({
    required String host,
    required String credentialSubject,
    required int credentialType,
  }) async {
    return handleResponse(
      request: () => dio.post(
        '$host/api/CredentialOffer/offer',
        data: {
          'credentialSubject': credentialSubject,
          'expiresOn': DateTime.now().add(const Duration(days: 1)).toIso8601String(),
          'credentialType': credentialType,
        },
      ),
      payloadMapper: CredentialPreauthorizationResponse.fromJson,
    );
  }

  @override
  AsyncApplicationResponse<TokenAuthenticationResponse> login({
    required String host,
    required String code,
    required String grantType,
    required String clientId,
  }) {
    final parameters = FormData.fromMap({
      'pre-authorized_code': code,
      'grant_type': grantType,
      'client_id': clientId,
    });
    return handleResponse<TokenAuthenticationResponse>(
      request: () => dio.post(
        '$host/api/token',
        data: parameters,
      ),
      payloadMapper: TokenAuthenticationResponse.fromJson,
    );
  }

  @override
  AsyncApplicationResponse<CredentialPreauthorizationResponse> getIssuerOffer({required String uri}) {
    return handleResponse(
      request: () => dio.get(uri),
      payloadMapper: CredentialPreauthorizationResponse.fromJson,
    );
  }
}
