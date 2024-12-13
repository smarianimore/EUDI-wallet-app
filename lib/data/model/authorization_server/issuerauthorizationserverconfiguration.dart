import 'package:freezed_annotation/freezed_annotation.dart';

part 'issuerauthorizationserverconfiguration.freezed.dart';
part 'issuerauthorizationserverconfiguration.g.dart';

@freezed
class IssuerAuthorizationServerConfiguration with _$IssuerAuthorizationServerConfiguration {
  factory IssuerAuthorizationServerConfiguration({
    required String issuer,
    required String authorizationEndpoint,
    required String tokenEndpoint,
    required String userinfoEndpoint,
    required String jwksUri,
    required List<String> grantTypesSupported,
  }) = _IssuerAuthorizationServerConfiguration;

  factory IssuerAuthorizationServerConfiguration.fromJson(Map<String, dynamic> json) =>
      _$IssuerAuthorizationServerConfigurationFromJson(json);
}
