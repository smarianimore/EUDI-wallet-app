import 'dart:convert';

import 'package:birex/utils/logger/custom_logger.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'supportedcredentialconfiguration.freezed.dart';
part 'supportedcredentialconfiguration.g.dart';

@freezed
class SupportedCredentialConfiguration with _$SupportedCredentialConfiguration {
  @JsonSerializable(explicitToJson: true)
  factory SupportedCredentialConfiguration({
    required String scope,
    required Map<String, SupportedClaimProperties> claims,
    @JsonKey(name: 'cryptographic_binding_methods_supported')
    required List<String> cryptographicBindingMethodsSupported,
    required List<SupportedCredentialDisplayInformation> display,
    @JsonKey(name: 'credential_signing_alg_values_supported') required List<String> credentialSigningAlgValuesSupported,
    required String format,
    required String vct,
    @JsonKey(name: 'proof_types_supported') required Map<String, dynamic> proofTypesSupported,
  }) = _SupportedCredentialConfiguration;

  factory SupportedCredentialConfiguration.fromJson(Map<String, dynamic> json) =>
      _$SupportedCredentialConfigurationFromJson(json);
}

@freezed
class SupportedCredentialDisplayInformation with _$SupportedCredentialDisplayInformation {
  @JsonSerializable(explicitToJson: true)
  factory SupportedCredentialDisplayInformation({
    required String name,
    required String locale,
    @JsonKey(name: 'background_color') required String backgroudColor,
    @JsonKey(name: 'text_color') required String textColor,
    required SupportedCredentialIssuerLogo logo,
    String? description,
  }) = _SupportedCredentialDisplayInformation;

  factory SupportedCredentialDisplayInformation.fromJson(Map<String, dynamic> json) =>
      _$SupportedCredentialDisplayInformationFromJson(json);
}

@freezed
class SupportedCredentialIssuerLogo with _$SupportedCredentialIssuerLogo {
  @JsonSerializable(explicitToJson: true)
  factory SupportedCredentialIssuerLogo({
    required String uri,
    @JsonKey(name: 'alt_text') required String altText,
  }) = _SupportedCredentialIssuerLogo;

  factory SupportedCredentialIssuerLogo.fromJson(Map<String, dynamic> json) =>
      _$SupportedCredentialIssuerLogoFromJson(json);
}

@freezed
class SupportedClaimProperties with _$SupportedClaimProperties {
  @JsonSerializable(explicitToJson: true)
  factory SupportedClaimProperties({
    required List<DisplaySupportedClaimProperties> display,
  }) = _SupportedClaimProperties;

  factory SupportedClaimProperties.fromJson(Map<String, dynamic> json) => _$SupportedClaimPropertiesFromJson(json);
}

@freezed
class DisplaySupportedClaimProperties with _$DisplaySupportedClaimProperties {
  factory DisplaySupportedClaimProperties({
    required String name,
    required String locale,
  }) = _DisplaySupportedClaimProperties;

  factory DisplaySupportedClaimProperties.fromJson(Map<String, dynamic> json) =>
      _$DisplaySupportedClaimPropertiesFromJson(json);
}

/*  */

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

extension on List<VerifiableCredentialClaim> {
  VerifiableCredentialClaim? findByKnownType(KnownVerfiableCredentialInformationType type) {
    final result = where((element) => element.name == type.apiValue).toList();
    return result.isNotEmpty ? result.first : null;
  }
}

extension VerifiableCredentialKnownInformation on VerifiableCredential {
  List<PaymentAnalysisInformation>? get paymentAnalysis {
    try {
      final match = claims.findByKnownType(KnownVerfiableCredentialInformationType.paymentAnalysis)?.value;
      if (match == null) return null;
      return PaymentAnalysisInformation.generateFromClaim(match);
    } catch (e, exception) {
      ApplicationLogger.instance.logApplicationError('Error', error: e, stacktrace: exception);
      return null;
    }
  }

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
        return 'FirstName';
      case KnownVerfiableCredentialInformationType.lastName:
        return 'LastName';
      case KnownVerfiableCredentialInformationType.fiscalCode:
        return 'FiscalCode';
      case KnownVerfiableCredentialInformationType.scoreIndex:
        return 'ScoreIndex';
      case KnownVerfiableCredentialInformationType.scoreDesc:
        return 'ScoreDesc';
      case KnownVerfiableCredentialInformationType.rentAmount:
        return 'RentAmount';
      case KnownVerfiableCredentialInformationType.scoreDate:
        return 'ScoreDate';
      case KnownVerfiableCredentialInformationType.scoreDateExpiration:
        return 'ScoreDateExpiration';
      case KnownVerfiableCredentialInformationType.scoreDetail:
        return 'ScoreDetail';
      case KnownVerfiableCredentialInformationType.paymentAnalysis:
        return 'PaymentAnalysis';
    }
  }
}

@freezed
class PaymentAnalysisInformation with _$PaymentAnalysisInformation {
  @JsonSerializable(explicitToJson: true)
  factory PaymentAnalysisInformation({
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'Desc') required String description,
  }) = _PaymentAnalysisInformation;

  factory PaymentAnalysisInformation.fromJson(Map<String, dynamic> json) => _$PaymentAnalysisInformationFromJson(json);

  static List<PaymentAnalysisInformation> generateFromClaim(String value) {
    final decoded = json.decode(value) as List<dynamic>;
    return decoded.map((e) => PaymentAnalysisInformation.fromJson(e as Map<String, dynamic>)).toList();
  }
}
