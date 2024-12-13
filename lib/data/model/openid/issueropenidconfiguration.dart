import 'package:freezed_annotation/freezed_annotation.dart';

part 'issueropenidconfiguration.freezed.dart';
part 'issueropenidconfiguration.g.dart';

@freezed
class IssuerOpenIDConfiguration with _$IssuerOpenIDConfiguration {
  factory IssuerOpenIDConfiguration({
    required String issuer,
    required String authorizationEndpoint,
    required String tokenEndpoint,
    required String userinfoEndpoint,
    required String jwksUri,
    required List<String> claimsSupported,
  }) = _IssuerOpenIDConfiguration;

  factory IssuerOpenIDConfiguration.fromJson(Map<String, dynamic> json) => _$IssuerOpenIDConfigurationFromJson(json);
}
