// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentialissuerconfiguration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WellKnownCredentialIssuerConfigurationImpl
    _$$WellKnownCredentialIssuerConfigurationImplFromJson(
            Map<String, dynamic> json) =>
        _$WellKnownCredentialIssuerConfigurationImpl(
          credentialIssuer: json['credential_issuer'] as String,
          authorizationServers: (json['authorization_servers'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          credentialEndpoint: json['credential_endpoint'] as String,
          display: (json['display'] as List<dynamic>)
              .map((e) => CredentialIssuerDisplayInformation.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          credentialConfigurationsSupported:
              (json['credential_configurations_supported']
                      as Map<String, dynamic>)
                  .map(
            (k, e) => MapEntry(
                k,
                SupportedCredentialConfiguration.fromJson(
                    e as Map<String, dynamic>)),
          ),
        );

Map<String, dynamic> _$$WellKnownCredentialIssuerConfigurationImplToJson(
        _$WellKnownCredentialIssuerConfigurationImpl instance) =>
    <String, dynamic>{
      'credential_issuer': instance.credentialIssuer,
      'authorization_servers': instance.authorizationServers,
      'credential_endpoint': instance.credentialEndpoint,
      'display': instance.display.map((e) => e.toJson()).toList(),
      'credential_configurations_supported': instance
          .credentialConfigurationsSupported
          .map((k, e) => MapEntry(k, e.toJson())),
    };

_$CredentialIssuerDisplayInformationImpl
    _$$CredentialIssuerDisplayInformationImplFromJson(
            Map<String, dynamic> json) =>
        _$CredentialIssuerDisplayInformationImpl(
          name: json['name'] as String,
          location: json['location'] as String?,
          locale: json['locale'] as String?,
          description: json['description'] as String?,
          logo: json['logo'] == null
              ? null
              : CredentialIssuerLogoInformation.fromJson(
                  json['logo'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CredentialIssuerDisplayInformationImplToJson(
        _$CredentialIssuerDisplayInformationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'locale': instance.locale,
      'description': instance.description,
      'logo': instance.logo,
    };

_$CredentialIssuerLogoInformationImpl
    _$$CredentialIssuerLogoInformationImplFromJson(Map<String, dynamic> json) =>
        _$CredentialIssuerLogoInformationImpl(
          uri: json['uri'] as String,
        );

Map<String, dynamic> _$$CredentialIssuerLogoInformationImplToJson(
        _$CredentialIssuerLogoInformationImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
    };

_$SupportedCredentialConfigurationImpl
    _$$SupportedCredentialConfigurationImplFromJson(
            Map<String, dynamic> json) =>
        _$SupportedCredentialConfigurationImpl(
          scope: json['scope'] as String,
          claims: (json['claims'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                k,
                const SupportedClaimPropertiesConverter()
                    .fromJson(e as Map<String, dynamic>)),
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
      'claims': instance.claims.map((k, e) =>
          MapEntry(k, const SupportedClaimPropertiesConverter().toJson(e))),
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
          backgroudColor: json['background_color'] as String,
          textColor: json['text_color'] as String,
          logo: SupportedCredentialIssuerLogo.fromJson(
              json['logo'] as Map<String, dynamic>),
          description: json['description'] as String?,
        );

Map<String, dynamic> _$$SupportedCredentialDisplayInformationImplToJson(
        _$SupportedCredentialDisplayInformationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'locale': instance.locale,
      'background_color': instance.backgroudColor,
      'text_color': instance.textColor,
      'logo': instance.logo.toJson(),
      'description': instance.description,
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
      properties: (json['properties'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, SupportedClaimProperties.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$SupportedClaimPropertiesImplToJson(
        _$SupportedClaimPropertiesImpl instance) =>
    <String, dynamic>{
      'display': instance.display.map((e) => e.toJson()).toList(),
      'properties': instance.properties?.map((k, e) => MapEntry(k, e.toJson())),
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
