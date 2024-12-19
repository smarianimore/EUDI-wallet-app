import 'package:birex/data/model/verifiable_credentials/supportedcredentialconfiguration.dart';
import 'package:birex/service/storage/model/verifiable_credential_adapter.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveController {
  HiveController._();

  static final _singleton = HiveController._();

  static HiveController get instance => _singleton;

  late final Box<VerifiableCredentialHiveModel> verifiableCredentialBox;

  Future<void> init() async {
    await Hive.initFlutter();
    await clear();
    Hive.registerAdapter(VerifiableCredentialHiveModelAdapter());
    verifiableCredentialBox = await Hive.openBox<VerifiableCredentialHiveModel>('verifiable_credentials');
  }

  Future<void> saveVerifiableCredential(VerifiableCredential credential) async {
    return verifiableCredentialBox.put(credential.subject, VerifiableCredentialHiveModel.fromModel(credential));
  }

  Future<void> clear() async {
    return Hive.deleteFromDisk();
  }

  ValueListenable<Box<VerifiableCredentialHiveModel>> get verifiableCredentials {
    return verifiableCredentialBox.listenable();
  }
}
