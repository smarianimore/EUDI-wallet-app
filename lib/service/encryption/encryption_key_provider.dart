import 'package:birex/service/storage/hive/hive_controller.dart';
import 'package:elliptic/elliptic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'encryption_key_provider.g.dart';

@Riverpod(keepAlive: true)
Future<PrivateKey> walletPrivateKey(Ref ref) async {
  return WallerEncryptionKeyManager().provideWalletKey;
}

class WallerEncryptionKeyManager {
  final hiveController = HiveController.instance;

  Future<PrivateKey> get provideWalletKey async {
    final hasLocalCertificate = await hiveController.hasCertificate;
    if (!hasLocalCertificate) {
      final keypair = _generateKeyPair;
      await hiveController.saveCertificate(keypair.bytes);
      return keypair;
    }
    final certificate = await hiveController.getCertificate();
    final bytes = certificate.certificate;
    return PrivateKey.fromBytes(getP256(), bytes);
  }

  PrivateKey get _generateKeyPair {
    final ec = getP256();
    final keyPair = ec.generatePrivateKey();
    return keyPair;
  }
}
