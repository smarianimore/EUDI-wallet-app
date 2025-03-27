import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentialofferresponse.freezed.dart';
part 'credentialofferresponse.g.dart';

@freezed
class CredentialOfferResponse with _$CredentialOfferResponse {
  factory CredentialOfferResponse({
    @JsonKey(name: 'credential_issuer') required String credentialIssuer,
    @JsonKey(name: 'credential_configuration_ids') required List<String> credentialConfigurationIds,
    required Map<String, CredentialPreauthorizationGrant> grants,
  }) = _CredentialOfferResponse;

  factory CredentialOfferResponse.fromJson(Map<String, dynamic> json) => _$CredentialOfferResponseFromJson(json);
}

@freezed
class CredentialPreauthorizationGrant with _$CredentialPreauthorizationGrant {
  factory CredentialPreauthorizationGrant({
    @JsonKey(name: 'pre-authorized_code') required String code,
    @JsonKey(name: 'tx_code') TransactionCodeInformation? transactionCode,
  }) = _CredentialPreauthorizationGrant;

  factory CredentialPreauthorizationGrant.fromJson(Map<String, dynamic> json) =>
      _$CredentialPreauthorizationGrantFromJson(json);
}

@freezed
class TransactionCodeInformation with _$TransactionCodeInformation {
  factory TransactionCodeInformation({
    @JsonKey(name: 'input_mode') String? inputMode,
    num? length,
    String? description,
  }) = _TransactionCodeInformation;

  factory TransactionCodeInformation.fromJson(Map<String, dynamic> json) => _$TransactionCodeInformationFromJson(json);
}
