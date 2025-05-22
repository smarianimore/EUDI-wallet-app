import 'dart:convert';
import 'dart:developer';

import 'package:birex/service/encryption/encryption_key_provider.dart';
import 'package:convert/convert.dart';
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
    //TODO: Definire come gestire la scadenza del token

    return DateTime.now().add(const Duration(days: 1));
    // final payload = jwt.payload as Map<String, dynamic>;
    // final expiresIn = payload['exp'] as int;
    // return DateTime.fromMillisecondsSinceEpoch(expiresIn * 1000);
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

  Map<String, dynamic> get _jwtProofIssuanceHeaders => {
        'typ': 'openid4vci-proof+jwt',
        'alg': 'ES256',
        'jwk': walletKey.publicKey.jwk,
      };

  Map<String, dynamic> get _jwtPresentationHeaders => {
        'typ': 'kb+jwt',
        'alg': 'ES256',
      };

  Map<String, dynamic> _jwtPresentationBody({
    required String audience,
    required String nonce,
  }) {
    return {
      'aud': audience,
      'iat': DateTime.now().millisecondsSinceEpoch,
      'nonce': nonce,
    };
  }

  Map<String, dynamic> _jwtProofIssuanceBody({
    required String issuer,
    required String nonce,
  }) {
    return {
      'aud': issuer,
      'iat': DateTime.now().millisecondsSinceEpoch,
      'nonce': nonce,
    };
  }

  String createPresentationKeyBindingJWT({
    required String audience,
    required String nonce,
  }) {
    final header = _jwtPresentationHeaders;
    final body = _jwtPresentationBody(audience: audience, nonce: nonce);
    final encodedHeader = base64Url.encode(utf8.encode(jsonEncode(header)));
    final encodedBody = base64Url.encode(utf8.encode(jsonEncode(body)));
    final data = '${_unppaddedJwtContent(encodedHeader)}.${_unppaddedJwtContent(encodedBody)}';
    final signed = signature(walletKey, utf8.encode(data));
    final encodedSignature = base64Url.encode(utf8.encode(signed.toString()));
    final completeJwt = '$data.${_unppaddedJwtContent(encodedSignature)}';
    if (kDebugMode) {
      log('JWT: $completeJwt');
      log('PrivateKey (D): ${walletKey.D}');
      log('PrivateKey (HEX) ${walletKey.toHex()}');
      log('PrivateKey (Curve) ${walletKey.curve}');
    }
    final verified = verify(walletKey.publicKey, utf8.encode(completeJwt), signed);
    if (!verified) {
      log('Signature verification failed');
    }
    return completeJwt;
  }

  String createIssuanceSignedWalletProofJWT({
    required String issuer,
    required String nonce,
  }) {
    final header = _jwtProofIssuanceHeaders;
    final body = _jwtProofIssuanceBody(issuer: issuer, nonce: nonce);
    final encodedHeader = base64Url.encode(utf8.encode(jsonEncode(header)));
    final encodedBody = base64Url.encode(utf8.encode(jsonEncode(body)));
    final data = '${_unppaddedJwtContent(encodedHeader)}.${_unppaddedJwtContent(encodedBody)}';
    final signed = signature(walletKey, utf8.encode(data));
    final encodedSignature = base64Url.encode(utf8.encode(signed.toString()));
    final completeJwt = '$data.${_unppaddedJwtContent(encodedSignature)}';
    if (kDebugMode) {
      log('JWT: $completeJwt');
      log('PrivateKey (D): ${walletKey.D}');
      log('PrivateKey (HEX) ${walletKey.toHex()}');
      log('PrivateKey (Curve) ${walletKey.curve}');
    }
    final verified = verify(walletKey.publicKey, utf8.encode(completeJwt), signed);
    if (!verified) {
      log('Signature verification failed');
    }
    return completeJwt;
  }

  String _unppaddedJwtContent(String value) {
    if (value.endsWith('==')) return value.substring(0, value.length - 2);
    if (value.endsWith('=')) return value.substring(0, value.length - 1);
    return value;
  }
}

extension on PublicKey {
  Map<String, dynamic> get jwk {
    return {
      'kty': 'EC',
      'crv': 'P-256',
      'x': _base64UrlNoPadding(_unsignedIntToBytes(X, 32)),
      'y': _base64UrlNoPadding(_unsignedIntToBytes(Y, 32)),
    };
  }

  String _base64UrlNoPadding(Uint8List input) {
    return base64Url.encode(input).replaceAll('=', '');
  }

  Uint8List _unsignedIntToBytes(BigInt value, int length) {
    final bytes = value.toUnsigned(8 * length).toRadixString(16).padLeft(length * 2, '0');
    return Uint8List.fromList(hex.decode(bytes));
  }
}
