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
  $Res call({@JsonKey(name: 'pre-authorized_code') String code});
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
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
  $Res call({@JsonKey(name: 'pre-authorized_code') String code});
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
  }) {
    return _then(_$CredentialPreauthorizationGrantImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CredentialPreauthorizationGrantImpl
    implements _CredentialPreauthorizationGrant {
  _$CredentialPreauthorizationGrantImpl(
      {@JsonKey(name: 'pre-authorized_code') required this.code});

  factory _$CredentialPreauthorizationGrantImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CredentialPreauthorizationGrantImplFromJson(json);

  @override
  @JsonKey(name: 'pre-authorized_code')
  final String code;

  @override
  String toString() {
    return 'CredentialPreauthorizationGrant(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialPreauthorizationGrantImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

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
          {@JsonKey(name: 'pre-authorized_code') required final String code}) =
      _$CredentialPreauthorizationGrantImpl;

  factory _CredentialPreauthorizationGrant.fromJson(Map<String, dynamic> json) =
      _$CredentialPreauthorizationGrantImpl.fromJson;

  @override
  @JsonKey(name: 'pre-authorized_code')
  String get code;

  /// Create a copy of CredentialPreauthorizationGrant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CredentialPreauthorizationGrantImplCopyWith<
          _$CredentialPreauthorizationGrantImpl>
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
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in')
  int get expiresIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_token')
  String get idToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'c_nonce')
  String get cNonce => throw _privateConstructorUsedError;
  @JsonKey(name: 'c_nonce_expires_in')
  int get cNonceExpiresIn => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'id_token') String idToken,
      @JsonKey(name: 'c_nonce') String cNonce,
      @JsonKey(name: 'c_nonce_expires_in') int cNonceExpiresIn});
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
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
    Object? idToken = null,
    Object? cNonce = null,
    Object? cNonceExpiresIn = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      cNonce: null == cNonce
          ? _value.cNonce
          : cNonce // ignore: cast_nullable_to_non_nullable
              as String,
      cNonceExpiresIn: null == cNonceExpiresIn
          ? _value.cNonceExpiresIn
          : cNonceExpiresIn // ignore: cast_nullable_to_non_nullable
              as int,
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
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'id_token') String idToken,
      @JsonKey(name: 'c_nonce') String cNonce,
      @JsonKey(name: 'c_nonce_expires_in') int cNonceExpiresIn});
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
    Object? refreshToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
    Object? idToken = null,
    Object? cNonce = null,
    Object? cNonceExpiresIn = null,
  }) {
    return _then(_$TokenAuthenticationResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      cNonce: null == cNonce
          ? _value.cNonce
          : cNonce // ignore: cast_nullable_to_non_nullable
              as String,
      cNonceExpiresIn: null == cNonceExpiresIn
          ? _value.cNonceExpiresIn
          : cNonceExpiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenAuthenticationResponseImpl
    implements _TokenAuthenticationResponse {
  _$TokenAuthenticationResponseImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'token_type') required this.tokenType,
      @JsonKey(name: 'expires_in') required this.expiresIn,
      @JsonKey(name: 'id_token') required this.idToken,
      @JsonKey(name: 'c_nonce') required this.cNonce,
      @JsonKey(name: 'c_nonce_expires_in') required this.cNonceExpiresIn});

  factory _$TokenAuthenticationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TokenAuthenticationResponseImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'token_type')
  final String tokenType;
  @override
  @JsonKey(name: 'expires_in')
  final int expiresIn;
  @override
  @JsonKey(name: 'id_token')
  final String idToken;
  @override
  @JsonKey(name: 'c_nonce')
  final String cNonce;
  @override
  @JsonKey(name: 'c_nonce_expires_in')
  final int cNonceExpiresIn;

  @override
  String toString() {
    return 'TokenAuthenticationResponse(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresIn: $expiresIn, idToken: $idToken, cNonce: $cNonce, cNonceExpiresIn: $cNonceExpiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenAuthenticationResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.cNonce, cNonce) || other.cNonce == cNonce) &&
            (identical(other.cNonceExpiresIn, cNonceExpiresIn) ||
                other.cNonceExpiresIn == cNonceExpiresIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken,
      tokenType, expiresIn, idToken, cNonce, cNonceExpiresIn);

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
      @JsonKey(name: 'refresh_token') required final String refreshToken,
      @JsonKey(name: 'token_type') required final String tokenType,
      @JsonKey(name: 'expires_in') required final int expiresIn,
      @JsonKey(name: 'id_token') required final String idToken,
      @JsonKey(name: 'c_nonce') required final String cNonce,
      @JsonKey(name: 'c_nonce_expires_in')
      required final int cNonceExpiresIn}) = _$TokenAuthenticationResponseImpl;

  factory _TokenAuthenticationResponse.fromJson(Map<String, dynamic> json) =
      _$TokenAuthenticationResponseImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;
  @override
  @JsonKey(name: 'expires_in')
  int get expiresIn;
  @override
  @JsonKey(name: 'id_token')
  String get idToken;
  @override
  @JsonKey(name: 'c_nonce')
  String get cNonce;
  @override
  @JsonKey(name: 'c_nonce_expires_in')
  int get cNonceExpiresIn;

  /// Create a copy of TokenAuthenticationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenAuthenticationResponseImplCopyWith<_$TokenAuthenticationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
