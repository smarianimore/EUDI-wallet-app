import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentialpresentationrequest.freezed.dart';
part 'credentialpresentationrequest.g.dart';

@freezed
class CredentialPresentationRequest with _$CredentialPresentationRequest {
  factory CredentialPresentationRequest({
    required String nonce,
    required String clientId,
    required String responseUri,
    required String state,
    required String credential,
    required Map<String, dynamic> presentationDefinition,
    required List<String> requiredInformation,
  }) = _CredentialPresentationRequest;

  factory CredentialPresentationRequest.fromJson(Map<String, dynamic> json) =>
      _$CredentialPresentationRequestFromJson(json);
}
