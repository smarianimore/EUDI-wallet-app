import 'package:birex/data/model/verifiable_credentials/configuration/supportedcredentialconfiguration.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verifiablecredential.freezed.dart';
part 'verifiablecredential.g.dart';

@freezed
class VerifiableCredentialResponse with _$VerifiableCredentialResponse {
  @JsonSerializable(explicitToJson: true)
  factory VerifiableCredentialResponse({
    required String credential,
    @JsonKey(name: 'c_nonce_expires_in') required int cNonceExpiresIn,
    @JsonKey(name: 'c_nonce') required String cNonce,
  }) = _VerifiableCredentialResponse;

  factory VerifiableCredentialResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifiableCredentialResponseFromJson(json);
}

@freezed
class VerifiableCredential with _$VerifiableCredential {
  @JsonSerializable(explicitToJson: true)
  factory VerifiableCredential({
    required VerifiableCredentialResponse credentialResponse,
    required String subject,
    required List<VerifiableCredentialClaim> claims,
    required List<VerifiableDisclosure> disclosures,
    required DateTime expiresAt,
    PaymentAnalysisInformation? paymentAnalysis,
    SupportedCredentialDisplayInformation? display,
  }) = _VerifiableCredential;

  factory VerifiableCredential.fromJson(Map<String, dynamic> json) => _$VerifiableCredentialFromJson(json);
}

@freezed
class VerifiableCredentialClaim with _$VerifiableCredentialClaim {
  @JsonSerializable(explicitToJson: true)
  factory VerifiableCredentialClaim({
    required String name,
    required String value,
  }) = _VerifiableCredentialClaim;

  factory VerifiableCredentialClaim.fromJson(Map<String, dynamic> json) => _$VerifiableCredentialClaimFromJson(json);
}

@freezed
class VerifiableDisclosure with _$VerifiableDisclosure {
  @JsonSerializable(explicitToJson: true)
  factory VerifiableDisclosure({
    required String name,
    required String value,
  }) = _VerifiableDisclosure;

  factory VerifiableDisclosure.fromJson(Map<String, dynamic> json) => _$VerifiableDisclosureFromJson(json);
}

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

/* extension on List<VerifiableCredentialClaim> {
  VerifiableCredentialClaim? findByKnownType(KnownVerfiableCredentialInformationType type) {
    final result = where((element) => element.name == type.apiValue).toList();
    return result.isNotEmpty ? result.first : null;
  }
} */

extension VerifiableCredentialKnownInformation on VerifiableCredential {
/*   List<PaymentAnalysisInformation>? get paymentAnalysis {
    try {
      final match = claims.findByKnownType(KnownVerfiableCredentialInformationType.paymentAnalysis)?.value;
      if (match == null) return null;
      return PaymentAnalysisInformation.generateFromClaim(match);
    } catch (e, exception) {
      log(credentialResponse.credential);
      ApplicationLogger.instance.logApplicationError('Error', error: e, stacktrace: exception);
      return null;
    }
  } */

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
  firstName,
  lastName,
  fiscalCode,
  scoreIndex,
  scoreDesc,
  rentAmount,
  scoreDate,
  scoreDateExpiration,
  scoreDetail,
  paymentAnalysis,
}

extension on KnownVerfiableCredentialInformationType {
  String get apiValue {
    switch (this) {
      case KnownVerfiableCredentialInformationType.firstName:
        return 'firstName';
      case KnownVerfiableCredentialInformationType.lastName:
        return 'lastName';
      case KnownVerfiableCredentialInformationType.fiscalCode:
        return 'fiscalCode';
      case KnownVerfiableCredentialInformationType.scoreIndex:
        return 'scoreIndex';
      case KnownVerfiableCredentialInformationType.scoreDesc:
        return 'scoreDesc';
      case KnownVerfiableCredentialInformationType.rentAmount:
        return 'rentAmount';
      case KnownVerfiableCredentialInformationType.scoreDate:
        return 'scoreDate';
      case KnownVerfiableCredentialInformationType.scoreDateExpiration:
        return 'scoreDateExpiration';
      case KnownVerfiableCredentialInformationType.scoreDetail:
        return 'scoreDetail';
      case KnownVerfiableCredentialInformationType.paymentAnalysis:
        return 'paymentAnalysis';
    }
  }
}

@freezed
class PaymentAnalysisInformation with _$PaymentAnalysisInformation {
  @JsonSerializable(explicitToJson: true)
  factory PaymentAnalysisInformation({
    @JsonKey(name: 'Protesti') required String protestiInfo,
    @JsonKey(name: 'Ritardo nei pagamenti di prestiti e finanziamenti') required String latePaymentsInfo,
    @JsonKey(name: 'Altre informazioni pubbliche negative') required String otherNegativeInfo,
  }) = _PaymentAnalysisInformation;

  factory PaymentAnalysisInformation.fromJson(Map<String, dynamic> json) => _$PaymentAnalysisInformationFromJson(json);
}
