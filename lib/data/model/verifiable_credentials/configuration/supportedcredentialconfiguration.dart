import 'package:freezed_annotation/freezed_annotation.dart';

part 'supportedcredentialconfiguration.freezed.dart';
part 'supportedcredentialconfiguration.g.dart';

@freezed
class SupportedCredentialConfiguration with _$SupportedCredentialConfiguration {
  @JsonSerializable(explicitToJson: true)
  factory SupportedCredentialConfiguration({
    required String scope,
    required Map<String, SupportedClaimProperties> claims,
    @JsonKey(name: 'cryptographic_binding_methods_supported')
    required List<String> cryptographicBindingMethodsSupported,
    required List<SupportedCredentialDisplayInformation> display,
    @JsonKey(name: 'credential_signing_alg_values_supported') required List<String> credentialSigningAlgValuesSupported,
    required String format,
    required String vct,
    @JsonKey(name: 'proof_types_supported') required Map<String, dynamic> proofTypesSupported,
  }) = _SupportedCredentialConfiguration;

  factory SupportedCredentialConfiguration.fromJson(Map<String, dynamic> json) =>
      _$SupportedCredentialConfigurationFromJson(json);
}

@freezed
class SupportedCredentialDisplayInformation with _$SupportedCredentialDisplayInformation {
  @JsonSerializable(explicitToJson: true)
  factory SupportedCredentialDisplayInformation({
    required String name,
    required String locale,
    @JsonKey(name: 'background_color') required String backgroudColor,
    @JsonKey(name: 'text_color') required String textColor,
    required SupportedCredentialIssuerLogo logo,
    String? description,
  }) = _SupportedCredentialDisplayInformation;

  factory SupportedCredentialDisplayInformation.fromJson(Map<String, dynamic> json) =>
      _$SupportedCredentialDisplayInformationFromJson(json);
}

@freezed
class SupportedCredentialIssuerLogo with _$SupportedCredentialIssuerLogo {
  @JsonSerializable(explicitToJson: true)
  factory SupportedCredentialIssuerLogo({
    required String uri,
    @JsonKey(name: 'alt_text') required String altText,
  }) = _SupportedCredentialIssuerLogo;

  factory SupportedCredentialIssuerLogo.fromJson(Map<String, dynamic> json) =>
      _$SupportedCredentialIssuerLogoFromJson(json);
}

@freezed
class SupportedClaimProperties with _$SupportedClaimProperties {
  @JsonSerializable(explicitToJson: true)
  factory SupportedClaimProperties({
    required List<DisplaySupportedClaimProperties> display,
  }) = _SupportedClaimProperties;

  factory SupportedClaimProperties.fromJson(Map<String, dynamic> json) => _$SupportedClaimPropertiesFromJson(json);
}

@freezed
class DisplaySupportedClaimProperties with _$DisplaySupportedClaimProperties {
  factory DisplaySupportedClaimProperties({
    required String name,
    required String locale,
  }) = _DisplaySupportedClaimProperties;

  factory DisplaySupportedClaimProperties.fromJson(Map<String, dynamic> json) =>
      _$DisplaySupportedClaimPropertiesFromJson(json);
}
