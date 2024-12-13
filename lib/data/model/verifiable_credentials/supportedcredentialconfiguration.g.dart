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
          claims: json['claims'] as Map<String, dynamic>,
          cryptographicBindingMethodsSupported:
              (json['cryptographicBindingMethodsSupported'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
          display: SupportedCredentialDisplayInformation.fromJson(
              json['display'] as Map<String, dynamic>),
          credentialSigningAlgValuesSupported:
              (json['credentialSigningAlgValuesSupported'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
          format: json['format'] as String,
          vct: json['vct'] as String,
          proofTypesSupported:
              json['proofTypesSupported'] as Map<String, dynamic>,
        );

Map<String, dynamic> _$$SupportedCredentialConfigurationImplToJson(
        _$SupportedCredentialConfigurationImpl instance) =>
    <String, dynamic>{
      'scope': instance.scope,
      'claims': instance.claims,
      'cryptographicBindingMethodsSupported':
          instance.cryptographicBindingMethodsSupported,
      'display': instance.display,
      'credentialSigningAlgValuesSupported':
          instance.credentialSigningAlgValuesSupported,
      'format': instance.format,
      'vct': instance.vct,
      'proofTypesSupported': instance.proofTypesSupported,
    };

_$SupportedCredentialDisplayInformationImpl
    _$$SupportedCredentialDisplayInformationImplFromJson(
            Map<String, dynamic> json) =>
        _$SupportedCredentialDisplayInformationImpl(
          name: json['name'] as String,
          locale: json['locale'] as String,
          description: json['description'] as String,
          backgroudColor: json['backgroudColor'] as String,
          textColor: json['textColor'] as String,
          logo: SupportedCredentialIssuerLogo.fromJson(
              json['logo'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SupportedCredentialDisplayInformationImplToJson(
        _$SupportedCredentialDisplayInformationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'locale': instance.locale,
      'description': instance.description,
      'backgroudColor': instance.backgroudColor,
      'textColor': instance.textColor,
      'logo': instance.logo,
    };

_$SupportedCredentialIssuerLogoImpl
    _$$SupportedCredentialIssuerLogoImplFromJson(Map<String, dynamic> json) =>
        _$SupportedCredentialIssuerLogoImpl(
          uri: json['uri'] as String,
          altText: json['altText'] as String,
        );

Map<String, dynamic> _$$SupportedCredentialIssuerLogoImplToJson(
        _$SupportedCredentialIssuerLogoImpl instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'altText': instance.altText,
    };
