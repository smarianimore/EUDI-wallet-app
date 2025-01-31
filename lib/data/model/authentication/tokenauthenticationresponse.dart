import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokenauthenticationresponse.freezed.dart';
part 'tokenauthenticationresponse.g.dart';

@freezed
class CredentialPreauthorizationResponse with _$CredentialPreauthorizationResponse {
  factory CredentialPreauthorizationResponse({
    @JsonKey(name: 'credential_issuer') required String credentialIssuer,
    @JsonKey(name: 'credential_configuration_ids') required List<String> credentialConfigurationIds,
    required Map<String, CredentialPreauthorizationGrant> grants,
  }) = _CredentialPreauthorizationResponse;

  factory CredentialPreauthorizationResponse.fromJson(Map<String, dynamic> json) =>
      _$CredentialPreauthorizationResponseFromJson(json);
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

@freezed
class TokenAuthenticationResponse with _$TokenAuthenticationResponse {
  factory TokenAuthenticationResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'token_type') required String tokenType,
    @JsonKey(name: 'expires_in') required int expiresIn,
    @JsonKey(name: 'c_nonce') required String cNonce,
    @JsonKey(name: 'c_nonce_expires_in') required int cNonceExpiresIn,
    @JsonKey(name: 'refresh_token') String? refreshToken,
    @JsonKey(name: 'id_token') String? idToken,
  }) = _TokenAuthenticationResponse;

  factory TokenAuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenAuthenticationResponseFromJson(json);
}
