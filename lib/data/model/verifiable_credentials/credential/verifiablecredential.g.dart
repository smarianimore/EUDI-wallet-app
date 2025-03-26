// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verifiablecredential.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifiableCredentialResponseImpl _$$VerifiableCredentialResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiableCredentialResponseImpl(
      credential: json['credential'] as String,
      cNonceExpiresIn: (json['c_nonce_expires_in'] as num).toInt(),
      cNonce: json['c_nonce'] as String,
    );

Map<String, dynamic> _$$VerifiableCredentialResponseImplToJson(
        _$VerifiableCredentialResponseImpl instance) =>
    <String, dynamic>{
      'credential': instance.credential,
      'c_nonce_expires_in': instance.cNonceExpiresIn,
      'c_nonce': instance.cNonce,
    };

_$VerifiableCredentialImpl _$$VerifiableCredentialImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiableCredentialImpl(
      credentialResponse: VerifiableCredentialResponse.fromJson(
          json['credentialResponse'] as Map<String, dynamic>),
      subject: json['subject'] as String,
      claims: (json['claims'] as List<dynamic>)
          .map((e) =>
              VerifiableCredentialClaim.fromJson(e as Map<String, dynamic>))
          .toList(),
      disclosures: (json['disclosures'] as List<dynamic>)
          .map((e) => VerifiableDisclosure.fromJson(e as Map<String, dynamic>))
          .toList(),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      paymentAnalysis: json['paymentAnalysis'] == null
          ? null
          : PaymentAnalysisInformation.fromJson(
              json['paymentAnalysis'] as Map<String, dynamic>),
      display: json['display'] == null
          ? null
          : SupportedCredentialDisplayInformation.fromJson(
              json['display'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifiableCredentialImplToJson(
        _$VerifiableCredentialImpl instance) =>
    <String, dynamic>{
      'credentialResponse': instance.credentialResponse.toJson(),
      'subject': instance.subject,
      'claims': instance.claims.map((e) => e.toJson()).toList(),
      'disclosures': instance.disclosures.map((e) => e.toJson()).toList(),
      'expiresAt': instance.expiresAt.toIso8601String(),
      'paymentAnalysis': instance.paymentAnalysis?.toJson(),
      'display': instance.display?.toJson(),
    };

_$VerifiableCredentialClaimImpl _$$VerifiableCredentialClaimImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiableCredentialClaimImpl(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$VerifiableCredentialClaimImplToJson(
        _$VerifiableCredentialClaimImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

_$VerifiableDisclosureImpl _$$VerifiableDisclosureImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiableDisclosureImpl(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$VerifiableDisclosureImplToJson(
        _$VerifiableDisclosureImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

_$PaymentAnalysisInformationImpl _$$PaymentAnalysisInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentAnalysisInformationImpl(
      protestiInfo: json['Protesti'] as String,
      latePaymentsInfo:
          json['Ritardo nei pagamenti di prestiti e finanziamenti'] as String,
      otherNegativeInfo:
          json['Altre informazioni pubbliche negative'] as String,
    );

Map<String, dynamic> _$$PaymentAnalysisInformationImplToJson(
        _$PaymentAnalysisInformationImpl instance) =>
    <String, dynamic>{
      'Protesti': instance.protestiInfo,
      'Ritardo nei pagamenti di prestiti e finanziamenti':
          instance.latePaymentsInfo,
      'Altre informazioni pubbliche negative': instance.otherNegativeInfo,
    };
