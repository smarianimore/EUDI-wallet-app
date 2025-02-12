// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tokenauthenticationresponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CredentialPreauthorizationResponse _$CredentialPreauthorizationResponseFromJson(
    Map<String, dynamic> json) {
  return _CredentialPreauthorizationResponse.fromJson(json);
}

/// @nodoc
mixin _$CredentialPreauthorizationResponse {
  @JsonKey(name: 'credential_issuer')
  String get credentialIssuer => throw _privateConstructorUsedError;
  @JsonKey(name: 'credential_configuration_ids')
  List<String> get credentialConfigurationIds =>
      throw _privateConstructorUsedError;
  Map<String, CredentialPreauthorizationGrant> get grants =>
      throw _privateConstructorUsedError;

  /// Serializes this CredentialPreauthorizationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CredentialPreauthorizationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CredentialPreauthorizationResponseCopyWith<
          CredentialPreauthorizationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialPreauthorizationResponseCopyWith<$Res> {
  factory $CredentialPreauthorizationResponseCopyWith(
          CredentialPreauthorizationResponse value,
          $Res Function(CredentialPreauthorizationResponse) then) =
      _$CredentialPreauthorizationResponseCopyWithImpl<$Res,
          CredentialPreauthorizationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'credential_issuer') String credentialIssuer,
      @JsonKey(name: 'credential_configuration_ids')
      List<String> credentialConfigurationIds,
      Map<String, CredentialPreauthorizationGrant> grants});
}

/// @nodoc
class _$CredentialPreauthorizationResponseCopyWithImpl<$Res,
        $Val extends CredentialPreauthorizationResponse>
    implements $CredentialPreauthorizationResponseCopyWith<$Res> {
  _$CredentialPreauthorizationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CredentialPreauthorizationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentialIssuer = null,
    Object? credentialConfigurationIds = null,
    Object? grants = null,
  }) {
    return _then(_value.copyWith(
      credentialIssuer: null == credentialIssuer
          ? _value.credentialIssuer
          : credentialIssuer // ignore: cast_nullable_to_non_nullable
              as String,
      credentialConfigurationIds: null == credentialConfigurationIds
          ? _value.credentialConfigurationIds
          : credentialConfigurationIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      grants: null == grants
          ? _value.grants
          : grants // ignore: cast_nullable_to_non_nullable
              as Map<String, CredentialPreauthorizationGrant>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CredentialPreauthorizationResponseImplCopyWith<$Res>
    implements $CredentialPreauthorizationResponseCopyWith<$Res> {
  factory _$$CredentialPreauthorizationResponseImplCopyWith(
          _$CredentialPreauthorizationResponseImpl value,
          $Res Function(_$CredentialPreauthorizationResponseImpl) then) =
      __$$CredentialPreauthorizationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'credential_issuer') String credentialIssuer,
      @JsonKey(name: 'credential_configuration_ids')
      List<String> credentialConfigurationIds,
      Map<String, CredentialPreauthorizationGrant> grants});
}

