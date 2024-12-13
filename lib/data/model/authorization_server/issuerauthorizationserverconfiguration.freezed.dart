// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issuerauthorizationserverconfiguration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IssuerAuthorizationServerConfiguration
    _$IssuerAuthorizationServerConfigurationFromJson(
        Map<String, dynamic> json) {
  return _IssuerAuthorizationServerConfiguration.fromJson(json);
}

/// @nodoc
mixin _$IssuerAuthorizationServerConfiguration {
  String get issuer => throw _privateConstructorUsedError;
  @JsonKey(name: 'authorization_endpoint')
  String get authorizationEndpoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_endpoint')
  String get tokenEndpoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'jwks_uri')
  String get jwksUri => throw _privateConstructorUsedError;
  @JsonKey(name: 'grant_types_supported')
  List<String> get grantTypesSupported => throw _privateConstructorUsedError;

  /// Serializes this IssuerAuthorizationServerConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IssuerAuthorizationServerConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IssuerAuthorizationServerConfigurationCopyWith<
          IssuerAuthorizationServerConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssuerAuthorizationServerConfigurationCopyWith<$Res> {
  factory $IssuerAuthorizationServerConfigurationCopyWith(
          IssuerAuthorizationServerConfiguration value,
          $Res Function(IssuerAuthorizationServerConfiguration) then) =
      _$IssuerAuthorizationServerConfigurationCopyWithImpl<$Res,
          IssuerAuthorizationServerConfiguration>;
  @useResult
  $Res call(
      {String issuer,
      @JsonKey(name: 'authorization_endpoint') String authorizationEndpoint,
      @JsonKey(name: 'token_endpoint') String tokenEndpoint,
      @JsonKey(name: 'jwks_uri') String jwksUri,
      @JsonKey(name: 'grant_types_supported')
      List<String> grantTypesSupported});
}

/// @nodoc
class _$IssuerAuthorizationServerConfigurationCopyWithImpl<$Res,
        $Val extends IssuerAuthorizationServerConfiguration>
    implements $IssuerAuthorizationServerConfigurationCopyWith<$Res> {
  _$IssuerAuthorizationServerConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IssuerAuthorizationServerConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuer = null,
    Object? authorizationEndpoint = null,
    Object? tokenEndpoint = null,
    Object? jwksUri = null,
    Object? grantTypesSupported = null,
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
      jwksUri: null == jwksUri
          ? _value.jwksUri
          : jwksUri // ignore: cast_nullable_to_non_nullable
              as String,
      grantTypesSupported: null == grantTypesSupported
          ? _value.grantTypesSupported
          : grantTypesSupported // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IssuerAuthorizationServerConfigurationImplCopyWith<$Res>
    implements $IssuerAuthorizationServerConfigurationCopyWith<$Res> {
  factory _$$IssuerAuthorizationServerConfigurationImplCopyWith(
          _$IssuerAuthorizationServerConfigurationImpl value,
          $Res Function(_$IssuerAuthorizationServerConfigurationImpl) then) =
      __$$IssuerAuthorizationServerConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String issuer,
      @JsonKey(name: 'authorization_endpoint') String authorizationEndpoint,
      @JsonKey(name: 'token_endpoint') String tokenEndpoint,
      @JsonKey(name: 'jwks_uri') String jwksUri,
      @JsonKey(name: 'grant_types_supported')
      List<String> grantTypesSupported});
}

