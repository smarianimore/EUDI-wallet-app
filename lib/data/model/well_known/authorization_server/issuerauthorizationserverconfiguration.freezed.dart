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

WellKnownAuthorizationServerInformation
    _$WellKnownAuthorizationServerInformationFromJson(
        Map<String, dynamic> json) {
  return _WellKnownAuthorizationServerInformation.fromJson(json);
}

/// @nodoc
mixin _$WellKnownAuthorizationServerInformation {
  String get issuer => throw _privateConstructorUsedError;
  @JsonKey(name: 'authorization_endpoint')
  String get authorizationEndpoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_endpoint')
  String get tokenEndpoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'grant_types_supported')
  List<String> get grantTypesSupported => throw _privateConstructorUsedError;
  @JsonKey(name: 'jwks_uri')
  String? get jwksUri => throw _privateConstructorUsedError;

  /// Serializes this WellKnownAuthorizationServerInformation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WellKnownAuthorizationServerInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WellKnownAuthorizationServerInformationCopyWith<
          WellKnownAuthorizationServerInformation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WellKnownAuthorizationServerInformationCopyWith<$Res> {
  factory $WellKnownAuthorizationServerInformationCopyWith(
          WellKnownAuthorizationServerInformation value,
          $Res Function(WellKnownAuthorizationServerInformation) then) =
      _$WellKnownAuthorizationServerInformationCopyWithImpl<$Res,
          WellKnownAuthorizationServerInformation>;
  @useResult
  $Res call(
      {String issuer,
      @JsonKey(name: 'authorization_endpoint') String authorizationEndpoint,
      @JsonKey(name: 'token_endpoint') String tokenEndpoint,
      @JsonKey(name: 'grant_types_supported') List<String> grantTypesSupported,
      @JsonKey(name: 'jwks_uri') String? jwksUri});
}

/// @nodoc
class _$WellKnownAuthorizationServerInformationCopyWithImpl<$Res,
        $Val extends WellKnownAuthorizationServerInformation>
    implements $WellKnownAuthorizationServerInformationCopyWith<$Res> {
  _$WellKnownAuthorizationServerInformationCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WellKnownAuthorizationServerInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuer = null,
    Object? authorizationEndpoint = null,
    Object? tokenEndpoint = null,
    Object? grantTypesSupported = null,
    Object? jwksUri = freezed,
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
      grantTypesSupported: null == grantTypesSupported
          ? _value.grantTypesSupported
          : grantTypesSupported // ignore: cast_nullable_to_non_nullable
              as List<String>,
      jwksUri: freezed == jwksUri
          ? _value.jwksUri
          : jwksUri // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WellKnownAuthorizationServerInformationImplCopyWith<$Res>
    implements $WellKnownAuthorizationServerInformationCopyWith<$Res> {
  factory _$$WellKnownAuthorizationServerInformationImplCopyWith(
          _$WellKnownAuthorizationServerInformationImpl value,
          $Res Function(_$WellKnownAuthorizationServerInformationImpl) then) =
      __$$WellKnownAuthorizationServerInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String issuer,
      @JsonKey(name: 'authorization_endpoint') String authorizationEndpoint,
      @JsonKey(name: 'token_endpoint') String tokenEndpoint,
      @JsonKey(name: 'grant_types_supported') List<String> grantTypesSupported,
      @JsonKey(name: 'jwks_uri') String? jwksUri});
}

