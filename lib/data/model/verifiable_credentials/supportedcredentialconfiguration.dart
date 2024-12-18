import 'package:freezed_annotation/freezed_annotation.dart';

part 'supportedcredentialconfiguration.freezed.dart';
part 'supportedcredentialconfiguration.g.dart';

@freezed
class SupportedCredentialConfiguration with _$SupportedCredentialConfiguration {
  @JsonSerializable(explicitToJson: true)
  factory SupportedCredentialConfiguration({
    required String scope,
    required Map<String, ClaimProperties> claims,
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
    required String description,
    @JsonKey(name: 'background_color') required String backgroudColor,
    @JsonKey(name: 'text_color') required String textColor,
    required SupportedCredentialIssuerLogo logo,
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
class ClaimProperties with _$ClaimProperties {
  @JsonSerializable(explicitToJson: true)
  factory ClaimProperties({
    required List<DisplayClaimProperties> display,
  }) = _ClaimProperties;

  factory ClaimProperties.fromJson(Map<String, dynamic> json) => _$ClaimPropertiesFromJson(json);
}

@freezed
class DisplayClaimProperties with _$DisplayClaimProperties {
  factory DisplayClaimProperties({
    required String name,
    required String locale,
  }) = _DisplayClaimProperties;

  factory DisplayClaimProperties.fromJson(Map<String, dynamic> json) => _$DisplayClaimPropertiesFromJson(json);
}

/*  */

@freezed
class VerifiableCredentialResponse with _$VerifiableCredentialResponse {
  @JsonSerializable(explicitToJson: true)
  factory VerifiableCredentialResponse({
    required String credential,
    @JsonKey(name: 'c_nonce_expires_in') required int cNonceExpiresIn,
    @JsonKey(name: 'c_nonce') cNonce,
  }) = _VerifiableCredentialResponse;

  factory VerifiableCredentialResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifiableCredentialResponseFromJson(json);
}
