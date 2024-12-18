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
