import 'package:freezed_annotation/freezed_annotation.dart';

part 'issuerauthorizationserverconfiguration.freezed.dart';
part 'issuerauthorizationserverconfiguration.g.dart';

@freezed
class IssuerAuthorizationServerConfiguration with _$IssuerAuthorizationServerConfiguration {
  @JsonSerializable(explicitToJson: true)
  factory IssuerAuthorizationServerConfiguration({
    required String issuer,
    @JsonKey(name: 'authorization_endpoint') required String authorizationEndpoint,
    @JsonKey(name: 'token_endpoint') required String tokenEndpoint,
    @JsonKey(name: 'jwks_uri') required String jwksUri,
    @JsonKey(name: 'grant_types_supported') required List<String> grantTypesSupported,
  }) = _IssuerAuthorizationServerConfiguration;

  factory IssuerAuthorizationServerConfiguration.fromJson(Map<String, dynamic> json) =>
      _$IssuerAuthorizationServerConfigurationFromJson(json);
}
