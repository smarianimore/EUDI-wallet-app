// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issuerauthorizationserverconfiguration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IssuerAuthorizationServerConfigurationImpl
    _$$IssuerAuthorizationServerConfigurationImplFromJson(
            Map<String, dynamic> json) =>
        _$IssuerAuthorizationServerConfigurationImpl(
          issuer: json['issuer'] as String,
          authorizationEndpoint: json['authorization_endpoint'] as String,
          tokenEndpoint: json['token_endpoint'] as String,
          jwksUri: json['jwks_uri'] as String,
          grantTypesSupported: (json['grant_types_supported'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$$IssuerAuthorizationServerConfigurationImplToJson(
        _$IssuerAuthorizationServerConfigurationImpl instance) =>
    <String, dynamic>{
      'issuer': instance.issuer,
      'authorization_endpoint': instance.authorizationEndpoint,
      'token_endpoint': instance.tokenEndpoint,
      'jwks_uri': instance.jwksUri,
      'grant_types_supported': instance.grantTypesSupported,
    };
