import 'dart:convert';

import 'package:birex/data/model/key_proof/keyproofresponse.dart';
import 'package:birex/data/model/verifiable_credentials/supportedcredentialconfiguration.dart';
import 'package:birex/data/repository/repository_response_handler.dart';
import 'package:birex/data/repository/verifiable_credential/i_verifiable_credential_repository.dart';
import 'package:birex/service/network/dio/dio_provider.dart';
import 'package:birex/utils/response.dart';
import 'package:dio/dio.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
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
  AsyncApplicationResponse<VerifiableCredential> generateCredentials({
    required String uri,
    required String accessToken,
    required String format,
    required String vct,
    required String jwt,
    required String proofType,
    required String subject,
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
      payloadMapper: (payload) {
        final response = VerifiableCredentialResponse.fromJson(payload);
        return VerifiableCredential(
          credentialResponse: response,
          subject: subject,
          disclosures: response.credential.parseDisclosures,
          claims: <VerifiableCredentialClaim>[],
        );
      },
    );
  }
}

extension on String {
  List<VerifiableDisclosure> get parseDisclosures {
    final rawDisclosures = [...split('~')]
      ..removeLast()
      ..removeAt(0);
    return rawDisclosures.disclosures;
  }
}

extension on List<String> {
  List<VerifiableDisclosure> get disclosures {
    final disclosures = <VerifiableDisclosure>[];
    for (final raw in this) {
      final stringToBase64 = utf8.fuse(base64);
      final padding = raw.length % 4;
      final rawPadded = padding == 0 ? raw : raw + ('=' * (4 - padding));
      final base = stringToBase64.decode(rawPadded);
      final values = _stringToList(base);
      final beforeCapitalLetter = RegExp('(?=[A-Z])');
      final normalizedName = values[1].split(beforeCapitalLetter).map((e) => e.capitalize).join(' ');
      final mapped = VerifiableDisclosure(name: normalizedName, value: values[2]);
      disclosures.add(mapped);
    }
    return disclosures;
  }

  List<String> _stringToList(String value) {
    final normalized = value.substring(1, value.length - 1);
    final values = normalized.split(',');
    final result = <String>[];
    for (final value in values) {
      final isString = value.startsWith('"') && value.endsWith('"');
      result.add(isString ? value.substring(1, value.length - 1) : value);
    }
    return result;
  }
}
