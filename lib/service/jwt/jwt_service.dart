import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'jwt_service.g.dart';

@riverpod
JWTService jwtService(Ref ref) {
  return JWTService();
}

class JWTService {
  JWTInspector manageJWT(String jwt) => JWTInspector(jwt: JWT.decode(jwt));

  JWTBuilder builder() => JWTBuilder();
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
}

class JWTBuilder {
  JWT buildVCLoginJWT({
    required String issuer,
    required String nonce,
    required String kty,
    required String crv,
    required String x,
    required String y,
  }) {
    return JWT(
      {
        'aud': issuer,
        'iat': DateTime.now().millisecondsSinceEpoch,
        'nonce': nonce,
      },
      issuer: issuer,
      header: {
        'typ': 'openid4vci-proof+jwt',
        'alg': 'ES256',
        'jwk': {
          'kty': kty,
          'crv': crv,
          'x': x,
          'y': y,
        },
      },
    );
  }

  String signJWT(JWT jwt, String x) {
    return jwt.sign(SecretKey(x));
  }
}
