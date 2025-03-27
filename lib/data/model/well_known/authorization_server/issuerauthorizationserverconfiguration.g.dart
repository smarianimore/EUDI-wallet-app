// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issuerauthorizationserverconfiguration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WellKnownAuthorizationServerInformationImpl
    _$$WellKnownAuthorizationServerInformationImplFromJson(
            Map<String, dynamic> json) =>
        _$WellKnownAuthorizationServerInformationImpl(
          issuer: json['issuer'] as String,
          authorizationEndpoint: json['authorization_endpoint'] as String,
          tokenEndpoint: json['token_endpoint'] as String,
          grantTypesSupported: (json['grant_types_supported'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          jwksUri: json['jwks_uri'] as String?,
        );

Map<String, dynamic> _$$WellKnownAuthorizationServerInformationImplToJson(
        _$WellKnownAuthorizationServerInformationImpl instance) =>
    <String, dynamic>{
      'issuer': instance.issuer,
      'authorization_endpoint': instance.authorizationEndpoint,
      'token_endpoint': instance.tokenEndpoint,
      'grant_types_supported': instance.grantTypesSupported,
      'jwks_uri': instance.jwksUri,
    };
