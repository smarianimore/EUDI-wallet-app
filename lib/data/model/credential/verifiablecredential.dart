import 'package:birex/data/model/well_known/wellknown.dart';
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
