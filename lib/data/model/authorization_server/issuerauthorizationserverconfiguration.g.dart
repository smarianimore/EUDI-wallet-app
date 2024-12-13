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
          authorizationEndpoint: json['authorizationEndpoint'] as String,
          tokenEndpoint: json['tokenEndpoint'] as String,
          userinfoEndpoint: json['userinfoEndpoint'] as String,
          jwksUri: json['jwksUri'] as String,
          grantTypesSupported: (json['grantTypesSupported'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$$IssuerAuthorizationServerConfigurationImplToJson(
        _$IssuerAuthorizationServerConfigurationImpl instance) =>
    <String, dynamic>{
      'issuer': instance.issuer,
      'authorizationEndpoint': instance.authorizationEndpoint,
      'tokenEndpoint': instance.tokenEndpoint,
      'userinfoEndpoint': instance.userinfoEndpoint,
      'jwksUri': instance.jwksUri,
      'grantTypesSupported': instance.grantTypesSupported,
    };