/// @nodoc
class __$$CredentialPreauthorizationResponseImplCopyWithImpl<$Res>
    extends _$CredentialPreauthorizationResponseCopyWithImpl<$Res,
        _$CredentialPreauthorizationResponseImpl>
    implements _$$CredentialPreauthorizationResponseImplCopyWith<$Res> {
  __$$CredentialPreauthorizationResponseImplCopyWithImpl(
      _$CredentialPreauthorizationResponseImpl _value,
      $Res Function(_$CredentialPreauthorizationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CredentialPreauthorizationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentialIssuer = null,
    Object? credentialConfigurationIds = null,
    Object? grants = null,
  }) {
    return _then(_$CredentialPreauthorizationResponseImpl(
      credentialIssuer: null == credentialIssuer
          ? _value.credentialIssuer
          : credentialIssuer // ignore: cast_nullable_to_non_nullable
              as String,
      credentialConfigurationIds: null == credentialConfigurationIds
          ? _value._credentialConfigurationIds
          : credentialConfigurationIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      grants: null == grants
          ? _value._grants
          : grants // ignore: cast_nullable_to_non_nullable
              as Map<String, CredentialPreauthorizationGrant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CredentialPreauthorizationResponseImpl
    implements _CredentialPreauthorizationResponse {
  _$CredentialPreauthorizationResponseImpl(
      {@JsonKey(name: 'credential_issuer') required this.credentialIssuer,
      @JsonKey(name: 'credential_configuration_ids')
      required final List<String> credentialConfigurationIds,
      required final Map<String, CredentialPreauthorizationGrant> grants})
      : _credentialConfigurationIds = credentialConfigurationIds,
        _grants = grants;

  factory _$CredentialPreauthorizationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CredentialPreauthorizationResponseImplFromJson(json);

  @override
  @JsonKey(name: 'credential_issuer')
  final String credentialIssuer;
  final List<String> _credentialConfigurationIds;
  @override
  @JsonKey(name: 'credential_configuration_ids')
  List<String> get credentialConfigurationIds {
    if (_credentialConfigurationIds is EqualUnmodifiableListView)
      return _credentialConfigurationIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_credentialConfigurationIds);
  }

  final Map<String, CredentialPreauthorizationGrant> _grants;
  @override
  Map<String, CredentialPreauthorizationGrant> get grants {
    if (_grants is EqualUnmodifiableMapView) return _grants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_grants);
  }

  @override
  String toString() {
    return 'CredentialPreauthorizationResponse(credentialIssuer: $credentialIssuer, credentialConfigurationIds: $credentialConfigurationIds, grants: $grants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialPreauthorizationResponseImpl &&
            (identical(other.credentialIssuer, credentialIssuer) ||
                other.credentialIssuer == credentialIssuer) &&
            const DeepCollectionEquality().equals(
                other._credentialConfigurationIds,
                _credentialConfigurationIds) &&
            const DeepCollectionEquality().equals(other._grants, _grants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      credentialIssuer,
      const DeepCollectionEquality().hash(_credentialConfigurationIds),
      const DeepCollectionEquality().hash(_grants));

  /// Create a copy of CredentialPreauthorizationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CredentialPreauthorizationResponseImplCopyWith<
          _$CredentialPreauthorizationResponseImpl>
      get copyWith => __$$CredentialPreauthorizationResponseImplCopyWithImpl<
          _$CredentialPreauthorizationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CredentialPreauthorizationResponseImplToJson(
      this,
    );
  }
}

abstract class _CredentialPreauthorizationResponse
    implements CredentialPreauthorizationResponse {
  factory _CredentialPreauthorizationResponse(
          {@JsonKey(name: 'credential_issuer')
          required final String credentialIssuer,
          @JsonKey(name: 'credential_configuration_ids')
          required final List<String> credentialConfigurationIds,
          required final Map<String, CredentialPreauthorizationGrant> grants}) =
      _$CredentialPreauthorizationResponseImpl;

  factory _CredentialPreauthorizationResponse.fromJson(
          Map<String, dynamic> json) =
      _$CredentialPreauthorizationResponseImpl.fromJson;

  @override
  @JsonKey(name: 'credential_issuer')
  String get credentialIssuer;
  @override
  @JsonKey(name: 'credential_configuration_ids')
  List<String> get credentialConfigurationIds;
  @override
  Map<String, CredentialPreauthorizationGrant> get grants;

  /// Create a copy of CredentialPreauthorizationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CredentialPreauthorizationResponseImplCopyWith<
          _$CredentialPreauthorizationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CredentialPreauthorizationGrant _$CredentialPreauthorizationGrantFromJson(
    Map<String, dynamic> json) {
  return _CredentialPreauthorizationGrant.fromJson(json);
}

/// @nodoc
mixin _$CredentialPreauthorizationGrant {
  @JsonKey(name: 'pre-authorized_code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'tx_code')
  TransactionCodeInformation? get transactionCode =>
      throw _privateConstructorUsedError;

  /// Serializes this CredentialPreauthorizationGrant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CredentialPreauthorizationGrant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CredentialPreauthorizationGrantCopyWith<CredentialPreauthorizationGrant>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialPreauthorizationGrantCopyWith<$Res> {
  factory $CredentialPreauthorizationGrantCopyWith(
          CredentialPreauthorizationGrant value,
          $Res Function(CredentialPreauthorizationGrant) then) =
      _$CredentialPreauthorizationGrantCopyWithImpl<$Res,
          CredentialPreauthorizationGrant>;
  @useResult
  $Res call(
      {@JsonKey(name: 'pre-authorized_code') String code,
      @JsonKey(name: 'tx_code') TransactionCodeInformation? transactionCode});

  $TransactionCodeInformationCopyWith<$Res>? get transactionCode;
}

/// @nodoc
class _$CredentialPreauthorizationGrantCopyWithImpl<$Res,
        $Val extends CredentialPreauthorizationGrant>
    implements $CredentialPreauthorizationGrantCopyWith<$Res> {
  _$CredentialPreauthorizationGrantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CredentialPreauthorizationGrant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? transactionCode = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as TransactionCodeInformation?,
    ) as $Val);
  }

  /// Create a copy of CredentialPreauthorizationGrant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCodeInformationCopyWith<$Res>? get transactionCode {
    if (_value.transactionCode == null) {
      return null;
    }

    return $TransactionCodeInformationCopyWith<$Res>(_value.transactionCode!,
        (value) {
      return _then(_value.copyWith(transactionCode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CredentialPreauthorizationGrantImplCopyWith<$Res>
    implements $CredentialPreauthorizationGrantCopyWith<$Res> {
  factory _$$CredentialPreauthorizationGrantImplCopyWith(
          _$CredentialPreauthorizationGrantImpl value,
          $Res Function(_$CredentialPreauthorizationGrantImpl) then) =
      __$$CredentialPreauthorizationGrantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pre-authorized_code') String code,
      @JsonKey(name: 'tx_code') TransactionCodeInformation? transactionCode});

  @override
  $TransactionCodeInformationCopyWith<$Res>? get transactionCode;
}

/// @nodoc
class __$$CredentialPreauthorizationGrantImplCopyWithImpl<$Res>
    extends _$CredentialPreauthorizationGrantCopyWithImpl<$Res,
        _$CredentialPreauthorizationGrantImpl>
    implements _$$CredentialPreauthorizationGrantImplCopyWith<$Res> {
  __$$CredentialPreauthorizationGrantImplCopyWithImpl(
      _$CredentialPreauthorizationGrantImpl _value,
      $Res Function(_$CredentialPreauthorizationGrantImpl) _then)
      : super(_value, _then);

  /// Create a copy of CredentialPreauthorizationGrant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? transactionCode = freezed,
  }) {
    return _then(_$CredentialPreauthorizationGrantImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      transactionCode: freezed == transactionCode
          ? _value.transactionCode
          : transactionCode // ignore: cast_nullable_to_non_nullable
              as TransactionCodeInformation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CredentialPreauthorizationGrantImpl
    implements _CredentialPreauthorizationGrant {
  _$CredentialPreauthorizationGrantImpl(
      {@JsonKey(name: 'pre-authorized_code') required this.code,
      @JsonKey(name: 'tx_code') this.transactionCode});

  factory _$CredentialPreauthorizationGrantImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CredentialPreauthorizationGrantImplFromJson(json);

  @override
  @JsonKey(name: 'pre-authorized_code')
  final String code;
  @override
  @JsonKey(name: 'tx_code')
  final TransactionCodeInformation? transactionCode;

  @override
  String toString() {
    return 'CredentialPreauthorizationGrant(code: $code, transactionCode: $transactionCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialPreauthorizationGrantImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.transactionCode, transactionCode) ||
                other.transactionCode == transactionCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, transactionCode);

  /// Create a copy of CredentialPreauthorizationGrant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CredentialPreauthorizationGrantImplCopyWith<
          _$CredentialPreauthorizationGrantImpl>
      get copyWith => __$$CredentialPreauthorizationGrantImplCopyWithImpl<
          _$CredentialPreauthorizationGrantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CredentialPreauthorizationGrantImplToJson(
      this,
    );
  }
}

abstract class _CredentialPreauthorizationGrant
    implements CredentialPreauthorizationGrant {
  factory _CredentialPreauthorizationGrant(
          {@JsonKey(name: 'pre-authorized_code') required final String code,
          @JsonKey(name: 'tx_code')
          final TransactionCodeInformation? transactionCode}) =
      _$CredentialPreauthorizationGrantImpl;

  factory _CredentialPreauthorizationGrant.fromJson(Map<String, dynamic> json) =
      _$CredentialPreauthorizationGrantImpl.fromJson;

  @override
  @JsonKey(name: 'pre-authorized_code')
  String get code;
  @override
  @JsonKey(name: 'tx_code')
  TransactionCodeInformation? get transactionCode;

  /// Create a copy of CredentialPreauthorizationGrant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CredentialPreauthorizationGrantImplCopyWith<
          _$CredentialPreauthorizationGrantImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionCodeInformation _$TransactionCodeInformationFromJson(
    Map<String, dynamic> json) {
  return _TransactionCodeInformation.fromJson(json);
}

/// @nodoc
mixin _$TransactionCodeInformation {
  @JsonKey(name: 'input_mode')
  String? get inputMode => throw _privateConstructorUsedError;
  num? get length => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this TransactionCodeInformation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionCodeInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCodeInformationCopyWith<TransactionCodeInformation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCodeInformationCopyWith<$Res> {
  factory $TransactionCodeInformationCopyWith(TransactionCodeInformation value,
          $Res Function(TransactionCodeInformation) then) =
      _$TransactionCodeInformationCopyWithImpl<$Res,
          TransactionCodeInformation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'input_mode') String? inputMode,
      num? length,
      String? description});
}

/// @nodoc
class _$TransactionCodeInformationCopyWithImpl<$Res,
        $Val extends TransactionCodeInformation>
    implements $TransactionCodeInformationCopyWith<$Res> {
  _$TransactionCodeInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionCodeInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputMode = freezed,
    Object? length = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      inputMode: freezed == inputMode
          ? _value.inputMode
          : inputMode // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as num?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionCodeInformationImplCopyWith<$Res>
    implements $TransactionCodeInformationCopyWith<$Res> {
  factory _$$TransactionCodeInformationImplCopyWith(
          _$TransactionCodeInformationImpl value,
          $Res Function(_$TransactionCodeInformationImpl) then) =
      __$$TransactionCodeInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'input_mode') String? inputMode,
      num? length,
      String? description});
}

/// @nodoc
class __$$TransactionCodeInformationImplCopyWithImpl<$Res>
    extends _$TransactionCodeInformationCopyWithImpl<$Res,
        _$TransactionCodeInformationImpl>
    implements _$$TransactionCodeInformationImplCopyWith<$Res> {
  __$$TransactionCodeInformationImplCopyWithImpl(
      _$TransactionCodeInformationImpl _value,
      $Res Function(_$TransactionCodeInformationImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionCodeInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inputMode = freezed,
    Object? length = freezed,
    Object? description = freezed,
  }) {
    return _then(_$TransactionCodeInformationImpl(
      inputMode: freezed == inputMode
          ? _value.inputMode
          : inputMode // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as num?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionCodeInformationImpl implements _TransactionCodeInformation {
  _$TransactionCodeInformationImpl(
      {@JsonKey(name: 'input_mode') this.inputMode,
      this.length,
      this.description});

  factory _$TransactionCodeInformationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionCodeInformationImplFromJson(json);

  @override
  @JsonKey(name: 'input_mode')
  final String? inputMode;
  @override
  final num? length;
  @override
  final String? description;

  @override
  String toString() {
    return 'TransactionCodeInformation(inputMode: $inputMode, length: $length, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionCodeInformationImpl &&
            (identical(other.inputMode, inputMode) ||
                other.inputMode == inputMode) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, inputMode, length, description);

  /// Create a copy of TransactionCodeInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionCodeInformationImplCopyWith<_$TransactionCodeInformationImpl>
      get copyWith => __$$TransactionCodeInformationImplCopyWithImpl<
          _$TransactionCodeInformationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionCodeInformationImplToJson(
      this,
    );
  }
}

abstract class _TransactionCodeInformation
    implements TransactionCodeInformation {
  factory _TransactionCodeInformation(
      {@JsonKey(name: 'input_mode') final String? inputMode,
      final num? length,
      final String? description}) = _$TransactionCodeInformationImpl;

  factory _TransactionCodeInformation.fromJson(Map<String, dynamic> json) =
      _$TransactionCodeInformationImpl.fromJson;

  @override
  @JsonKey(name: 'input_mode')
  String? get inputMode;
  @override
  num? get length;
  @override
  String? get description;

  /// Create a copy of TransactionCodeInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionCodeInformationImplCopyWith<_$TransactionCodeInformationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TokenAuthenticationResponse _$TokenAuthenticationResponseFromJson(
    Map<String, dynamic> json) {
  return _TokenAuthenticationResponse.fromJson(json);
}

/// @nodoc
mixin _$TokenAuthenticationResponse {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in')
  num get expiresIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'c_nonce')
  String get cNonce => throw _privateConstructorUsedError;
  @JsonKey(name: 'c_nonce_expires_in')
  num get cNonceExpiresIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String? get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_token')
  String? get idToken => throw _privateConstructorUsedError;

  /// Serializes this TokenAuthenticationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenAuthenticationResponseCopyWith<TokenAuthenticationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenAuthenticationResponseCopyWith<$Res> {
  factory $TokenAuthenticationResponseCopyWith(
          TokenAuthenticationResponse value,
          $Res Function(TokenAuthenticationResponse) then) =
      _$TokenAuthenticationResponseCopyWithImpl<$Res,
          TokenAuthenticationResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'expires_in') num expiresIn,
      @JsonKey(name: 'c_nonce') String cNonce,
      @JsonKey(name: 'c_nonce_expires_in') num cNonceExpiresIn,
      @JsonKey(name: 'refresh_token') String? refreshToken,
      @JsonKey(name: 'id_token') String? idToken});
}

