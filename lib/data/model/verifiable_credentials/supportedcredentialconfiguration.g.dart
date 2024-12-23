// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supportedcredentialconfiguration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportedCredentialConfigurationImpl
    _$$SupportedCredentialConfigurationImplFromJson(
            Map<String, dynamic> json) =>
        _$SupportedCredentialConfigurationImpl(
          scope: json['scope'] as String,
          claims: (json['claims'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k,
                SupportedClaimProperties.fromJson(e as Map<String, dynamic>)),
          ),
          cryptographicBindingMethodsSupported:
              (json['cryptographic_binding_methods_supported'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
          display: (json['display'] as List<dynamic>)
              .map((e) => SupportedCredentialDisplayInformation.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          credentialSigningAlgValuesSupported:
              (json['credential_signing_alg_values_supported'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
          format: json['format'] as String,
          vct: json['vct'] as String,
          proofTypesSupported:
              json['proof_types_supported'] as Map<String, dynamic>,
        );

Map<String, dynamic> _$$SupportedCredentialConfigurationImplToJson(
        _$SupportedCredentialConfigurationImpl instance) =>
    <String, dynamic>{
      'scope': instance.scope,
      'claims': instance.claims.map((k, e) => MapEntry(k, e.toJson())),
      'cryptographic_binding_methods_supported':
          instance.cryptographicBindingMethodsSupported,
      'display': instance.display.map((e) => e.toJson()).toList(),
      'credential_signing_alg_values_supported':
          instance.credentialSigningAlgValuesSupported,
      'format': instance.format,
      'vct': instance.vct,
      'proof_types_supported': instance.proofTypesSupported,
    };

_$SupportedCredentialDisplayInformationImpl
    _$$SupportedCredentialDisplayInformationImplFromJson(
            Map<String, dynamic> json) =>
        _$SupportedCredentialDisplayInformationImpl(
          name: json['name'] as String,
          locale: json['locale'] as String,
          description: json['description'] as String,
          backgroudColor: json['background_color'] as String,
          textColor: json['text_color'] as String,
          logo: SupportedCredentialIssuerLogo.fromJson(
              json['logo'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SupportedCredentialDisplayInformationImplToJson(
        _$SupportedCredentialDisplayInformationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'locale': instance.locale,
      'description': instance.description,
      'background_color': instance.backgroudColor,
      'text_color': instance.textColor,
      'logo': instance.logo.toJson(),
    };

_$SupportedCredentialIssuerLogoImpl
    _$$SupportedCredentialIssuerLogoImplFromJson(Map<String, dynamic> json) =>
        _$SupportedCredentialIssuerLogoImpl(
          uri: json['uri'] as String,
          altText: json['alt_text'] as String,
        );

Map<String, dynamic> _$$SupportedCredentialIssuerLogoImplToJson(
        _$SupportedCredentialIssuerLogoImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'alt_text': instance.altText,
    };

_$SupportedClaimPropertiesImpl _$$SupportedClaimPropertiesImplFromJson(
        Map<String, dynamic> json) =>
    _$SupportedClaimPropertiesImpl(
      display: (json['display'] as List<dynamic>)
          .map((e) => DisplaySupportedClaimProperties.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SupportedClaimPropertiesImplToJson(
        _$SupportedClaimPropertiesImpl instance) =>
    <String, dynamic>{
      'display': instance.display.map((e) => e.toJson()).toList(),
    };

_$DisplaySupportedClaimPropertiesImpl
    _$$DisplaySupportedClaimPropertiesImplFromJson(Map<String, dynamic> json) =>
        _$DisplaySupportedClaimPropertiesImpl(
          name: json['name'] as String,
          locale: json['locale'] as String,
        );

Map<String, dynamic> _$$DisplaySupportedClaimPropertiesImplToJson(
        _$DisplaySupportedClaimPropertiesImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'locale': instance.locale,
    };

_$VerifiableCredentialResponseImpl _$$VerifiableCredentialResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiableCredentialResponseImpl(
      credential: json['credential'] as String,
      cNonceExpiresIn: (json['c_nonce_expires_in'] as num).toInt(),
      cNonce: json['c_nonce'] as String,
    );

Map<String, dynamic> _$$VerifiableCredentialResponseImplToJson(
        _$VerifiableCredentialResponseImpl instance) =>
    <String, dynamic>{
      'credential': instance.credential,
      'c_nonce_expires_in': instance.cNonceExpiresIn,
      'c_nonce': instance.cNonce,
    };

_$VerifiableCredentialImpl _$$VerifiableCredentialImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiableCredentialImpl(
      credentialResponse: VerifiableCredentialResponse.fromJson(
          json['credentialResponse'] as Map<String, dynamic>),
      subject: json['subject'] as String,
      claims: (json['claims'] as List<dynamic>)
          .map((e) =>
              VerifiableCredentialClaim.fromJson(e as Map<String, dynamic>))
          .toList(),
      disclosures: (json['disclosures'] as List<dynamic>)
          .map((e) => VerifiableDisclosure.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VerifiableCredentialImplToJson(
        _$VerifiableCredentialImpl instance) =>
    <String, dynamic>{
      'credentialResponse': instance.credentialResponse.toJson(),
      'subject': instance.subject,
      'claims': instance.claims.map((e) => e.toJson()).toList(),
      'disclosures': instance.disclosures.map((e) => e.toJson()).toList(),
    };

_$VerifiableCredentialClaimImpl _$$VerifiableCredentialClaimImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiableCredentialClaimImpl(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$VerifiableCredentialClaimImplToJson(
        _$VerifiableCredentialClaimImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

_$VerifiableDisclosureImpl _$$VerifiableDisclosureImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiableDisclosureImpl(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$VerifiableDisclosureImplToJson(
        _$VerifiableDisclosureImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
