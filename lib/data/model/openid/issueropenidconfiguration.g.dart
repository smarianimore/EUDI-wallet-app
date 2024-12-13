// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issueropenidconfiguration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IssuerOpenIDConfigurationImpl _$$IssuerOpenIDConfigurationImplFromJson(
        Map<String, dynamic> json) =>
    _$IssuerOpenIDConfigurationImpl(
      issuer: json['issuer'] as String,
      authorizationEndpoint: json['authorizationEndpoint'] as String,
      tokenEndpoint: json['tokenEndpoint'] as String,
      userinfoEndpoint: json['userinfoEndpoint'] as String,
      jwksUri: json['jwksUri'] as String,
      claimsSupported: (json['claimsSupported'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$IssuerOpenIDConfigurationImplToJson(
        _$IssuerOpenIDConfigurationImpl instance) =>
    <String, dynamic>{
      'issuer': instance.issuer,
      'authorizationEndpoint': instance.authorizationEndpoint,
      'tokenEndpoint': instance.tokenEndpoint,
      'userinfoEndpoint': instance.userinfoEndpoint,
      'jwksUri': instance.jwksUri,
      'claimsSupported': instance.claimsSupported,
    };
