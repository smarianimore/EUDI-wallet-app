import 'dart:convert';
import 'dart:developer';

import 'package:birex/data/model/model.dart';
import 'package:birex/data/repository/repository_response_handler.dart';
import 'package:birex/data/repository/verifiable_credential/i_verifiable_credential_repository.dart';
import 'package:birex/service/service.dart';
import 'package:birex/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'verifiable_credential_repository.g.dart';

@riverpod
VerifiableCredentialRepository verifiableCredentialRepository(Ref ref) {
  final dio = ref.read(dioProvider);
  final jwtService = ref.read(jwtServiceProvider);
  return VerifiableCredentialRepository(dio: dio, jwtService: jwtService);
}

class VerifiableCredentialRepository with RepositoryResponseHandler implements IVerifiableCredentialRepository {
  VerifiableCredentialRepository({required this.dio, required this.jwtService});

  final Dio dio;
  final JWTService jwtService;

  @override
  AsyncApplicationResponse<VerifiableCredential> generateCredentials({
    required String uri,
    required String accessToken,
    required String format,
    required String vct,
    required String jwt,
    required String proofType,
    required String subject,
    required SupportedCredentialDisplayInformation display,
  }) {
    return handleResponse(
      request: () => dio.post(
        uri,
        options: Options(headers: {'authorization': 'Bearer $accessToken'}),
        data: {
          'format': format,
          'vct': vct,
          'proof': {
            'jwt': jwt,
            'proof_type': proofType,
          },
        },
      ),
      payloadMapper: (payload) => VerifiableCredentialResponse.fromJson(payload).toVerifiableCredential(
        jwtService,
        subject: subject,
      ),
    );
  }
}

extension on VerifiableCredentialResponse {
  VerifiableCredential toVerifiableCredential(
    JWTService jwtService, {
    required String subject,
    SupportedCredentialDisplayInformation? display,
  }) {
    log(credential);
    final jwtComposer = jwtService.manageJWT(credential);
    final expiresAt = jwtComposer.expirationDate;
    final knownClaims = jwtComposer.claims.toKnownVerifiableCredentialInformation;
    final unknownClaims = knownClaims.unknown.map((e) => e.basicKeyValue!).toList();
    final knownDisclosures = credential.filterDisclosuresFromJWT;
    final unknownDisclosures = knownDisclosures.unknown.map((e) => e.basicKeyValue!).toList();
    final knownInformations = {...knownClaims, ...knownDisclosures}.toList();

    return VerifiableCredential(
      display: display,
      credentialResponse: this,
      subject: subject,
      expiresAt: expiresAt,
      knownCredentialInfo: knownInformations,
      unknownClaims: unknownClaims,
      unknownDisclosures: unknownDisclosures,
    );
  }
}

extension on Iterable<KnownVerifiableCredentialInformation> {
  Iterable<KnownVerifiableCredentialInformation> get unknown {
    return where((element) => element.type == KnownVerifiableCredentialInformationType.unknown);
  }
}

extension on Map<String, dynamic> {
  List<KnownVerifiableCredentialInformation> get toKnownVerifiableCredentialInformation {
    final disclosures = <KnownVerifiableCredentialInformation>{};
    for (final entry in entries) {
      final key = entry.key;
      final value = entry.value;
      disclosures.add((key, value).toKnownVerifiableCredentialInformation);
    }
    return disclosures.toList();
  }
}

extension on (String, dynamic) {
  KnownVerifiableCredentialInformation get toKnownVerifiableCredentialInformation {
    final key = this.$1;
    final value = this.$2;
    final type = KnownVerifiableCredentialInformationType.fromApiValue(key);
    if (type == KnownVerifiableCredentialInformationType.paymentAnalysis) {
      final asMap = value is Map<String, dynamic> ? value : jsonDecode(value as String) as Map<String, dynamic>;
      final paymentAnalysis = PaymentAnalysisInformation.fromJson(asMap);
      return KnownVerifiableCredentialInformation(type: type, paymentAnalysis: paymentAnalysis);
    } else if (type == KnownVerifiableCredentialInformationType.accountDataAnalysis) {
      final asMap = value is Map<String, dynamic> ? value : jsonDecode(value as String) as Map<String, dynamic>;
      final accountDataAnalysis = AccountDataAnalysis.fromJson(asMap);
      return KnownVerifiableCredentialInformation(type: type, accountDataAnalysis: accountDataAnalysis);
    } else {
      final basicKeyValue = VerifiableDisclosure(name: key, value: value.toString());
      return KnownVerifiableCredentialInformation(type: type, basicKeyValue: basicKeyValue);
    }
  }
}

extension on String {
  List<KnownVerifiableCredentialInformation> get filterDisclosuresFromJWT {
    final rawDisclosures = [...split('~')]..removeWhere((e) => e.isEmpty);
    if (rawDisclosures.length < 2) return <KnownVerifiableCredentialInformation>[];
    rawDisclosures.removeAt(0);
    return rawDisclosures.decodeDisclosure;
  }
}

extension on List<String> {
  List<KnownVerifiableCredentialInformation> get decodeDisclosure {
    final disclosures = <KnownVerifiableCredentialInformation>{};
    for (final raw in this) {
      final stringToBase64 = utf8.fuse(base64);
      final padding = raw.length % 4;
      final rawPadded = padding == 0 ? raw : raw + ('=' * (4 - padding));
      final base = stringToBase64.decode(rawPadded);
      final (key, value) = _getKeyValue(base);
      final mapped = (key, value).toKnownVerifiableCredentialInformation;
      disclosures.add(mapped);
    }
    return disclosures.toList();
  }

  (String, dynamic) _getKeyValue(String value) {
    final normalized = value.substring(1, value.length - 1);
    final splitted = normalized.split(',');
    final salt = splitted[0];
    final key = splitted[1];
    splitted
      ..remove(salt)
      ..remove(key);
    final content = splitted.join(',');
    log(content);
    return (_removeQuotes(key), _removeQuotes(content));
    /* final values = normalized.split(',');
    final result = <String>[];
    for (final value in values) {
      final isString = value.startsWith('"') && value.endsWith('"');
      result.add(isString ? value.substring(1, value.length - 1) : value);
    }
    return result; */
  }

  String _removeQuotes(String value) {
    if (value.startsWith('"') && value.endsWith('"')) {
      return value.substring(1, value.length - 1);
    }
    return value;
  }
}
