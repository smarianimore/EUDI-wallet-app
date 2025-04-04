import 'package:birex/data/model/credential/verifiablecredential.dart';

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
    return knownCredentialInfo
        .findByKnownType(KnownVerifiableCredentialInformationType.paymentAnalysis)
        ?.paymentAnalysis;
  }

  AccountDataAnalysis? get accountDataAnalysis {
    return knownCredentialInfo
        .findByKnownType(KnownVerifiableCredentialInformationType.accountDataAnalysis)
        ?.accountDataAnalysis;
  }

  bool get hasUnknownInformations => unknownDisclosures.isNotEmpty || unknownClaims.isNotEmpty;
}

enum KnownVerifiableCredentialInformationType {
  unknown('unknown'),
  firstName('firstName'),
  lastName('lastName'),
  fiscalCode('fiscalCode'),
  scoreIndex('scoreIndex'),
  scoreDesc('scoreDesc'),
  rentAmount('rentAmount'),
  scoreDate('scoreDate'),
  scoreDateExpiration('scoreDateExpiration'),
  scoreDetail('scoreDetail'),
  paymentAnalysis('paymentAnalysis'),
  accountDataAnalysis('accountDataAnalysis');

  const KnownVerifiableCredentialInformationType(this.apiValue);

  final String apiValue;

  static KnownVerifiableCredentialInformationType fromApiValue(String apiValue) {
    const values = KnownVerifiableCredentialInformationType.values;
    final isContained = values.where((e) => e.apiValue == apiValue).toList();
    return isContained.isNotEmpty ? isContained.first : unknown;
  }
}
