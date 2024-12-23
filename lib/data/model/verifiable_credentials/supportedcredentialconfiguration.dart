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

/*  */

@freezed
class VerifiableCredentialResponse with _$VerifiableCredentialResponse {
  @JsonSerializable(explicitToJson: true)
  factory VerifiableCredentialResponse({
    required String credential,
    @JsonKey(name: 'c_nonce_expires_in') required int cNonceExpiresIn,
    @JsonKey(name: 'c_nonce') required String cNonce,
  }) = _VerifiableCredentialResponse;

  factory VerifiableCredentialResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifiableCredentialResponseFromJson(json);
}

@freezed
class VerifiableCredential with _$VerifiableCredential {
  @JsonSerializable(explicitToJson: true)
  factory VerifiableCredential({
    required VerifiableCredentialResponse credentialResponse,
    required String subject,
    required List<VerifiableCredentialClaim> claims,
    required List<VerifiableDisclosure> disclosures,
  }) = _VerifiableCredential;

  factory VerifiableCredential.fromJson(Map<String, dynamic> json) => _$VerifiableCredentialFromJson(json);
}

@freezed
class VerifiableCredentialClaim with _$VerifiableCredentialClaim {
  @JsonSerializable(explicitToJson: true)
  factory VerifiableCredentialClaim({
    required String name,
    required String value,
  }) = _VerifiableCredentialClaim;

  factory VerifiableCredentialClaim.fromJson(Map<String, dynamic> json) => _$VerifiableCredentialClaimFromJson(json);
}

@freezed
class VerifiableDisclosure with _$VerifiableDisclosure {
  @JsonSerializable(explicitToJson: true)
  factory VerifiableDisclosure({
    required String name,
    required String value,
  }) = _VerifiableDisclosure;

  factory VerifiableDisclosure.fromJson(Map<String, dynamic> json) => _$VerifiableDisclosureFromJson(json);
}
