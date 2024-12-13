import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keyfull/data/model/verifiable_credentials/supportedcredentialconfiguration.dart';

part 'credentialissuerconfiguration.freezed.dart';
part 'credentialissuerconfiguration.g.dart';

@freezed
class CredentialIssuerConfiguration with _$CredentialIssuerConfiguration {
  factory CredentialIssuerConfiguration({
    required String credentialIssuer,
    required List<String> authorizationServers,
    required String credentialEndpoint,
    required CredentialIssuerDisplayInformation display,
    required Map<String, SupportedCredentialConfiguration> credentialConfigurationsSupported,
  }) = _CredentialIssuerConfiguration;

  factory CredentialIssuerConfiguration.fromJson(Map<String, dynamic> json) =>
      _$CredentialIssuerConfigurationFromJson(json);
}

@freezed
class CredentialIssuerDisplayInformation with _$CredentialIssuerDisplayInformation {
  factory CredentialIssuerDisplayInformation({
    required String name,
    required String location,
    required String locale,
    required String description,
  }) = _CredentialIssuerDisplayInformation;

  factory CredentialIssuerDisplayInformation.fromJson(Map<String, dynamic> json) =>
      _$CredentialIssuerDisplayInformationFromJson(json);
}
