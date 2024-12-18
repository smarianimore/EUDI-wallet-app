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
