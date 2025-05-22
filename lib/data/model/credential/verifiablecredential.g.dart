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
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      knownCredentialInfo: (json['knownCredentialInfo'] as List<dynamic>)
          .map((e) => KnownVerifiableCredentialInformation.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      unknownDisclosures: (json['unknownDisclosures'] as List<dynamic>?)
              ?.map((e) =>
                  VerifiableDisclosure.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <VerifiableDisclosure>[],
      unknownClaims: (json['unknownClaims'] as List<dynamic>?)
              ?.map((e) =>
                  VerifiableDisclosure.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <VerifiableDisclosure>[],
      credentialConfiguration: json['credentialConfiguration'] == null
          ? null
          : SupportedCredentialConfiguration.fromJson(
              json['credentialConfiguration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifiableCredentialImplToJson(
        _$VerifiableCredentialImpl instance) =>
    <String, dynamic>{
      'credentialResponse': instance.credentialResponse.toJson(),
      'subject': instance.subject,
      'expiresAt': instance.expiresAt.toIso8601String(),
      'knownCredentialInfo':
          instance.knownCredentialInfo.map((e) => e.toJson()).toList(),
      'unknownDisclosures':
          instance.unknownDisclosures.map((e) => e.toJson()).toList(),
      'unknownClaims': instance.unknownClaims.map((e) => e.toJson()).toList(),
      'credentialConfiguration': instance.credentialConfiguration?.toJson(),
    };

_$KnownVerifiableCredentialInformationImpl
    _$$KnownVerifiableCredentialInformationImplFromJson(
            Map<String, dynamic> json) =>
        _$KnownVerifiableCredentialInformationImpl(
          type: $enumDecode(
              _$KnownVerifiableCredentialInformationTypeEnumMap, json['type']),
          disclosure: json['disclosure'] as String?,
          paymentAnalysis: json['paymentAnalysis'] == null
              ? null
              : PaymentAnalysisInformation.fromJson(
                  json['paymentAnalysis'] as Map<String, dynamic>),
          accountDataAnalysis: json['accountDataAnalysis'] == null
              ? null
              : AccountDataAnalysis.fromJson(
                  json['accountDataAnalysis'] as Map<String, dynamic>),
          basicKeyValue: json['basicKeyValue'] == null
              ? null
              : VerifiableDisclosure.fromJson(
                  json['basicKeyValue'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$KnownVerifiableCredentialInformationImplToJson(
        _$KnownVerifiableCredentialInformationImpl instance) =>
    <String, dynamic>{
      'type': _$KnownVerifiableCredentialInformationTypeEnumMap[instance.type]!,
      'disclosure': instance.disclosure,
      'paymentAnalysis': instance.paymentAnalysis?.toJson(),
      'accountDataAnalysis': instance.accountDataAnalysis?.toJson(),
      'basicKeyValue': instance.basicKeyValue?.toJson(),
    };

const _$KnownVerifiableCredentialInformationTypeEnumMap = {
  KnownVerifiableCredentialInformationType.unknown: 'unknown',
  KnownVerifiableCredentialInformationType.firstName: 'firstName',
  KnownVerifiableCredentialInformationType.lastName: 'lastName',
  KnownVerifiableCredentialInformationType.fiscalCode: 'fiscalCode',
  KnownVerifiableCredentialInformationType.scoreIndex: 'scoreIndex',
  KnownVerifiableCredentialInformationType.scoreDesc: 'scoreDesc',
  KnownVerifiableCredentialInformationType.rentAmount: 'rentAmount',
  KnownVerifiableCredentialInformationType.scoreDate: 'scoreDate',
  KnownVerifiableCredentialInformationType.scoreDateExpiration:
      'scoreDateExpiration',
  KnownVerifiableCredentialInformationType.scoreDetail: 'scoreDetail',
  KnownVerifiableCredentialInformationType.cashflowBalance: 'cashflowBalance',
  KnownVerifiableCredentialInformationType.monthlyOutcomeBalanceRatio:
      'monthlyOutcomeBalanceRatio',
  KnownVerifiableCredentialInformationType.taxesOrUtilitiesAccount:
      'taxesOrUtilitiesAccount',
  KnownVerifiableCredentialInformationType.recurringIncome: 'recurringIncome',
  KnownVerifiableCredentialInformationType.accountDescription:
      'accountDescription',
  KnownVerifiableCredentialInformationType.financialCommitments:
      'financialCommitments',
  KnownVerifiableCredentialInformationType.extraordinaryIncome:
      'extraordinaryIncome',
  KnownVerifiableCredentialInformationType.protestiInfo: 'protestiInfo',
  KnownVerifiableCredentialInformationType.latePaymentsInfo: 'latePaymentsInfo',
  KnownVerifiableCredentialInformationType.otherNegativeInfo:
      'otherNegativeInfo',
  KnownVerifiableCredentialInformationType.paymentAnalysis: 'paymentAnalysis',
  KnownVerifiableCredentialInformationType.accountDataAnalysis:
      'accountDataAnalysis',
  KnownVerifiableCredentialInformationType.incomeOutcomeRatio:
      'incomeOutcomeRatio',
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
      protestiInfo: json['protestiInfo'] as String?,
      latePaymentsInfo: json['latePaymentsInfo'] as String?,
      otherNegativeInfo: json['otherNegativeInfo'] as String?,
    );

Map<String, dynamic> _$$PaymentAnalysisInformationImplToJson(
        _$PaymentAnalysisInformationImpl instance) =>
    <String, dynamic>{
      'protestiInfo': instance.protestiInfo,
      'latePaymentsInfo': instance.latePaymentsInfo,
      'otherNegativeInfo': instance.otherNegativeInfo,
    };

_$AccountDataAnalysisImpl _$$AccountDataAnalysisImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountDataAnalysisImpl(
      cashflowBalance: json['cashflowBalance'] as String?,
      incomeOutcomeRatio: json['incomeOutcomeRatio'] as String?,
      taxesOrUtilitiesAccount: json['taxesOrUtilitiesAccount'] as String?,
      recurringIncome: json['recurringIncome'] as String?,
      accountDescription: json['accountDescription'] as String?,
      financialCommitments: json['financialCommitments'] as String?,
      extraordinaryIncome: json['extraordinaryIncome'] as String?,
    );

Map<String, dynamic> _$$AccountDataAnalysisImplToJson(
        _$AccountDataAnalysisImpl instance) =>
    <String, dynamic>{
      'cashflowBalance': instance.cashflowBalance,
      'incomeOutcomeRatio': instance.incomeOutcomeRatio,
      'taxesOrUtilitiesAccount': instance.taxesOrUtilitiesAccount,
      'recurringIncome': instance.recurringIncome,
      'accountDescription': instance.accountDescription,
      'financialCommitments': instance.financialCommitments,
      'extraordinaryIncome': instance.extraordinaryIncome,
    };
