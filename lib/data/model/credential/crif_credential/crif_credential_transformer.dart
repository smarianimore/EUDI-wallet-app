import 'package:birex/data/model/credential/verifiablecredential.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

extension VerifiableDisclosureFormatter on VerifiableDisclosure {
  String get formatName {
    final beforeCapitalLetter = RegExp('(?=[A-Z])');
    return name.split(beforeCapitalLetter).map((e) => e.capitalize).join(' ');
  }
}

extension VerifiableCredentialFormatter on VerifiableCredential {
  String get formatName {
    final beforeCapitalLetter = RegExp('(?=[A-Z])');
    return subject.split(beforeCapitalLetter).map((e) => e.capitalize).join(' ');
  }
}

extension on List<VerifiableDisclosure> {
  VerifiableDisclosure? findByKnownType(KnownVerfiableCredentialInformationType type) {
    final result = where((element) => element.name == type.apiValue).toList();
    return result.isNotEmpty ? result.first : null;
  }
}

extension VerifiableCredentialKnownInformation on VerifiableCredential {
  VerifiableDisclosure? get firstName {
    return disclosures.findByKnownType(KnownVerfiableCredentialInformationType.firstName);
  }

  VerifiableDisclosure? get lastName {
    return disclosures.findByKnownType(KnownVerfiableCredentialInformationType.lastName);
  }

  VerifiableDisclosure? get fiscalCode {
    return disclosures.findByKnownType(KnownVerfiableCredentialInformationType.fiscalCode);
  }

  VerifiableDisclosure? get scoreIndex {
    return disclosures.findByKnownType(KnownVerfiableCredentialInformationType.scoreIndex);
  }

  VerifiableDisclosure? get scoreDesc {
    return disclosures.findByKnownType(KnownVerfiableCredentialInformationType.scoreDesc);
  }

  VerifiableDisclosure? get rentAmount {
    return disclosures.findByKnownType(KnownVerfiableCredentialInformationType.rentAmount);
  }

  VerifiableDisclosure? get scoreDate {
    return disclosures.findByKnownType(KnownVerfiableCredentialInformationType.scoreDate);
  }

  VerifiableDisclosure? get scoreDateExpiration {
    return disclosures.findByKnownType(KnownVerfiableCredentialInformationType.scoreDateExpiration);
  }

  VerifiableDisclosure? get scoreDetail {
    return disclosures.findByKnownType(KnownVerfiableCredentialInformationType.scoreDetail);
  }

  List<VerifiableDisclosure> get unknownDiscolures {
    const knownValues = KnownVerfiableCredentialInformationType.values;
    final notSupported = disclosures.where((element) => !knownValues.map((e) => e.apiValue).contains(element.name));
    return notSupported.toList();
  }

  List<VerifiableDisclosure> get unknownClaims {
    const knownValues = KnownVerfiableCredentialInformationType.values;
    final notSupported = disclosures.where((element) => !knownValues.map((e) => e.apiValue).contains(element.name));
    return notSupported.toList();
  }

  bool get hasUnknownInformations => unknownDiscolures.isNotEmpty || unknownClaims.isNotEmpty;
}

enum KnownVerfiableCredentialInformationType {
  firstName('firstName'),
  lastName('lastName'),
  fiscalCode('fiscalCode'),
  scoreIndex('scoreIndex'),
  scoreDesc('scoreDesc'),
  rentAmount('rentAmount'),
  scoreDate('scoreDate'),
  scoreDateExpiration('scoreDateExpiration'),
  scoreDetail('scoreDetail'),
  paymentAnalysis('paymentAnalysis');

  const KnownVerfiableCredentialInformationType(this.apiValue);

  final String apiValue;
}