/// @nodoc
class _$TokenAuthenticationResponseCopyWithImpl<$Res,
        $Val extends TokenAuthenticationResponse>
    implements $TokenAuthenticationResponseCopyWith<$Res> {
  _$TokenAuthenticationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
    Object? cNonce = null,
    Object? cNonceExpiresIn = null,
    Object? refreshToken = freezed,
    Object? idToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as num,
      cNonce: null == cNonce
          ? _value.cNonce
          : cNonce // ignore: cast_nullable_to_non_nullable
              as String,
      cNonceExpiresIn: null == cNonceExpiresIn
          ? _value.cNonceExpiresIn
          : cNonceExpiresIn // ignore: cast_nullable_to_non_nullable
              as num,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenAuthenticationResponseImplCopyWith<$Res>
    implements $TokenAuthenticationResponseCopyWith<$Res> {
  factory _$$TokenAuthenticationResponseImplCopyWith(
          _$TokenAuthenticationResponseImpl value,
          $Res Function(_$TokenAuthenticationResponseImpl) then) =
      __$$TokenAuthenticationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'expires_in') num expiresIn,
      @JsonKey(name: 'c_nonce') String cNonce,
      @JsonKey(name: 'c_nonce_expires_in') num cNonceExpiresIn,
      @JsonKey(name: 'refresh_token') String? refreshToken,
      @JsonKey(name: 'id_token') String? idToken});
}

