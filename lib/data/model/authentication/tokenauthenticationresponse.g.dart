// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokenauthenticationresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CredentialPreauthorizationResponseImpl
    _$$CredentialPreauthorizationResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$CredentialPreauthorizationResponseImpl(
          credentialIssuer: json['credential_issuer'] as String,
          credentialConfigurationIds:
              (json['credential_configuration_ids'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
          grants: (json['grants'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                k,
                CredentialPreauthorizationGrant.fromJson(
                    e as Map<String, dynamic>)),
          ),
        );

Map<String, dynamic> _$$CredentialPreauthorizationResponseImplToJson(
        _$CredentialPreauthorizationResponseImpl instance) =>
    <String, dynamic>{
      'credential_issuer': instance.credentialIssuer,
      'credential_configuration_ids': instance.credentialConfigurationIds,
      'grants': instance.grants,
    };

_$CredentialPreauthorizationGrantImpl
    _$$CredentialPreauthorizationGrantImplFromJson(Map<String, dynamic> json) =>
        _$CredentialPreauthorizationGrantImpl(
          code: json['pre-authorized_code'] as String,
          transactionCode: json['tx_code'] == null
              ? null
              : TransactionCodeInformation.fromJson(
                  json['tx_code'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CredentialPreauthorizationGrantImplToJson(
        _$CredentialPreauthorizationGrantImpl instance) =>
    <String, dynamic>{
      'pre-authorized_code': instance.code,
      'tx_code': instance.transactionCode,
    };

_$TransactionCodeInformationImpl _$$TransactionCodeInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionCodeInformationImpl(
      inputMode: json['input_mode'] as String?,
      length: json['length'] as num?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$TransactionCodeInformationImplToJson(
        _$TransactionCodeInformationImpl instance) =>
    <String, dynamic>{
      'input_mode': instance.inputMode,
      'length': instance.length,
      'description': instance.description,
    };

_$TokenAuthenticationResponseImpl _$$TokenAuthenticationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenAuthenticationResponseImpl(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String,
      expiresIn: json['expires_in'] as num,
      cNonce: json['c_nonce'] as String,
      cNonceExpiresIn: json['c_nonce_expires_in'] as num,
      refreshToken: json['refresh_token'] as String?,
      idToken: json['id_token'] as String?,
    );

Map<String, dynamic> _$$TokenAuthenticationResponseImplToJson(
        _$TokenAuthenticationResponseImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      'c_nonce': instance.cNonce,
      'c_nonce_expires_in': instance.cNonceExpiresIn,
      'refresh_token': instance.refreshToken,
      'id_token': instance.idToken,
    };
