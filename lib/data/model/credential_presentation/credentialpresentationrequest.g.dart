// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentialpresentationrequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CredentialPresentationRequestImpl
    _$$CredentialPresentationRequestImplFromJson(Map<String, dynamic> json) =>
        _$CredentialPresentationRequestImpl(
          nonce: json['nonce'] as String,
          clientId: json['clientId'] as String,
          responseUri: json['responseUri'] as String,
          state: json['state'] as String,
          credential: json['credential'] as String,
          presentationDefinition:
              json['presentationDefinition'] as Map<String, dynamic>,
          requiredInformation: (json['requiredInformation'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$$CredentialPresentationRequestImplToJson(
        _$CredentialPresentationRequestImpl instance) =>
    <String, dynamic>{
      'nonce': instance.nonce,
      'clientId': instance.clientId,
      'responseUri': instance.responseUri,
      'state': instance.state,
      'credential': instance.credential,
      'presentationDefinition': instance.presentationDefinition,
      'requiredInformation': instance.requiredInformation,
    };