/// @nodoc
class __$$TokenAuthenticationResponseImplCopyWithImpl<$Res>
    extends _$TokenAuthenticationResponseCopyWithImpl<$Res,
        _$TokenAuthenticationResponseImpl>
    implements _$$TokenAuthenticationResponseImplCopyWith<$Res> {
  __$$TokenAuthenticationResponseImplCopyWithImpl(
      _$TokenAuthenticationResponseImpl _value,
      $Res Function(_$TokenAuthenticationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
    Object? cNonce = null,
    Object? cNonceExpiresIn = null,
    Object? refreshToken = freezed,
    Object? idToken = freezed,
  }) {
    return _then(_$TokenAuthenticationResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as num,
      cNonce: null == cNonce
          ? _value.cNonce
          : cNonce // ignore: cast_nullable_to_non_nullable
              as String,
      cNonceExpiresIn: null == cNonceExpiresIn
          ? _value.cNonceExpiresIn
          : cNonceExpiresIn // ignore: cast_nullable_to_non_nullable
              as num,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenAuthenticationResponseImpl
    implements _TokenAuthenticationResponse {
  _$TokenAuthenticationResponseImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'token_type') required this.tokenType,
      @JsonKey(name: 'expires_in') required this.expiresIn,
      @JsonKey(name: 'c_nonce') required this.cNonce,
      @JsonKey(name: 'c_nonce_expires_in') required this.cNonceExpiresIn,
      @JsonKey(name: 'refresh_token') this.refreshToken,
      @JsonKey(name: 'id_token') this.idToken});

  factory _$TokenAuthenticationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TokenAuthenticationResponseImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'token_type')
  final String tokenType;
  @override
  @JsonKey(name: 'expires_in')
  final num expiresIn;
  @override
  @JsonKey(name: 'c_nonce')
  final String cNonce;
  @override
  @JsonKey(name: 'c_nonce_expires_in')
  final num cNonceExpiresIn;
  @override
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
  @override
  @JsonKey(name: 'id_token')
  final String? idToken;

  @override
  String toString() {
    return 'TokenAuthenticationResponse(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn, cNonce: $cNonce, cNonceExpiresIn: $cNonceExpiresIn, refreshToken: $refreshToken, idToken: $idToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenAuthenticationResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.cNonce, cNonce) || other.cNonce == cNonce) &&
            (identical(other.cNonceExpiresIn, cNonceExpiresIn) ||
                other.cNonceExpiresIn == cNonceExpiresIn) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, tokenType,
      expiresIn, cNonce, cNonceExpiresIn, refreshToken, idToken);

  /// Create a copy of TokenAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenAuthenticationResponseImplCopyWith<_$TokenAuthenticationResponseImpl>
      get copyWith => __$$TokenAuthenticationResponseImplCopyWithImpl<
          _$TokenAuthenticationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenAuthenticationResponseImplToJson(
      this,
    );
  }
}

