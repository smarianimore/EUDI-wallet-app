import 'package:freezed_annotation/freezed_annotation.dart';

part 'keyproofresponse.freezed.dart';
part 'keyproofresponse.g.dart';

@freezed
class KeyProofResponse with _$KeyProofResponse {
  factory KeyProofResponse({
    required String jwt,
    required String proofType,
  }) = _KeyProofResponse;

  factory KeyProofResponse.fromJson(Map<String, dynamic> json) => _$KeyProofResponseFromJson(json);
}

@freezed
class SigningProofConfiguration with _$SigningProofConfiguration {
  factory SigningProofConfiguration({
    required String kty,
    required String crv,
    required String x,
    required String y,
    required String kid,
    required String use,
    required String alg,
  }) = _SigningProofConfiguration;

  factory SigningProofConfiguration.fromJson(Map<String, dynamic> json) => _$SigningProofConfigurationFromJson(json);
}
