// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issueropenidconfiguration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IssuerOpenIDConfigurationImpl _$$IssuerOpenIDConfigurationImplFromJson(
        Map<String, dynamic> json) =>
    _$IssuerOpenIDConfigurationImpl(
      issuer: json['issuer'] as String,
      authorizationEndpoint: json['authorization_endpoint'] as String,
      tokenEndpoint: json['token_endpoint'] as String,
      userInfoEndpoint: json['userinfo_endpoint'] as String,
      jwksUri: json['jwks_uri'] as String,
      claimsSupported: (json['claims_supported'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$IssuerOpenIDConfigurationImplToJson(
        _$IssuerOpenIDConfigurationImpl instance) =>
    <String, dynamic>{
      'issuer': instance.issuer,
      'authorization_endpoint': instance.authorizationEndpoint,
      'token_endpoint': instance.tokenEndpoint,
      'userinfo_endpoint': instance.userInfoEndpoint,
      'jwks_uri': instance.jwksUri,
      'claims_supported': instance.claimsSupported,
    };
