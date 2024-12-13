import 'package:freezed_annotation/freezed_annotation.dart';

part 'issueropenidconfiguration.freezed.dart';
part 'issueropenidconfiguration.g.dart';

@freezed
class IssuerOpenIDConfiguration with _$IssuerOpenIDConfiguration {
  factory IssuerOpenIDConfiguration({
    required String issuer,
    @JsonKey(name: 'authorization_endpoint') required String authorizationEndpoint,
    @JsonKey(name: 'token_endpoint') required String tokenEndpoint,
    @JsonKey(name: 'userinfo_endpoint') required String userInfoEndpoint,
    @JsonKey(name: 'jwks_uri') required String jwksUri,
    @JsonKey(name: 'claims_supported') required List<String> claimsSupported,
  }) = _IssuerOpenIDConfiguration;

  factory IssuerOpenIDConfiguration.fromJson(Map<String, dynamic> json) => _$IssuerOpenIDConfigurationFromJson(json);
}
