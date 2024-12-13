import 'package:freezed_annotation/freezed_annotation.dart';

part 'supportedcredentialconfiguration.freezed.dart';
part 'supportedcredentialconfiguration.g.dart';

@freezed
class SupportedCredentialConfiguration with _$SupportedCredentialConfiguration {
  factory SupportedCredentialConfiguration({
    required String scope,
    required Map<String, dynamic> claims,
    required List<String> cryptographicBindingMethodsSupported,
    required SupportedCredentialDisplayInformation display,
    required List<String> credentialSigningAlgValuesSupported,
    required String format,
    required String vct,
    required Map<String, dynamic> proofTypesSupported,
  }) = _SupportedCredentialConfiguration;

  factory SupportedCredentialConfiguration.fromJson(Map<String, dynamic> json) =>
      _$SupportedCredentialConfigurationFromJson(json);
}

@freezed
class SupportedCredentialDisplayInformation with _$SupportedCredentialDisplayInformation {
  factory SupportedCredentialDisplayInformation({
    required String name,
    required String locale,
    required String description,
    required String backgroudColor,
    required String textColor,
    required SupportedCredentialIssuerLogo logo,
  }) = _SupportedCredentialDisplayInformation;

  factory SupportedCredentialDisplayInformation.fromJson(Map<String, dynamic> json) =>
      _$SupportedCredentialDisplayInformationFromJson(json);
}

@freezed
class SupportedCredentialIssuerLogo with _$SupportedCredentialIssuerLogo {
  factory SupportedCredentialIssuerLogo({
    required String uri,
    required String altText,
  }) = _SupportedCredentialIssuerLogo;

  factory SupportedCredentialIssuerLogo.fromJson(Map<String, dynamic> json) =>
      _$SupportedCredentialIssuerLogoFromJson(json);
}
