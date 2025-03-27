// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokenauthenticationresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenAuthenticationResponseImpl _$$TokenAuthenticationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenAuthenticationResponseImpl(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String,
      expiresIn: json['expires_in'] as num,
      cNonce: json['c_nonce'] as String,
      cNonceExpiresIn: json['c_nonce_expires_in'] as num,
      refreshToken: json['refresh_token'] as String?,
      idToken: json['id_token'] as String?,
    );

Map<String, dynamic> _$$TokenAuthenticationResponseImplToJson(
        _$TokenAuthenticationResponseImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      'c_nonce': instance.cNonce,
      'c_nonce_expires_in': instance.cNonceExpiresIn,
      'refresh_token': instance.refreshToken,
      'id_token': instance.idToken,
    };
