import 'package:birex/data/model/credential/crif_credential/crif_credential_transformer.dart';
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
    required DateTime expiresAt,
    required List<KnownVerifiableCredentialInformation> knownCredentialInfo,
    @Default(<VerifiableDisclosure>[]) List<VerifiableDisclosure> unknownDisclosures,
    @Default(<VerifiableDisclosure>[]) List<VerifiableDisclosure> unknownClaims,
    SupportedCredentialConfiguration? credentialConfiguration,
  }) = _VerifiableCredential;

  factory VerifiableCredential.fromJson(Map<String, dynamic> json) => _$VerifiableCredentialFromJson(json);
}

@freezed
class KnownVerifiableCredentialInformation with _$KnownVerifiableCredentialInformation {
  @JsonSerializable(explicitToJson: true)
  factory KnownVerifiableCredentialInformation({
    required KnownVerifiableCredentialInformationType type,
    String? disclosure,
    PaymentAnalysisInformation? paymentAnalysis,
    AccountDataAnalysis? accountDataAnalysis,
    VerifiableDisclosure? basicKeyValue,
  }) = _KnownVerifiableCredentialInformation;

  factory KnownVerifiableCredentialInformation.fromJson(Map<String, dynamic> json) =>
      _$KnownVerifiableCredentialInformationFromJson(json);
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

@freezed
class AccountDataAnalysis with _$AccountDataAnalysis {
  @JsonSerializable(explicitToJson: true)
  factory AccountDataAnalysis({
    @JsonKey(name: 'Equilibrio tra Uscite e Entrate') required String cashflowBalance,
    @JsonKey(name: 'Rapporto tra Uscite e Saldo Mensile') required String incomeOutcomeRatio,
    @JsonKey(name: 'Conto utilizzato per Tasse o Utenze') required String taxesOrUtilitiesAccount,
    @JsonKey(name: 'Presenza di Entrate Ricorrenti') required String recurringIncome,
    @JsonKey(name: 'Caratteristiche del conto') required String accountDescription,
    @JsonKey(name: 'Incidenza Impegni Finanziari sul Reddito') required String financialCommitments,
    @JsonKey(name: 'Conto destinato a uscite “virtuose”') required String extraordinaryIncome,
  }) = _AccountDataAnalysis;

  factory AccountDataAnalysis.fromJson(Map<String, dynamic> json) => _$AccountDataAnalysisFromJson(json);
}
