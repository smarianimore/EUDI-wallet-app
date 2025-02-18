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
    required String uri,
    required String credentialSubject,
  }) async {
    return handleResponse(
      request: () => dio.post(
        '$uri/api/CredentialOffer/offer',
        data: {
          'credentialSubject': credentialSubject,
          'expiresOn': DateTime.now().add(const Duration(days: 1)).toIso8601String(),
          'credentialType': credentialSubject == 'AffittabileCompleta' ? 2 : 0,
        },
      ),
      payloadMapper: CredentialPreauthorizationResponse.fromJson,
    );
  }

  @override
  AsyncApplicationResponse<TokenAuthenticationResponse> login({
    required String uri,
    required String code,
    required String grantType,
    String? transactionCode,
  }) {
    return handleResponse<TokenAuthenticationResponse>(
      request: () => dio.post(
        uri,
        options: Options(
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        ),
        data: {
          'pre-authorized_code': code,
          'grant_type': grantType,
          if (transactionCode != null) 'tx_code': transactionCode,
        },
      ),
      payloadMapper: (payload) {
        final expiresIn = payload['expires_in'];
        final cNonceExpiresIn = payload['c_nonce_expires_in'];
        return TokenAuthenticationResponse(
          accessToken: payload['access_token'] as String,
          tokenType: payload['token_type'] as String,
          expiresIn: expiresIn is num ? expiresIn : num.tryParse(expiresIn as String)!,
          cNonce: payload['c_nonce'] as String,
          cNonceExpiresIn: cNonceExpiresIn is num ? cNonceExpiresIn : num.tryParse(cNonceExpiresIn as String)!,
          refreshToken: payload['refresh_token'] as String?,
          idToken: payload['id_token'] as String?,
        );
      },
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
