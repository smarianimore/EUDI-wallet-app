import 'dart:convert';

import 'package:birex/data/data.dart';
import 'package:birex/service/storage/model/verifiable_credential_adapter.dart';
import 'package:birex/service/storage/model/wallet_key_adapter.dart';
import 'package:birex/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveController {
  HiveController._();

  static final _singleton = HiveController._();

  static HiveController get instance => _singleton;

  late final Box<VerifiableCredentialHiveModel> verifiableCredentialBox;
  late final Box<WalletKeyCertificate> certificateBox;

  Future<void> init() async {
    await Hive.initFlutter();
    Hive
      ..registerAdapter(VerifiableCredentialHiveModelAdapter())
      ..registerAdapter(WalletKeyCertificateAdapter());
    final encryptionKey = Uint8List.fromList(utf8.encode(EnvVariables.walletEncryptionKey));
    final cypher = HiveAesCipher(encryptionKey.sublist(0, 32));
    verifiableCredentialBox = await Hive.openBox<VerifiableCredentialHiveModel>(
      'verifiable_credentials',
      encryptionCipher: cypher,
    );
    certificateBox = await Hive.openBox<WalletKeyCertificate>(
      'wallet_key_certificate',
      encryptionCipher: cypher,
    );
  }

  /* Verifiable credentials */

  Future<void> saveVerifiableCredential(VerifiableCredential credential) async {
    return verifiableCredentialBox.put(credential.subject, VerifiableCredentialHiveModel.fromModel(credential));
  }

  ValueListenable<Box<VerifiableCredentialHiveModel>> get verifiableCredentials {
    return verifiableCredentialBox.listenable();
  }

  /* Certificate */

  Future<void> saveCertificate(List<int> certificate) async {
    return certificateBox.put('certificate', WalletKeyCertificate(certificate: certificate));
  }

  Future<bool> get hasCertificate async {
    return certificateBox.containsKey('certificate');
  }

  Future<WalletKeyCertificate> getCertificate() async {
    return certificateBox.get('certificate')!;
  }

  Future<void> clear() async {
    await verifiableCredentialBox.clear();
  }

  Future<void> reset() async {
    await Hive.deleteBoxFromDisk('verifiable_credentials');
    await Hive.deleteFromDisk();
  }
}
