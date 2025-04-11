import 'package:birex/data/data.dart';
import 'package:hive_flutter/hive_flutter.dart';

extension on Map<dynamic, dynamic> {
  Map<String, dynamic> get hiveCast {
    return map((key, value) {
      final castedValue = value is Map<dynamic, dynamic>
          ? value.hiveCast
          : value is List<dynamic>
              ? value.hiveCast
              : value;
      return MapEntry(key as String, castedValue);
    });
  }
}

extension on List<dynamic> {
  List<dynamic> get hiveCast {
    return map((value) => value is Map<dynamic, dynamic> ? value.hiveCast : value).toList();
  }
}

class VerifiableCredentialHiveModel {
  VerifiableCredentialHiveModel({
    required this.credential,
  });

  factory VerifiableCredentialHiveModel.fromModel(VerifiableCredential model) {
    return VerifiableCredentialHiveModel(
      credential: model,
    );
  }

  factory VerifiableCredentialHiveModel.fromJson(Map<dynamic, dynamic> json) {
    final cnonce = json[cnonceStoreKey] as String;
    final cnonceExpiresIn = json[cnonceExpiresInStoreKey] as int;
    final subject = json[subjectStoreKey] as String;
    final credential = json[credentialStoreKey] as String;
    final unknownDisclosures = json[unknownDisclosuresStoreKey] as List<dynamic>;
    final unknownClaims = json[unknownClaimsStoreKey] as List<dynamic>;
    final expiresAt = DateTime.parse(json[expiresAtStoreKey] as String);
    final vcResponse = VerifiableCredentialResponse(
      credential: credential,
      cNonce: cnonce,
      cNonceExpiresIn: cnonceExpiresIn,
    );
    final configurationPayload = (json[configurationStoreKey] as Map<dynamic, dynamic>?)?.hiveCast;
    final configuration =
        configurationPayload != null ? SupportedCredentialConfiguration.fromJson(configurationPayload) : null;
    final knownInfo = _mapKnownInfo(json[knownInfoStoreKey] as List<dynamic>);
    return VerifiableCredentialHiveModel(
      credential: VerifiableCredential(
        credentialResponse: vcResponse,
        credentialConfiguration: configuration,
        subject: subject,
        expiresAt: expiresAt,
        knownCredentialInfo: knownInfo,
        unknownClaims: _mapUnknownClaims(unknownClaims),
        unknownDisclosures: _mapUnknownDisclosures(unknownDisclosures),
      ),
    );
  }

  static const cnonceStoreKey = 'c_nonce';
  static const cnonceExpiresInStoreKey = 'c_nonce_expires_in';
  static const subjectStoreKey = 'subject';
  static const credentialStoreKey = 'credential';
  static const configurationStoreKey = 'display';
  static const unknownClaimsStoreKey = 'unknown_claims';
  static const unknownDisclosuresStoreKey = 'unknown_disclosures';
  static const expiresAtStoreKey = 'expiresAt';
  static const knownInfoStoreKey = 'known_info';

  static List<VerifiableDisclosure> _mapUnknownClaims(List<dynamic> values) {
    final results = <VerifiableDisclosure>[];
    for (final value in values) {
      final asMap = value as Map<dynamic, dynamic>;
      final item = VerifiableDisclosure(
        name: asMap['name'] as String,
        value: asMap['value'] as String,
      );
      results.add(item);
    }
    return results;
  }

  static List<VerifiableDisclosure> _mapUnknownDisclosures(List<dynamic> values) {
    final results = <VerifiableDisclosure>[];
    for (final value in values) {
      final asMap = value as Map<dynamic, dynamic>;
      final item = VerifiableDisclosure(
        name: asMap['name'] as String,
        value: asMap['value'] as String,
      );
      results.add(item);
    }
    return results;
  }

  static List<KnownVerifiableCredentialInformation> _mapKnownInfo(List<dynamic> values) {
    final results = <KnownVerifiableCredentialInformation>[];
    for (final value in values) {
      final asMap = value as Map<dynamic, dynamic>;
      final item = KnownVerifiableCredentialInformation.fromJson(asMap.hiveCast);
      results.add(item);
    }
    return results;
  }

  final VerifiableCredential credential;

  Map<dynamic, dynamic> toJson() {
    final knownInfo = credential.knownCredentialInfo;
    return {
      subjectStoreKey: credential.subject,
      cnonceStoreKey: credential.credentialResponse.cNonce,
      cnonceExpiresInStoreKey: credential.credentialResponse.cNonceExpiresIn,
      credentialStoreKey: credential.credentialResponse.credential,
      expiresAtStoreKey: credential.expiresAt.toIso8601String(),
      //
      if (credential.credentialConfiguration != null)
        configurationStoreKey: credential.credentialConfiguration!.toJson(),
      unknownClaimsStoreKey: credential.unknownClaims.map((e) => e.toJson()).toList(),
      unknownDisclosuresStoreKey: credential.unknownDisclosures.map((e) => e.toJson()).toList(),
      if (knownInfo.isNotEmpty) knownInfoStoreKey: knownInfo.map((e) => e.toJson()).toList(),
    };
  }
}

class VerifiableCredentialHiveModelAdapter extends TypeAdapter<VerifiableCredentialHiveModel> {
  @override
  final typeId = 16;

  @override
  VerifiableCredentialHiveModel read(BinaryReader reader) {
    final values = reader.readMap();
    return VerifiableCredentialHiveModel.fromJson(values);
  }

  @override
  void write(BinaryWriter writer, VerifiableCredentialHiveModel obj) {
    writer.writeMap(obj.toJson());
  }
}
