// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentialissuerconfiguration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CredentialIssuerConfigurationImpl
    _$$CredentialIssuerConfigurationImplFromJson(Map<String, dynamic> json) =>
        _$CredentialIssuerConfigurationImpl(
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

Map<String, dynamic> _$$CredentialIssuerConfigurationImplToJson(
        _$CredentialIssuerConfigurationImpl instance) =>
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
