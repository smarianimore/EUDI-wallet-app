import 'package:birex/data/model/credential/verifiablecredential.dart';
import 'package:birex/data/model/well_known/issuer/credentialissuerconfiguration.dart';
import 'package:birex/utils/utils.dart';

extension on List<KnownVerifiableCredentialInformation> {
  KnownVerifiableCredentialInformation? findByKnownType(KnownVerifiableCredentialInformationType type) {
    final result = where((element) => element.type == type).toList();
    return result.isNotEmpty ? result.first : null;
  }
}

extension VerifiableCredentialKnownInformation on VerifiableCredential {
  KnownVerifiableCredentialInformation? get firstName {
    return knownCredentialInfo.findByKnownType(KnownVerifiableCredentialInformationType.firstName);
  }

  KnownVerifiableCredentialInformation? get lastName {
    return knownCredentialInfo.findByKnownType(KnownVerifiableCredentialInformationType.lastName);
  }

  KnownVerifiableCredentialInformation? get fiscalCode {
    return knownCredentialInfo.findByKnownType(KnownVerifiableCredentialInformationType.fiscalCode);
  }

  KnownVerifiableCredentialInformation? get scoreIndex {
    return knownCredentialInfo.findByKnownType(KnownVerifiableCredentialInformationType.scoreIndex);
  }

  KnownVerifiableCredentialInformation? get scoreDesc {
    return knownCredentialInfo.findByKnownType(KnownVerifiableCredentialInformationType.scoreDesc);
  }

  KnownVerifiableCredentialInformation? get rentAmount {
    return knownCredentialInfo.findByKnownType(KnownVerifiableCredentialInformationType.rentAmount);
  }

  KnownVerifiableCredentialInformation? get scoreDate {
    return knownCredentialInfo.findByKnownType(KnownVerifiableCredentialInformationType.scoreDate);
  }

  KnownVerifiableCredentialInformation? get scoreDateExpiration {
    return knownCredentialInfo.findByKnownType(KnownVerifiableCredentialInformationType.scoreDateExpiration);
  }

  KnownVerifiableCredentialInformation? get scoreDetail {
    return knownCredentialInfo.findByKnownType(KnownVerifiableCredentialInformationType.scoreDetail);
  }

  PaymentAnalysisInformation? get paymentAnalysis {
    final protestiInfo =
        knownCredentialInfo.findByKnownType(KnownVerifiableCredentialInformationType.protestiInfo)?.basicKeyValue;
    final latePayments =
        knownCredentialInfo.findByKnownType(KnownVerifiableCredentialInformationType.latePaymentsInfo)?.basicKeyValue;
    final otherNegativeInfo =
        knownCredentialInfo.findByKnownType(KnownVerifiableCredentialInformationType.otherNegativeInfo)?.basicKeyValue;
    if (protestiInfo == null && latePayments == null && otherNegativeInfo == null) {
      return null;
    }
    return PaymentAnalysisInformation(
      protestiInfo: protestiInfo!.value,
      latePaymentsInfo: latePayments!.value,
      otherNegativeInfo: otherNegativeInfo!.value,
    );
  }

  AccountDataAnalysis? get accountDataAnalysis {
    final cashflowBalance =
        knownCredentialInfo.findByKnownType(KnownVerifiableCredentialInformationType.cashflowBalance)?.basicKeyValue;
    final monthlyOutcomeBalanceRatio = knownCredentialInfo
        .findByKnownType(KnownVerifiableCredentialInformationType.monthlyOutcomeBalanceRatio)
        ?.basicKeyValue;
    final taxesOrUtilitiesAccount = knownCredentialInfo
        .findByKnownType(KnownVerifiableCredentialInformationType.taxesOrUtilitiesAccount)
        ?.basicKeyValue;
    final recurringIncome =
        knownCredentialInfo.findByKnownType(KnownVerifiableCredentialInformationType.recurringIncome)?.basicKeyValue;
    final accountDescription =
        knownCredentialInfo.findByKnownType(KnownVerifiableCredentialInformationType.accountDescription)?.basicKeyValue;
    final financialCommitments = knownCredentialInfo
        .findByKnownType(KnownVerifiableCredentialInformationType.financialCommitments)
        ?.basicKeyValue;
    final extraordinaryIncome = knownCredentialInfo
        .findByKnownType(KnownVerifiableCredentialInformationType.extraordinaryIncome)
        ?.basicKeyValue;
    if (cashflowBalance == null &&
        monthlyOutcomeBalanceRatio == null &&
        taxesOrUtilitiesAccount == null &&
        recurringIncome == null &&
        accountDescription == null &&
        financialCommitments == null &&
        extraordinaryIncome == null) {
      return null;
    }
    return AccountDataAnalysis(
      cashflowBalance: cashflowBalance!.value,
      incomeOutcomeRatio: monthlyOutcomeBalanceRatio!.value,
      taxesOrUtilitiesAccount: taxesOrUtilitiesAccount!.value,
      recurringIncome: recurringIncome!.value,
      accountDescription: accountDescription!.value,
      financialCommitments: financialCommitments!.value,
      extraordinaryIncome: extraordinaryIncome!.value,
    );
  }

  bool get hasUnknownInformations => unknownDisclosures.isNotEmpty || unknownClaims.isNotEmpty;
}

enum KnownVerifiableCredentialInformationType {
  unknown('unknown'),
  firstName('first_name'),
  lastName('last_name'),
  fiscalCode('fiscal_code'),
  scoreIndex('score_index'),
  scoreDesc('score_desc'),
  rentAmount('rent_amount'),
  scoreDate('score_date'),
  scoreDateExpiration('score_date_expiration'),
  scoreDetail('score_detail'),
  cashflowBalance('equilibrio_uscite_entrate'),
  monthlyOutcomeBalanceRatio('rapporto_uscite_saldo_mensile'),
  taxesOrUtilitiesAccount('conto_tasse_utenze'),
  recurringIncome('presenza_entrate_ricorrenti'),
  accountDescription('caratteristiche_del_conto'),
  financialCommitments('incidenza_impegni_finanziari_reddito'),
  extraordinaryIncome('conto_destinato_uscite_virtuose'),
  protestiInfo('protesti'),
  latePaymentsInfo('ritardo_pagamenti_prestiti_finanziamenti'),
  otherNegativeInfo('altre_informazioni_pubbliche_negative'),
  paymentAnalysis('payment_analysis'),
  accountDataAnalysis('account_data_analysis'),
  incomeOutcomeRatio('rapporto_entrate_uscite');

  const KnownVerifiableCredentialInformationType(this.apiValue);

  final String apiValue;

  String findName(SupportedCredentialConfiguration configuration) {
    const unhandled = [
      KnownVerifiableCredentialInformationType.unknown,
      KnownVerifiableCredentialInformationType.paymentAnalysis,
      KnownVerifiableCredentialInformationType.accountDataAnalysis,
    ];
    if (unhandled.contains(this)) return apiValue;
    final claim = configuration.claims.entries.getWhere((e) => e.key == apiValue);
    return claim?.value.display.first.name ?? apiValue;
  }

  static KnownVerifiableCredentialInformationType fromApiValue(String apiValue) {
    const values = KnownVerifiableCredentialInformationType.values;
    final isContained = values.where((e) => e.apiValue == apiValue).toList();
    return isContained.isNotEmpty ? isContained.first : unknown;
  }
}
