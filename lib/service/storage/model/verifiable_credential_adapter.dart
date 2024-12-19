import 'package:birex/data/model/verifiable_credentials/supportedcredentialconfiguration.dart';
import 'package:hive_flutter/hive_flutter.dart';

class VerifiableCredentialHiveModel {
  VerifiableCredentialHiveModel({
    required this.subject,
    required this.cNonce,
    required this.cNonceExpiresIn,
    required this.credential,
  });

  factory VerifiableCredentialHiveModel.fromJson(Map<dynamic, dynamic> json) {
    return VerifiableCredentialHiveModel(
      subject: json['subject'] as String,
      cNonce: json['c_nonce'] as String,
      cNonceExpiresIn: json['c_nonce_expires_in'] as int,
      credential: json['credential'] as String,
    );
  }

  factory VerifiableCredentialHiveModel.fromModel(VerifiableCredential model) {
    return VerifiableCredentialHiveModel(
      subject: model.subject,
      cNonce: model.credentialResponse.cNonce,
      cNonceExpiresIn: model.credentialResponse.cNonceExpiresIn,
      credential: model.credentialResponse.credential,
    );
  }

  final String subject;
  final String cNonce;
  final int cNonceExpiresIn;
  final String credential;

  Map<dynamic, dynamic> toJson() {
    return {
      'subject': subject,
      'c_nonce': cNonce,
      'c_nonce_expires_in': cNonceExpiresIn,
      'credential': credential,
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