abstract class _TokenAuthenticationResponse
    implements TokenAuthenticationResponse {
  factory _TokenAuthenticationResponse(
      {@JsonKey(name: 'access_token') required final String accessToken,
      @JsonKey(name: 'token_type') required final String tokenType,
      @JsonKey(name: 'expires_in') required final num expiresIn,
      @JsonKey(name: 'c_nonce') required final String cNonce,
      @JsonKey(name: 'c_nonce_expires_in') required final num cNonceExpiresIn,
      @JsonKey(name: 'refresh_token') final String? refreshToken,
      @JsonKey(name: 'id_token')
      final String? idToken}) = _$TokenAuthenticationResponseImpl;

  factory _TokenAuthenticationResponse.fromJson(Map<String, dynamic> json) =
      _$TokenAuthenticationResponseImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;
  @override
  @JsonKey(name: 'expires_in')
  num get expiresIn;
  @override
  @JsonKey(name: 'c_nonce')
  String get cNonce;
  @override
  @JsonKey(name: 'c_nonce_expires_in')
  num get cNonceExpiresIn;
  @override
  @JsonKey(name: 'refresh_token')
  String? get refreshToken;
  @override
  @JsonKey(name: 'id_token')
  String? get idToken;

  /// Create a copy of TokenAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenAuthenticationResponseImplCopyWith<_$TokenAuthenticationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
