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
  }) = _CredentialPreauthorizationGrant;

  factory CredentialPreauthorizationGrant.fromJson(Map<String, dynamic> json) =>
      _$CredentialPreauthorizationGrantFromJson(json);
}

@freezed
class TokenAuthenticationResponse with _$TokenAuthenticationResponse {
  factory TokenAuthenticationResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'token_type') required String tokenType,
    @JsonKey(name: 'expires_in') required int expiresIn,
    @JsonKey(name: 'id_token') required String idToken,
    @JsonKey(name: 'c_nonce') required String cNonce,
    @JsonKey(name: 'c_nonce_expires_in') required int cNonceExpiresIn,
  }) = _TokenAuthenticationResponse;

  factory TokenAuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenAuthenticationResponseFromJson(json);
}
