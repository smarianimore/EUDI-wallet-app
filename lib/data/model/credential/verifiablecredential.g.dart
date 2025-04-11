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

_$AccountDataAnalysisImpl _$$AccountDataAnalysisImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountDataAnalysisImpl(
      cashflowBalance: json['Equilibrio tra Uscite e Entrate'] as String,
      incomeOutcomeRatio: json['Rapporto tra Uscite e Saldo Mensile'] as String,
      taxesOrUtilitiesAccount:
          json['Conto utilizzato per Tasse o Utenze'] as String,
      recurringIncome: json['Presenza di Entrate Ricorrenti'] as String,
      accountDescription: json['Caratteristiche del conto'] as String,
      financialCommitments:
          json['Incidenza Impegni Finanziari sul Reddito'] as String,
      extraordinaryIncome:
          json['Conto destinato a uscite “virtuose”'] as String,
    );

Map<String, dynamic> _$$AccountDataAnalysisImplToJson(
        _$AccountDataAnalysisImpl instance) =>
    <String, dynamic>{
      'Equilibrio tra Uscite e Entrate': instance.cashflowBalance,
      'Rapporto tra Uscite e Saldo Mensile': instance.incomeOutcomeRatio,
      'Conto utilizzato per Tasse o Utenze': instance.taxesOrUtilitiesAccount,
      'Presenza di Entrate Ricorrenti': instance.recurringIncome,
      'Caratteristiche del conto': instance.accountDescription,
      'Incidenza Impegni Finanziari sul Reddito': instance.financialCommitments,
      'Conto destinato a uscite “virtuose”': instance.extraordinaryIncome,
    };