/// @nodoc
class __$$WellKnownAuthorizationServerInformationImplCopyWithImpl<$Res>
    extends _$WellKnownAuthorizationServerInformationCopyWithImpl<$Res,
        _$WellKnownAuthorizationServerInformationImpl>
    implements _$$WellKnownAuthorizationServerInformationImplCopyWith<$Res> {
  __$$WellKnownAuthorizationServerInformationImplCopyWithImpl(
      _$WellKnownAuthorizationServerInformationImpl _value,
      $Res Function(_$WellKnownAuthorizationServerInformationImpl) _then)
      : super(_value, _then);

  /// Create a copy of WellKnownAuthorizationServerInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuer = null,
    Object? authorizationEndpoint = null,
    Object? tokenEndpoint = null,
    Object? grantTypesSupported = null,
    Object? jwksUri = freezed,
  }) {
    return _then(_$WellKnownAuthorizationServerInformationImpl(
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
      grantTypesSupported: null == grantTypesSupported
          ? _value._grantTypesSupported
          : grantTypesSupported // ignore: cast_nullable_to_non_nullable
              as List<String>,
      jwksUri: freezed == jwksUri
          ? _value.jwksUri
          : jwksUri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WellKnownAuthorizationServerInformationImpl
    implements _WellKnownAuthorizationServerInformation {
  _$WellKnownAuthorizationServerInformationImpl(
      {required this.issuer,
      @JsonKey(name: 'authorization_endpoint')
      required this.authorizationEndpoint,
      @JsonKey(name: 'token_endpoint') required this.tokenEndpoint,
      @JsonKey(name: 'grant_types_supported')
      required final List<String> grantTypesSupported,
      @JsonKey(name: 'jwks_uri') this.jwksUri})
      : _grantTypesSupported = grantTypesSupported;

  factory _$WellKnownAuthorizationServerInformationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WellKnownAuthorizationServerInformationImplFromJson(json);

  @override
  final String issuer;
  @override
  @JsonKey(name: 'authorization_endpoint')
  final String authorizationEndpoint;
  @override
  @JsonKey(name: 'token_endpoint')
  final String tokenEndpoint;
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
  @JsonKey(name: 'jwks_uri')
  final String? jwksUri;

  @override
  String toString() {
    return 'WellKnownAuthorizationServerInformation(issuer: $issuer, authorizationEndpoint: $authorizationEndpoint, tokenEndpoint: $tokenEndpoint, grantTypesSupported: $grantTypesSupported, jwksUri: $jwksUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WellKnownAuthorizationServerInformationImpl &&
            (identical(other.issuer, issuer) || other.issuer == issuer) &&
            (identical(other.authorizationEndpoint, authorizationEndpoint) ||
                other.authorizationEndpoint == authorizationEndpoint) &&
            (identical(other.tokenEndpoint, tokenEndpoint) ||
                other.tokenEndpoint == tokenEndpoint) &&
            const DeepCollectionEquality()
                .equals(other._grantTypesSupported, _grantTypesSupported) &&
            (identical(other.jwksUri, jwksUri) || other.jwksUri == jwksUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      issuer,
      authorizationEndpoint,
      tokenEndpoint,
      const DeepCollectionEquality().hash(_grantTypesSupported),
      jwksUri);

  /// Create a copy of WellKnownAuthorizationServerInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WellKnownAuthorizationServerInformationImplCopyWith<
          _$WellKnownAuthorizationServerInformationImpl>
      get copyWith =>
          __$$WellKnownAuthorizationServerInformationImplCopyWithImpl<
              _$WellKnownAuthorizationServerInformationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WellKnownAuthorizationServerInformationImplToJson(
      this,
    );
  }
}

abstract class _WellKnownAuthorizationServerInformation
    implements WellKnownAuthorizationServerInformation {
  factory _WellKnownAuthorizationServerInformation(
          {required final String issuer,
          @JsonKey(name: 'authorization_endpoint')
          required final String authorizationEndpoint,
          @JsonKey(name: 'token_endpoint') required final String tokenEndpoint,
          @JsonKey(name: 'grant_types_supported')
          required final List<String> grantTypesSupported,
          @JsonKey(name: 'jwks_uri') final String? jwksUri}) =
      _$WellKnownAuthorizationServerInformationImpl;

  factory _WellKnownAuthorizationServerInformation.fromJson(
          Map<String, dynamic> json) =
      _$WellKnownAuthorizationServerInformationImpl.fromJson;

  @override
  String get issuer;
  @override
  @JsonKey(name: 'authorization_endpoint')
  String get authorizationEndpoint;
  @override
  @JsonKey(name: 'token_endpoint')
  String get tokenEndpoint;
  @override
  @JsonKey(name: 'grant_types_supported')
  List<String> get grantTypesSupported;
  @override
  @JsonKey(name: 'jwks_uri')
  String? get jwksUri;

  /// Create a copy of WellKnownAuthorizationServerInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WellKnownAuthorizationServerInformationImplCopyWith<
          _$WellKnownAuthorizationServerInformationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
