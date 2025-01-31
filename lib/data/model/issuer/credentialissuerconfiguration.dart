import 'package:birex/data/model/verifiable_credentials/supportedcredentialconfiguration.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentialissuerconfiguration.freezed.dart';
part 'credentialissuerconfiguration.g.dart';

@freezed
class CredentialIssuerConfiguration with _$CredentialIssuerConfiguration {
  @JsonSerializable(explicitToJson: true)
  factory CredentialIssuerConfiguration({
    @JsonKey(name: 'credential_issuer') required String credentialIssuer,
    @JsonKey(name: 'authorization_servers') required List<String> authorizationServers,
    @JsonKey(name: 'credential_endpoint') required String credentialEndpoint,
    required List<CredentialIssuerDisplayInformation> display,
    @JsonKey(name: 'credential_configurations_supported')
    required Map<String, SupportedCredentialConfiguration> credentialConfigurationsSupported,
  }) = _CredentialIssuerConfiguration;

  factory CredentialIssuerConfiguration.fromJson(Map<String, dynamic> json) =>
      _$CredentialIssuerConfigurationFromJson(json);
}

@freezed
class CredentialIssuerDisplayInformation with _$CredentialIssuerDisplayInformation {
  factory CredentialIssuerDisplayInformation({
    required String name,
    String? location,
    String? locale,
    String? description,
    CredentialIssuerLogoInformation? logo,
  }) = _CredentialIssuerDisplayInformation;

  factory CredentialIssuerDisplayInformation.fromJson(Map<String, dynamic> json) =>
      _$CredentialIssuerDisplayInformationFromJson(json);
}

@freezed
class CredentialIssuerLogoInformation with _$CredentialIssuerLogoInformation {
  factory CredentialIssuerLogoInformation({
    required String uri,
  }) = _CredentialIssuerLogoInformation;

  factory CredentialIssuerLogoInformation.fromJson(Map<String, dynamic> json) =>
      _$CredentialIssuerLogoInformationFromJson(json);
}
