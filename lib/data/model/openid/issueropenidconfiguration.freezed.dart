// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issueropenidconfiguration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IssuerOpenIDConfiguration _$IssuerOpenIDConfigurationFromJson(
    Map<String, dynamic> json) {
  return _IssuerOpenIDConfiguration.fromJson(json);
}

/// @nodoc
mixin _$IssuerOpenIDConfiguration {
  String get issuer => throw _privateConstructorUsedError;
  @JsonKey(name: 'authorization_endpoint')
  String get authorizationEndpoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_endpoint')
  String get tokenEndpoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'userinfo_endpoint')
  String get userInfoEndpoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'jwks_uri')
  String get jwksUri => throw _privateConstructorUsedError;
  @JsonKey(name: 'claims_supported')
  List<String> get claimsSupported => throw _privateConstructorUsedError;

  /// Serializes this IssuerOpenIDConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IssuerOpenIDConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IssuerOpenIDConfigurationCopyWith<IssuerOpenIDConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssuerOpenIDConfigurationCopyWith<$Res> {
  factory $IssuerOpenIDConfigurationCopyWith(IssuerOpenIDConfiguration value,
          $Res Function(IssuerOpenIDConfiguration) then) =
      _$IssuerOpenIDConfigurationCopyWithImpl<$Res, IssuerOpenIDConfiguration>;
  @useResult
  $Res call(
      {String issuer,
      @JsonKey(name: 'authorization_endpoint') String authorizationEndpoint,
      @JsonKey(name: 'token_endpoint') String tokenEndpoint,
      @JsonKey(name: 'userinfo_endpoint') String userInfoEndpoint,
      @JsonKey(name: 'jwks_uri') String jwksUri,
      @JsonKey(name: 'claims_supported') List<String> claimsSupported});
}