/// @nodoc
class __$$IssuerAuthorizationServerConfigurationImplCopyWithImpl<$Res>
    extends _$IssuerAuthorizationServerConfigurationCopyWithImpl<$Res,
        _$IssuerAuthorizationServerConfigurationImpl>
    implements _$$IssuerAuthorizationServerConfigurationImplCopyWith<$Res> {
  __$$IssuerAuthorizationServerConfigurationImplCopyWithImpl(
      _$IssuerAuthorizationServerConfigurationImpl _value,
      $Res Function(_$IssuerAuthorizationServerConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of IssuerAuthorizationServerConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuer = null,
    Object? authorizationEndpoint = null,
    Object? tokenEndpoint = null,
    Object? jwksUri = null,
    Object? grantTypesSupported = null,
  }) {
    return _then(_$IssuerAuthorizationServerConfigurationImpl(
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
      jwksUri: null == jwksUri
          ? _value.jwksUri
          : jwksUri // ignore: cast_nullable_to_non_nullable
              as String,
      grantTypesSupported: null == grantTypesSupported
          ? _value._grantTypesSupported
          : grantTypesSupported // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$IssuerAuthorizationServerConfigurationImpl
    implements _IssuerAuthorizationServerConfiguration {
  _$IssuerAuthorizationServerConfigurationImpl(
      {required this.issuer,
      @JsonKey(name: 'authorization_endpoint')
      required this.authorizationEndpoint,
      @JsonKey(name: 'token_endpoint') required this.tokenEndpoint,
      @JsonKey(name: 'jwks_uri') required this.jwksUri,
      @JsonKey(name: 'grant_types_supported')
      required final List<String> grantTypesSupported})
      : _grantTypesSupported = grantTypesSupported;

  factory _$IssuerAuthorizationServerConfigurationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$IssuerAuthorizationServerConfigurationImplFromJson(json);

  @override
  final String issuer;
  @override
  @JsonKey(name: 'authorization_endpoint')
  final String authorizationEndpoint;
  @override
  @JsonKey(name: 'token_endpoint')
  final String tokenEndpoint;
  @override
  @JsonKey(name: 'jwks_uri')
  final String jwksUri;
  final List<String> _grantTypesSupported;
  @override
  @JsonKey(name: 'grant_types_supported')
  List<String> get grantTypesSupported {
    if (_grantTypesSupported is EqualUnmodifiableListView)
      return _grantTypesSupported;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_grantTypesSupported);
  }

  @override
  String toString() {
    return 'IssuerAuthorizationServerConfiguration(issuer: $issuer, authorizationEndpoint: $authorizationEndpoint, tokenEndpoint: $tokenEndpoint, jwksUri: $jwksUri, grantTypesSupported: $grantTypesSupported)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssuerAuthorizationServerConfigurationImpl &&
            (identical(other.issuer, issuer) || other.issuer == issuer) &&
            (identical(other.authorizationEndpoint, authorizationEndpoint) ||
                other.authorizationEndpoint == authorizationEndpoint) &&
            (identical(other.tokenEndpoint, tokenEndpoint) ||
                other.tokenEndpoint == tokenEndpoint) &&
            (identical(other.jwksUri, jwksUri) || other.jwksUri == jwksUri) &&
            const DeepCollectionEquality()
                .equals(other._grantTypesSupported, _grantTypesSupported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      issuer,
      authorizationEndpoint,
      tokenEndpoint,
      jwksUri,
      const DeepCollectionEquality().hash(_grantTypesSupported));

  /// Create a copy of IssuerAuthorizationServerConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IssuerAuthorizationServerConfigurationImplCopyWith<
          _$IssuerAuthorizationServerConfigurationImpl>
      get copyWith =>
          __$$IssuerAuthorizationServerConfigurationImplCopyWithImpl<
              _$IssuerAuthorizationServerConfigurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IssuerAuthorizationServerConfigurationImplToJson(
      this,
    );
  }
}

abstract class _IssuerAuthorizationServerConfiguration
    implements IssuerAuthorizationServerConfiguration {
  factory _IssuerAuthorizationServerConfiguration(
          {required final String issuer,
          @JsonKey(name: 'authorization_endpoint')
          required final String authorizationEndpoint,
          @JsonKey(name: 'token_endpoint') required final String tokenEndpoint,
          @JsonKey(name: 'jwks_uri') required final String jwksUri,
          @JsonKey(name: 'grant_types_supported')
          required final List<String> grantTypesSupported}) =
      _$IssuerAuthorizationServerConfigurationImpl;

  factory _IssuerAuthorizationServerConfiguration.fromJson(
          Map<String, dynamic> json) =
      _$IssuerAuthorizationServerConfigurationImpl.fromJson;

  @override
  String get issuer;
  @override
  @JsonKey(name: 'authorization_endpoint')
  String get authorizationEndpoint;
  @override
  @JsonKey(name: 'token_endpoint')
  String get tokenEndpoint;
  @override
  @JsonKey(name: 'jwks_uri')
  String get jwksUri;
  @override
  @JsonKey(name: 'grant_types_supported')
  List<String> get grantTypesSupported;

  /// Create a copy of IssuerAuthorizationServerConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IssuerAuthorizationServerConfigurationImplCopyWith<
          _$IssuerAuthorizationServerConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
