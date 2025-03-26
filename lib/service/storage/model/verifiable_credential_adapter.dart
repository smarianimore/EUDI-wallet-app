import 'package:birex/data/data.dart';
import 'package:hive_flutter/hive_flutter.dart';

extension on Map<dynamic, dynamic> {
  Map<String, dynamic> get hiveCast {
    return map((key, value) {
      final castedValue = value is Map<dynamic, dynamic> ? value.hiveCast : value;
      return MapEntry(key as String, castedValue);
    });
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
    final cnonce = json['c_nonce'] as String;
    final cnonceExpiresIn = json['c_nonce_expires_in'] as int;
    final subject = json['subject'] as String;
    final credential = json['credential'] as String;
    final disclosures = json['disclosures'] as List<dynamic>;
    final claims = json['claims'] as List<dynamic>;
    final expiresAt = DateTime.parse(json['expiresAt'] as String);
    final vcResponse = VerifiableCredentialResponse(
      credential: credential,
      cNonce: cnonce,
      cNonceExpiresIn: cnonceExpiresIn,
    );
    final displayPayload = (json['display'] as Map<dynamic, dynamic>?)?.hiveCast;
    final paymentAnalysis = (json['paymentAnalysis'] as Map<dynamic, dynamic>?)?.hiveCast;
    final display = displayPayload != null ? SupportedCredentialDisplayInformation.fromJson(displayPayload) : null;
    return VerifiableCredentialHiveModel(
      credential: VerifiableCredential(
        credentialResponse: vcResponse,
        display: display,
        subject: subject,
        claims: _mapClaims(claims),
        disclosures: _mapDisclosures(disclosures),
        expiresAt: expiresAt,
        paymentAnalysis: paymentAnalysis != null ? PaymentAnalysisInformation.fromJson(paymentAnalysis) : null,
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
      'expiresAt': DateTime.now().toIso8601String(),
      if (credential.display != null) 'display': credential.display!.toJson(),
      if (credential.paymentAnalysis != null) 'paymentAnalysis': credential.paymentAnalysis!.toJson(),
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
