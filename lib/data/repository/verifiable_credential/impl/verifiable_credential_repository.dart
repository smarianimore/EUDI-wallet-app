import 'dart:convert';
import 'dart:developer';

import 'package:birex/data/model/credential_presentation/credentialpresentationrequest.dart';
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
        display: display,
      ),
    );
  }

  @override
  AsyncApplicationResponse<CredentialPresentationRequest> generatePresentation({
    required String requestUri,
  }) {
    return handleResponse(
      request: () => dio.get(
        requestUri,
      ),
      responseDataConverter: (data) => {'jwt': data},
      payloadMapper: (payload) {
        final jwt = payload['jwt'] as String;
        final jwtComposer = jwtService.manageJWT(jwt);
        final nonce = jwtComposer.claims['nonce'] as String;
        final clientId = jwtComposer.claims['client_id'] as String;
        final responseUri = jwtComposer.claims['response_uri'] as String;
        final state = jwtComposer.claims['state'] as String;
        final presentationDefinition = jwtComposer.claims['presentation_definition'] as Map<String, dynamic>;
        final descriptors = presentationDefinition['input_descriptors'] as List<dynamic>;
        final firstDescriptor = descriptors.first as Map<String, dynamic>;
        final constraints = firstDescriptor['constraints'] as Map<String, dynamic>;
        final fields = constraints['fields'] as List<dynamic>;

        final credentialField = fields.getCredentialField();
        final credentialInfos = fields.getCredentialInfos();

        return CredentialPresentationRequest(
          nonce: nonce,
          clientId: clientId,
          responseUri: responseUri,
          presentationDefinition: presentationDefinition,
          state: state,
          credential: credentialField,
          requiredInformation: credentialInfos,
        );
      },
    );
  }

  @override
  AsyncApplicationResponse<void> presentCredential({
    required String uri,
    required String vpToken,
    required String state,
    required Map<String, dynamic> presentationDefinition,
  }) async {
    log(vpToken);
    log(presentationDefinition.toString());
    return handleResponse(
      request: () => dio.post(
        uri,
        data: FormData.fromMap(
          {
            'vp_token': vpToken,
            'state': state,
            //'presentation_definition': presentationDefinition.toString(),
          },
        ),
      ),
      payloadMapper: (payload) {},
    );
  }
}

extension on List<dynamic> {
  String getCredentialField() {
    final credentialValue = getWhere((e) => (e as Map<String, dynamic>)['filter'] != null);
    return ((credentialValue as Map<String, dynamic>)['filter'] as Map<String, dynamic>)['const'] as String;
  }

  List<String> getCredentialInfos() {
    final credentialValue = where((e) => (e as Map<String, dynamic>)['filter'] == null);
    return credentialValue
        .map((e) => (((e as Map<String, dynamic>)['path'] as List<dynamic>).first as String).split('.').last)
        .toList();
  }
}

extension on VerifiableCredentialResponse {
  VerifiableCredential toVerifiableCredential(
    JWTService jwtService, {
    required String subject,
    required SupportedCredentialDisplayInformation display,
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
      disclosures.add((key, value, null).toKnownVerifiableCredentialInformation);
    }
    return disclosures.toList();
  }
}

extension on (String, dynamic, String?) {
  KnownVerifiableCredentialInformation get toKnownVerifiableCredentialInformation {
    final key = this.$1;
    final value = this.$2;
    final type = KnownVerifiableCredentialInformationType.fromApiValue(key);
    final basicKeyValue = VerifiableDisclosure(name: key, value: value.toString());
    return KnownVerifiableCredentialInformation(type: type, basicKeyValue: basicKeyValue, disclosure: this.$3);
    /* if (type == KnownVerifiableCredentialInformationType.paymentAnalysis) {
      final asMap = value is Map<String, dynamic> ? value : jsonDecode(value as String) as Map<String, dynamic>;
      final paymentAnalysis = PaymentAnalysisInformation.fromJson(asMap);
      return KnownVerifiableCredentialInformation(type: type, paymentAnalysis: paymentAnalysis);
    } else if (type == KnownVerifiableCredentialInformationType.accountDataAnalysis) {
      final asMap = value is Map<String, dynamic> ? value : jsonDecode(value as String) as Map<String, dynamic>;
      final values = asMap['_sd'] as List<dynamic>;
      final decoded = values.map((e) => (e as String).decodeDisclosure).toList();
      ApplicationLogger.instance.logApplicationEvent(decoded);
      final accountDataAnalysis = AccountDataAnalysis.fromJson(asMap);
      return KnownVerifiableCredentialInformation(type: type, accountDataAnalysis: accountDataAnalysis);
    } else {
      final basicKeyValue = VerifiableDisclosure(name: key, value: value.toString());
      return KnownVerifiableCredentialInformation(type: type, basicKeyValue: basicKeyValue);
    } */
  }
}

extension on String {
  List<KnownVerifiableCredentialInformation> get filterDisclosuresFromJWT {
    final rawDisclosures = [...split('~')]..removeWhere((e) => e.isEmpty);
    if (rawDisclosures.length < 2) return <KnownVerifiableCredentialInformation>[];
    rawDisclosures.removeAt(0);
    return rawDisclosures.map((e) => e.decodeDisclosure).toList();
  }

  KnownVerifiableCredentialInformation get decodeDisclosure {
    final stringToBase64 = utf8.fuse(base64);
    final padding = length % 4;
    final thisPadded = padding == 0 ? this : this + ('=' * (4 - padding));
    final base = stringToBase64.decode(thisPadded);
    final (key, value) = _getKeyValue(base);
    return (key, value, this).toKnownVerifiableCredentialInformation;
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
  }

  String _removeQuotes(String value) {
    if (value.startsWith('"') && value.endsWith('"')) {
      return value.substring(1, value.length - 1);
    }
    return value;
  }
}
