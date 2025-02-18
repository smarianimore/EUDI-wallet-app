// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyproofresponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KeyProofResponse _$KeyProofResponseFromJson(Map<String, dynamic> json) {
  return _KeyProofResponse.fromJson(json);
}

/// @nodoc
mixin _$KeyProofResponse {
  String get jwt => throw _privateConstructorUsedError;
  String get proofType => throw _privateConstructorUsedError;

  /// Serializes this KeyProofResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeyProofResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyProofResponseCopyWith<KeyProofResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyProofResponseCopyWith<$Res> {
  factory $KeyProofResponseCopyWith(
          KeyProofResponse value, $Res Function(KeyProofResponse) then) =
      _$KeyProofResponseCopyWithImpl<$Res, KeyProofResponse>;
  @useResult
  $Res call({String jwt, String proofType});
}

/// @nodoc
class _$KeyProofResponseCopyWithImpl<$Res, $Val extends KeyProofResponse>
    implements $KeyProofResponseCopyWith<$Res> {
  _$KeyProofResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeyProofResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? proofType = null,
  }) {
    return _then(_value.copyWith(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      proofType: null == proofType
          ? _value.proofType
          : proofType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyProofResponseImplCopyWith<$Res>
    implements $KeyProofResponseCopyWith<$Res> {
  factory _$$KeyProofResponseImplCopyWith(_$KeyProofResponseImpl value,
          $Res Function(_$KeyProofResponseImpl) then) =
      __$$KeyProofResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jwt, String proofType});
}

/// @nodoc
class __$$KeyProofResponseImplCopyWithImpl<$Res>
    extends _$KeyProofResponseCopyWithImpl<$Res, _$KeyProofResponseImpl>
    implements _$$KeyProofResponseImplCopyWith<$Res> {
  __$$KeyProofResponseImplCopyWithImpl(_$KeyProofResponseImpl _value,
      $Res Function(_$KeyProofResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeyProofResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? proofType = null,
  }) {
    return _then(_$KeyProofResponseImpl(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      proofType: null == proofType
          ? _value.proofType
          : proofType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyProofResponseImpl implements _KeyProofResponse {
  _$KeyProofResponseImpl({required this.jwt, required this.proofType});

  factory _$KeyProofResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyProofResponseImplFromJson(json);

  @override
  final String jwt;
  @override
  final String proofType;

  @override
  String toString() {
    return 'KeyProofResponse(jwt: $jwt, proofType: $proofType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyProofResponseImpl &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.proofType, proofType) ||
                other.proofType == proofType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jwt, proofType);

  /// Create a copy of KeyProofResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyProofResponseImplCopyWith<_$KeyProofResponseImpl> get copyWith =>
      __$$KeyProofResponseImplCopyWithImpl<_$KeyProofResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyProofResponseImplToJson(
      this,
    );
  }
}

abstract class _KeyProofResponse implements KeyProofResponse {
  factory _KeyProofResponse(
      {required final String jwt,
      required final String proofType}) = _$KeyProofResponseImpl;

  factory _KeyProofResponse.fromJson(Map<String, dynamic> json) =
      _$KeyProofResponseImpl.fromJson;

  @override
  String get jwt;
  @override
  String get proofType;

  /// Create a copy of KeyProofResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyProofResponseImplCopyWith<_$KeyProofResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SigningProofConfiguration _$SigningProofConfigurationFromJson(
    Map<String, dynamic> json) {
  return _SigningProofConfiguration.fromJson(json);
}

/// @nodoc
mixin _$SigningProofConfiguration {
  String get kty => throw _privateConstructorUsedError;
  String get crv => throw _privateConstructorUsedError;
  String get x => throw _privateConstructorUsedError;
  String get y => throw _privateConstructorUsedError;
  String get kid => throw _privateConstructorUsedError;
  String? get use => throw _privateConstructorUsedError;
  String? get alg => throw _privateConstructorUsedError;

  /// Serializes this SigningProofConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SigningProofConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SigningProofConfigurationCopyWith<SigningProofConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigningProofConfigurationCopyWith<$Res> {
  factory $SigningProofConfigurationCopyWith(SigningProofConfiguration value,
          $Res Function(SigningProofConfiguration) then) =
      _$SigningProofConfigurationCopyWithImpl<$Res, SigningProofConfiguration>;
  @useResult
  $Res call(
      {String kty,
      String crv,
      String x,
      String y,
      String kid,
      String? use,
      String? alg});
}

/// @nodoc
class _$SigningProofConfigurationCopyWithImpl<$Res,
        $Val extends SigningProofConfiguration>
    implements $SigningProofConfigurationCopyWith<$Res> {
  _$SigningProofConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SigningProofConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kty = null,
    Object? crv = null,
    Object? x = null,
    Object? y = null,
    Object? kid = null,
    Object? use = freezed,
    Object? alg = freezed,
  }) {
    return _then(_value.copyWith(
      kty: null == kty
          ? _value.kty
          : kty // ignore: cast_nullable_to_non_nullable
              as String,
      crv: null == crv
          ? _value.crv
          : crv // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
      kid: null == kid
          ? _value.kid
          : kid // ignore: cast_nullable_to_non_nullable
              as String,
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as String?,
      alg: freezed == alg
          ? _value.alg
          : alg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SigningProofConfigurationImplCopyWith<$Res>
    implements $SigningProofConfigurationCopyWith<$Res> {
  factory _$$SigningProofConfigurationImplCopyWith(
          _$SigningProofConfigurationImpl value,
          $Res Function(_$SigningProofConfigurationImpl) then) =
      __$$SigningProofConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String kty,
      String crv,
      String x,
      String y,
      String kid,
      String? use,
      String? alg});
}

/// @nodoc
class __$$SigningProofConfigurationImplCopyWithImpl<$Res>
    extends _$SigningProofConfigurationCopyWithImpl<$Res,
        _$SigningProofConfigurationImpl>
    implements _$$SigningProofConfigurationImplCopyWith<$Res> {
  __$$SigningProofConfigurationImplCopyWithImpl(
      _$SigningProofConfigurationImpl _value,
      $Res Function(_$SigningProofConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of SigningProofConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kty = null,
    Object? crv = null,
    Object? x = null,
    Object? y = null,
    Object? kid = null,
    Object? use = freezed,
    Object? alg = freezed,
  }) {
    return _then(_$SigningProofConfigurationImpl(
      kty: null == kty
          ? _value.kty
          : kty // ignore: cast_nullable_to_non_nullable
              as String,
      crv: null == crv
          ? _value.crv
          : crv // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
      kid: null == kid
          ? _value.kid
          : kid // ignore: cast_nullable_to_non_nullable
              as String,
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as String?,
      alg: freezed == alg
          ? _value.alg
          : alg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SigningProofConfigurationImpl implements _SigningProofConfiguration {
  _$SigningProofConfigurationImpl(
      {required this.kty,
      required this.crv,
      required this.x,
      required this.y,
      required this.kid,
      this.use,
      this.alg});

  factory _$SigningProofConfigurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SigningProofConfigurationImplFromJson(json);

  @override
  final String kty;
  @override
  final String crv;
  @override
  final String x;
  @override
  final String y;
  @override
  final String kid;
  @override
  final String? use;
  @override
  final String? alg;

  @override
  String toString() {
    return 'SigningProofConfiguration(kty: $kty, crv: $crv, x: $x, y: $y, kid: $kid, use: $use, alg: $alg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigningProofConfigurationImpl &&
            (identical(other.kty, kty) || other.kty == kty) &&
            (identical(other.crv, crv) || other.crv == crv) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.kid, kid) || other.kid == kid) &&
            (identical(other.use, use) || other.use == use) &&
            (identical(other.alg, alg) || other.alg == alg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, kty, crv, x, y, kid, use, alg);

  /// Create a copy of SigningProofConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SigningProofConfigurationImplCopyWith<_$SigningProofConfigurationImpl>
      get copyWith => __$$SigningProofConfigurationImplCopyWithImpl<
          _$SigningProofConfigurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SigningProofConfigurationImplToJson(
      this,
    );
  }
}

abstract class _SigningProofConfiguration implements SigningProofConfiguration {
  factory _SigningProofConfiguration(
      {required final String kty,
      required final String crv,
      required final String x,
      required final String y,
      required final String kid,
      final String? use,
      final String? alg}) = _$SigningProofConfigurationImpl;

  factory _SigningProofConfiguration.fromJson(Map<String, dynamic> json) =
      _$SigningProofConfigurationImpl.fromJson;

  @override
  String get kty;
  @override
  String get crv;
  @override
  String get x;
  @override
  String get y;
  @override
  String get kid;
  @override
  String? get use;
  @override
  String? get alg;

  /// Create a copy of SigningProofConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SigningProofConfigurationImplCopyWith<_$SigningProofConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