/// @nodoc
class _$IssuerOpenIDConfigurationCopyWithImpl<$Res,
        $Val extends IssuerOpenIDConfiguration>
    implements $IssuerOpenIDConfigurationCopyWith<$Res> {
  _$IssuerOpenIDConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IssuerOpenIDConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuer = null,
    Object? authorizationEndpoint = null,
    Object? tokenEndpoint = null,
    Object? userInfoEndpoint = null,
    Object? jwksUri = null,
    Object? claimsSupported = null,
  }) {
    return _then(_value.copyWith(
      issuer: null == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
      authorizationEndpoint: null == authorizationEndpoint
          ? _value.authorizationEndpoint
          : authorizationEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      tokenEndpoint: null == tokenEndpoint
          ? _value.tokenEndpoint
          : tokenEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      userInfoEndpoint: null == userInfoEndpoint
          ? _value.userInfoEndpoint
          : userInfoEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      jwksUri: null == jwksUri
          ? _value.jwksUri
          : jwksUri // ignore: cast_nullable_to_non_nullable
              as String,
      claimsSupported: null == claimsSupported
          ? _value.claimsSupported
          : claimsSupported // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IssuerOpenIDConfigurationImplCopyWith<$Res>
    implements $IssuerOpenIDConfigurationCopyWith<$Res> {
  factory _$$IssuerOpenIDConfigurationImplCopyWith(
          _$IssuerOpenIDConfigurationImpl value,
          $Res Function(_$IssuerOpenIDConfigurationImpl) then) =
      __$$IssuerOpenIDConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String issuer,
      @JsonKey(name: 'authorization_endpoint') String authorizationEndpoint,
      @JsonKey(name: 'token_endpoint') String tokenEndpoint,
      @JsonKey(name: 'userinfo_endpoint') String userInfoEndpoint,
      @JsonKey(name: 'jwks_uri') String jwksUri,
      @JsonKey(name: 'claims_supported') List<String> claimsSupported});
}

/// @nodoc
class __$$IssuerOpenIDConfigurationImplCopyWithImpl<$Res>
    extends _$IssuerOpenIDConfigurationCopyWithImpl<$Res,
        _$IssuerOpenIDConfigurationImpl>
    implements _$$IssuerOpenIDConfigurationImplCopyWith<$Res> {
  __$$IssuerOpenIDConfigurationImplCopyWithImpl(
      _$IssuerOpenIDConfigurationImpl _value,
      $Res Function(_$IssuerOpenIDConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of IssuerOpenIDConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuer = null,
    Object? authorizationEndpoint = null,
    Object? tokenEndpoint = null,
    Object? userInfoEndpoint = null,
    Object? jwksUri = null,
    Object? claimsSupported = null,
  }) {
    return _then(_$IssuerOpenIDConfigurationImpl(
      issuer: null == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
      authorizationEndpoint: null == authorizationEndpoint
          ? _value.authorizationEndpoint
          : authorizationEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      tokenEndpoint: null == tokenEndpoint
          ? _value.tokenEndpoint
          : tokenEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      userInfoEndpoint: null == userInfoEndpoint
          ? _value.userInfoEndpoint
          : userInfoEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      jwksUri: null == jwksUri
          ? _value.jwksUri
          : jwksUri // ignore: cast_nullable_to_non_nullable
              as String,
      claimsSupported: null == claimsSupported
          ? _value._claimsSupported
          : claimsSupported // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IssuerOpenIDConfigurationImpl implements _IssuerOpenIDConfiguration {
  _$IssuerOpenIDConfigurationImpl(
      {required this.issuer,
      @JsonKey(name: 'authorization_endpoint')
      required this.authorizationEndpoint,
      @JsonKey(name: 'token_endpoint') required this.tokenEndpoint,
      @JsonKey(name: 'userinfo_endpoint') required this.userInfoEndpoint,
      @JsonKey(name: 'jwks_uri') required this.jwksUri,
      @JsonKey(name: 'claims_supported')
      required final List<String> claimsSupported})
      : _claimsSupported = claimsSupported;

  factory _$IssuerOpenIDConfigurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$IssuerOpenIDConfigurationImplFromJson(json);

  @override
  final String issuer;
  @override
  @JsonKey(name: 'authorization_endpoint')
  final String authorizationEndpoint;
  @override
  @JsonKey(name: 'token_endpoint')
  final String tokenEndpoint;
  @override
  @JsonKey(name: 'userinfo_endpoint')
  final String userInfoEndpoint;
  @override
  @JsonKey(name: 'jwks_uri')
  final String jwksUri;
  final List<String> _claimsSupported;
  @override
  @JsonKey(name: 'claims_supported')
  List<String> get claimsSupported {
    if (_claimsSupported is EqualUnmodifiableListView) return _claimsSupported;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_claimsSupported);
  }

  @override
  String toString() {
    return 'IssuerOpenIDConfiguration(issuer: $issuer, authorizationEndpoint: $authorizationEndpoint, tokenEndpoint: $tokenEndpoint, userInfoEndpoint: $userInfoEndpoint, jwksUri: $jwksUri, claimsSupported: $claimsSupported)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssuerOpenIDConfigurationImpl &&
            (identical(other.issuer, issuer) || other.issuer == issuer) &&
            (identical(other.authorizationEndpoint, authorizationEndpoint) ||
                other.authorizationEndpoint == authorizationEndpoint) &&
            (identical(other.tokenEndpoint, tokenEndpoint) ||
                other.tokenEndpoint == tokenEndpoint) &&
            (identical(other.userInfoEndpoint, userInfoEndpoint) ||
                other.userInfoEndpoint == userInfoEndpoint) &&
            (identical(other.jwksUri, jwksUri) || other.jwksUri == jwksUri) &&
            const DeepCollectionEquality()
                .equals(other._claimsSupported, _claimsSupported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      issuer,
      authorizationEndpoint,
      tokenEndpoint,
      userInfoEndpoint,
      jwksUri,
      const DeepCollectionEquality().hash(_claimsSupported));

  /// Create a copy of IssuerOpenIDConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IssuerOpenIDConfigurationImplCopyWith<_$IssuerOpenIDConfigurationImpl>
      get copyWith => __$$IssuerOpenIDConfigurationImplCopyWithImpl<
          _$IssuerOpenIDConfigurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IssuerOpenIDConfigurationImplToJson(
      this,
    );
  }
}

abstract class _IssuerOpenIDConfiguration implements IssuerOpenIDConfiguration {
  factory _IssuerOpenIDConfiguration(
          {required final String issuer,
          @JsonKey(name: 'authorization_endpoint')
          required final String authorizationEndpoint,
          @JsonKey(name: 'token_endpoint') required final String tokenEndpoint,
          @JsonKey(name: 'userinfo_endpoint')
          required final String userInfoEndpoint,
          @JsonKey(name: 'jwks_uri') required final String jwksUri,
          @JsonKey(name: 'claims_supported')
          required final List<String> claimsSupported}) =
      _$IssuerOpenIDConfigurationImpl;

  factory _IssuerOpenIDConfiguration.fromJson(Map<String, dynamic> json) =
      _$IssuerOpenIDConfigurationImpl.fromJson;

  @override
  String get issuer;
  @override
  @JsonKey(name: 'authorization_endpoint')
  String get authorizationEndpoint;
  @override
  @JsonKey(name: 'token_endpoint')
  String get tokenEndpoint;
  @override
  @JsonKey(name: 'userinfo_endpoint')
  String get userInfoEndpoint;
  @override
  @JsonKey(name: 'jwks_uri')
  String get jwksUri;
  @override
  @JsonKey(name: 'claims_supported')
  List<String> get claimsSupported;

  /// Create a copy of IssuerOpenIDConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IssuerOpenIDConfigurationImplCopyWith<_$IssuerOpenIDConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
