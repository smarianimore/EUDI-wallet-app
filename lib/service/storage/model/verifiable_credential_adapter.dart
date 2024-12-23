import 'package:birex/data/model/verifiable_credentials/supportedcredentialconfiguration.dart';
import 'package:hive_flutter/hive_flutter.dart';

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
    final cnonce = json['c_nonce'] as String;
    final cnonceExpiresIn = json['c_nonce_expires_in'] as int;
    final subject = json['subject'] as String;
    final credential = json['credential'] as String;
    final disclosures = json['disclosures'] as List<dynamic>;
    final claims = json['claims'] as List<dynamic>;
    final vcResponse = VerifiableCredentialResponse(
      credential: credential,
      cNonce: cnonce,
      cNonceExpiresIn: cnonceExpiresIn,
    );
    return VerifiableCredentialHiveModel(
      credential: VerifiableCredential(
        credentialResponse: vcResponse,
        subject: subject,
        claims: _mapClaims(claims),
        disclosures: _mapDisclosures(disclosures),
      ),
    );
  }

  static List<VerifiableCredentialClaim> _mapClaims(List<dynamic> values) {
    final results = <VerifiableCredentialClaim>[];
    for (final value in values) {
      final asMap = value as Map<dynamic, dynamic>;
      final item = VerifiableCredentialClaim(
        name: asMap['name'] as String,
        value: asMap['value'] as String,
      );
      results.add(item);
    }
    return results;
  }

  static List<VerifiableDisclosure> _mapDisclosures(List<dynamic> values) {
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

  final VerifiableCredential credential;

  Map<dynamic, dynamic> toJson() {
    return {
      'subject': credential.subject,
      'c_nonce': credential.credentialResponse.cNonce,
      'c_nonce_expires_in': credential.credentialResponse.cNonceExpiresIn,
      'credential': credential.credentialResponse.credential,
      'claims': credential.claims.map((e) => e.toJson()).toList(),
      'disclosures': credential.disclosures.map((e) => e.toJson()).toList(),
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
