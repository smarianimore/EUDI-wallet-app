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

/* 

import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/export.dart';
import 'package:convert/convert.dart';
 
void main() {
  final ecKeyPair = generateEcKeyPair();
  final publicKey = ecKeyPair.publicKey as ECPublicKey;
  final privateKey = ecKeyPair.privateKey as ECPrivateKey;
 
  final publicJwk = ecPublicKeyToJwk(publicKey, kid: "ec-key-1");
  final privateJwk = ecPrivateKeyToJwk(privateKey, publicKey, kid: "ec-key-1");
 
  print("EC Public JWK:");
  print(const JsonEncoder.withIndent('  ').convert(publicJwk));
 
  print("\nEC Private JWK:");
  print(const JsonEncoder.withIndent('  ').convert(privateJwk));
}
 
AsymmetricKeyPair<PublicKey, PrivateKey> generateEcKeyPair() {
  final ecDomain = ECDomainParameters('prime256v1'); // P-256 = secp256r1
 
  final keyParams = ECKeyGeneratorParameters(ecDomain);
  final random = FortunaRandom()
    ..seed(KeyParameter(Uint8List.fromList(List.generate(32, (_) => 1))));
 
  final generator = ECKeyGenerator()
    ..init(ParametersWithRandom(keyParams, random));
 
  return generator.generateKeyPair();
}
 
Map<String, dynamic> ecPublicKeyToJwk(ECPublicKey publicKey, {String alg = 'ES256', String? kid}) {
  final x = publicKey.Q!.x!.toBigInteger()!;
  final y = publicKey.Q!.y!.toBigInteger()!;
 
  return {
    "kty": "EC",
    "crv": "P-256",
    "x": base64UrlNoPadding(_unsignedIntToBytes(x, 32)),
    "y": base64UrlNoPadding(_unsignedIntToBytes(y, 32)),
    "alg": alg,
    "use": "sig",
    if (kid != null) "kid": kid,
  };
}
 
Map<String, dynamic> ecPrivateKeyToJwk(ECPrivateKey privateKey, ECPublicKey publicKey,
    {String alg = 'ES256', String? kid}) {
  final jwk = ecPublicKeyToJwk(publicKey, alg: alg, kid: kid);
  jwk["d"] = base64UrlNoPadding(_unsignedIntToBytes(privateKey.d!, 32));
  return jwk;
}
 
String base64UrlNoPadding(Uint8List input) {
  return base64Url.encode(input).replaceAll('=', '');
}
 
Uint8List _unsignedIntToBytes(BigInt value, int length) {
  final bytes = value.toUnsigned(8 * length).toRadixString(16).padLeft(length * 2, '0');
  return Uint8List.fromList(hex.decode(bytes));
}

 */