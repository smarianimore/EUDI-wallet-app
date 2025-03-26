import 'dart:convert';
import 'dart:developer';

import 'package:birex/service/encryption/encryption_key_provider.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:ecdsa/ecdsa.dart';
import 'package:elliptic/elliptic.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'jwt_service.g.dart';

@riverpod
JWTService jwtService(Ref ref) {
  return JWTService();
}

class JWTService {
  JWTInspector manageJWT(String jwt) => JWTInspector(jwt: JWT.decode(jwt));
}

class JWTInspector {
  JWTInspector({required this.jwt});

  final JWT jwt;

  DateTime get expirationDate {
    final payload = jwt.payload as Map<String, dynamic>;
    final expiresIn = payload['exp'] as int;
    return DateTime.fromMillisecondsSinceEpoch(expiresIn * 1000);
  }

  Map<String, dynamic> get claims {
    final payload = jwt.payload as Map<String, dynamic>;
    final focusedClaims = {...payload}
      ..remove('iss')
      ..remove('sub')
      ..remove('vct')
      ..remove('iat')
      ..remove('exp')
      ..remove('_sd')
      ..remove('_sd_alg')
      ..remove('cnf');
    return focusedClaims;
  }

  Map<String, dynamic> get payload => jwt.payload as Map<String, dynamic>;
}

@Riverpod(keepAlive: true)
Future<WalletProofBuilder> jwtBuilder(Ref ref) async {
  final walletKey = await ref.read(walletPrivateKeyProvider.future);
  return WalletProofBuilder(walletKey: walletKey);
}

class WalletProofBuilder {
  WalletProofBuilder({required this.walletKey});

  final PrivateKey walletKey;

  Map<String, dynamic> get _jwtProofHeaders => {
        'typ': 'openid4vci-proof+jwt',
        'alg': 'ES256',
        'jwk': {
          'kty': 'EC',
          'crv': 'P-256',
          'x': walletKey.publicKey.X.toString(),
          'y': walletKey.publicKey.Y.toString(),
        },
      };

  Map<String, dynamic> _jwtProofBody({
    required String issuer,
    required String nonce,
  }) {
    return {
      'aud': issuer,
      'iat': DateTime.now().millisecondsSinceEpoch,
      'nonce': nonce,
    };
  }

  String createSignedWalletProofJWT({
    required String issuer,
    required String nonce,
  }) {
    final header = _jwtProofHeaders;
    final body = _jwtProofBody(issuer: issuer, nonce: nonce);
    final encodedHeader = base64Url.encode(jsonEncode(header).codeUnits);
    final encodedBody = base64Url.encode(jsonEncode(body).codeUnits);
    final data = '${_base64Unpadded(encodedHeader)}.${_base64Unpadded(encodedBody)}';
    final signed = signature(walletKey, data.codeUnits);
    final encodedSignature = base64Url.encode(signed.toString().codeUnits);
    final completeJwt = '$data.${_base64Unpadded(encodedSignature)}';
    if (kDebugMode) {
      log('JWT: $completeJwt');
      log('PrivateKey (D): ${walletKey.D}');
      log('PrivateKey (HEX) ${walletKey.toHex()}');
      log('PrivateKey (Curve) ${walletKey.curve}');
    }
    final verified = verify(walletKey.publicKey, completeJwt.codeUnits, signed);
    if (!verified) {
      log('Signature verification failed');
    }
    return completeJwt;
  }

  String _base64Unpadded(String value) {
    if (value.endsWith('==')) return value.substring(0, value.length - 2);
    if (value.endsWith('=')) return value.substring(0, value.length - 1);
    return value;
  }
}
