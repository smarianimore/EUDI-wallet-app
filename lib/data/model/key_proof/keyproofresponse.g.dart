// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyproofresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeyProofResponseImpl _$$KeyProofResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$KeyProofResponseImpl(
      jwt: json['jwt'] as String,
      proofType: json['proofType'] as String,
    );

Map<String, dynamic> _$$KeyProofResponseImplToJson(
        _$KeyProofResponseImpl instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'proofType': instance.proofType,
    };

_$SigningProofConfigurationImpl _$$SigningProofConfigurationImplFromJson(
        Map<String, dynamic> json) =>
    _$SigningProofConfigurationImpl(
      kty: json['kty'] as String,
      crv: json['crv'] as String,
      x: json['x'] as String,
      y: json['y'] as String,
      kid: json['kid'] as String,
      use: json['use'] as String?,
      alg: json['alg'] as String?,
    );

Map<String, dynamic> _$$SigningProofConfigurationImplToJson(
        _$SigningProofConfigurationImpl instance) =>
    <String, dynamic>{
      'kty': instance.kty,
      'crv': instance.crv,
      'x': instance.x,
      'y': instance.y,
      'kid': instance.kid,
      'use': instance.use,
      'alg': instance.alg,
    };
