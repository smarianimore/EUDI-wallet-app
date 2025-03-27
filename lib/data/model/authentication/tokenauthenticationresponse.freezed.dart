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
