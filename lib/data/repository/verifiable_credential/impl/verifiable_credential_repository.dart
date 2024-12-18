import 'package:birex/data/model/key_proof/keyproofresponse.dart';
import 'package:birex/data/repository/repository_response_handler.dart';
import 'package:birex/data/repository/verifiable_credential/i_verifiable_credential_repository.dart';
import 'package:birex/service/network/dio/dio_provider.dart';
import 'package:birex/utils/response.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'verifiable_credential_repository.g.dart';

@riverpod
VerifiableCredentialRepository verifiableCredentialRepository(Ref ref) {
  final dio = ref.read(dioProvider);
  return VerifiableCredentialRepository(dio: dio);
}

class VerifiableCredentialRepository with RepositoryResponseHandler implements IVerifiableCredentialRepository {
  VerifiableCredentialRepository({required this.dio});

  final Dio dio;

  @override
  AsyncApplicationResponse<KeyProofResponse> generateKeyProof({
    required String accessToken,
    required String host,
    required String clientId,
    required String issuer,
    required String nonce,
  }) {
    final form = FormData.fromMap({
      'clientId': clientId,
      'issuer': issuer,
      'nonce': nonce,
    });
    return handleResponse(
      request: () => dio.post(
        '$host/api/keyproof/generate-key-proof',
        data: form,
        options: Options(headers: {'authorization': 'Bearer $accessToken'}),
      ),
      payloadMapper: KeyProofResponse.fromJson,
    );
  }

  @override
  AsyncApplicationResponse<void> generateCredentials({
    required String uri,
    required String accessToken,
    required String format,
    required String vct,
    required String jwt,
    required String proofType,
  }) {
    return handleResponse(
      request: () => dio.post(
        uri,
        data: {
          'format': format,
          'vct': vct,
          'proof': {
            'jwt': jwt,
            'proof_type': proofType,
          },
        },
        options: Options(headers: {'authorization': 'Bearer $accessToken'}),
      ),
      payloadMapper: KeyProofResponse.fromJson,
    );
  }
}
