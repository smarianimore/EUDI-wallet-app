// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentialissuerconfiguration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CredentialIssuerConfigurationImpl
    _$$CredentialIssuerConfigurationImplFromJson(Map<String, dynamic> json) =>
        _$CredentialIssuerConfigurationImpl(
          credentialIssuer: json['credentialIssuer'] as String,
          authorizationServers: (json['authorizationServers'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          credentialEndpoint: json['credentialEndpoint'] as String,
          display: CredentialIssuerDisplayInformation.fromJson(
              json['display'] as Map<String, dynamic>),
          credentialConfigurationsSupported:
              (json['credentialConfigurationsSupported']
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
      'credentialIssuer': instance.credentialIssuer,
      'authorizationServers': instance.authorizationServers,
      'credentialEndpoint': instance.credentialEndpoint,
      'display': instance.display,
      'credentialConfigurationsSupported':
          instance.credentialConfigurationsSupported,
    };

_$CredentialIssuerDisplayInformationImpl
    _$$CredentialIssuerDisplayInformationImplFromJson(
            Map<String, dynamic> json) =>
        _$CredentialIssuerDisplayInformationImpl(
          name: json['name'] as String,
          location: json['location'] as String,
          locale: json['locale'] as String,
          description: json['description'] as String,
        );

Map<String, dynamic> _$$CredentialIssuerDisplayInformationImplToJson(
        _$CredentialIssuerDisplayInformationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'locale': instance.locale,
      'description': instance.description,
    };
