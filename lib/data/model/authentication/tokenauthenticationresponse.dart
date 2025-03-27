import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokenauthenticationresponse.freezed.dart';
part 'tokenauthenticationresponse.g.dart';

@freezed
class TokenAuthenticationResponse with _$TokenAuthenticationResponse {
  factory TokenAuthenticationResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'token_type') required String tokenType,
    @JsonKey(name: 'expires_in') required num expiresIn,
    @JsonKey(name: 'c_nonce') required String cNonce,
    @JsonKey(name: 'c_nonce_expires_in') required num cNonceExpiresIn,
    @JsonKey(name: 'refresh_token') String? refreshToken,
    @JsonKey(name: 'id_token') String? idToken,
  }) = _TokenAuthenticationResponse;

  factory TokenAuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenAuthenticationResponseFromJson(json);
}
