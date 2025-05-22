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
  String? get credentialName => credentialConfiguration?.display.first.name;

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
    return PaymentAnalysisInformation(
      protestiInfo: protestiInfo?.value,
      latePaymentsInfo: latePayments?.value,
      otherNegativeInfo: otherNegativeInfo?.value,
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
    return AccountDataAnalysis(
      cashflowBalance: cashflowBalance?.value,
      incomeOutcomeRatio: monthlyOutcomeBalanceRatio?.value,
      taxesOrUtilitiesAccount: taxesOrUtilitiesAccount?.value,
      recurringIncome: recurringIncome?.value,
      accountDescription: accountDescription?.value,
      financialCommitments: financialCommitments?.value,
      extraordinaryIncome: extraordinaryIncome?.value,
    );
  }

  bool get hasUnknownInformations => unknownDisclosures.isNotEmpty || unknownClaims.isNotEmpty;

  String? findClaimDisplayName(String claimName) {
    if (credentialConfiguration == null) return null;
    return credentialConfiguration!.claims.findClaimName(claimName);
  }
}

extension on Map<String, SupportedClaimProperties> {
  String? findClaimName(String name) {
    for (final entry in entries) {
      if (entry.key == name) return entry.value.display.first.name;
      if (entry.value.properties == null) continue;
      final result = entry.value.properties!.findClaimName(name);
      if (result != null) return result;
    }
    return null;
  }
}

enum KnownVerifiableCredentialInformationType {
  unknown('unknown'),
  firstName('first_name'),
  lastName('last_name'),
  fiscalCode('fiscal_code'),
  scoreIndex('reliability_index'),
  scoreDesc('reliability_level'),
  rentAmount('rent_amount'),
  scoreDate('issue_date'),
  scoreDateExpiration('expiration_date'),
  scoreDetail('score_detail'),
  cashflowBalance('income_expenditure_balance_01'),
  monthlyOutcomeBalanceRatio('expenditure_account_balance_02'),
  taxesOrUtilitiesAccount('utilities_account_03'),
  recurringIncome('recurrent_income_04'),
  accountDescription('account_details_05'),
  financialCommitments('debts_income_06'),
  extraordinaryIncome('charity_investments_07'),
  protestiInfo('protests'),
  latePaymentsInfo('credit_payments'),
  otherNegativeInfo('public_negative_info'),
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
