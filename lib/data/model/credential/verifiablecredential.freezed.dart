// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verifiablecredential.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifiableCredentialResponse _$VerifiableCredentialResponseFromJson(
    Map<String, dynamic> json) {
  return _VerifiableCredentialResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifiableCredentialResponse {
  String get credential => throw _privateConstructorUsedError;
  @JsonKey(name: 'c_nonce_expires_in')
  int get cNonceExpiresIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'c_nonce')
  String get cNonce => throw _privateConstructorUsedError;

  /// Serializes this VerifiableCredentialResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifiableCredentialResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifiableCredentialResponseCopyWith<VerifiableCredentialResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifiableCredentialResponseCopyWith<$Res> {
  factory $VerifiableCredentialResponseCopyWith(
          VerifiableCredentialResponse value,
          $Res Function(VerifiableCredentialResponse) then) =
      _$VerifiableCredentialResponseCopyWithImpl<$Res,
          VerifiableCredentialResponse>;
  @useResult
  $Res call(
      {String credential,
      @JsonKey(name: 'c_nonce_expires_in') int cNonceExpiresIn,
      @JsonKey(name: 'c_nonce') String cNonce});
}

/// @nodoc
class _$VerifiableCredentialResponseCopyWithImpl<$Res,
        $Val extends VerifiableCredentialResponse>
    implements $VerifiableCredentialResponseCopyWith<$Res> {
  _$VerifiableCredentialResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifiableCredentialResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credential = null,
    Object? cNonceExpiresIn = null,
    Object? cNonce = null,
  }) {
    return _then(_value.copyWith(
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as String,
      cNonceExpiresIn: null == cNonceExpiresIn
          ? _value.cNonceExpiresIn
          : cNonceExpiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      cNonce: null == cNonce
          ? _value.cNonce
          : cNonce // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifiableCredentialResponseImplCopyWith<$Res>
    implements $VerifiableCredentialResponseCopyWith<$Res> {
  factory _$$VerifiableCredentialResponseImplCopyWith(
          _$VerifiableCredentialResponseImpl value,
          $Res Function(_$VerifiableCredentialResponseImpl) then) =
      __$$VerifiableCredentialResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String credential,
      @JsonKey(name: 'c_nonce_expires_in') int cNonceExpiresIn,
      @JsonKey(name: 'c_nonce') String cNonce});
}

/// @nodoc
class __$$VerifiableCredentialResponseImplCopyWithImpl<$Res>
    extends _$VerifiableCredentialResponseCopyWithImpl<$Res,
        _$VerifiableCredentialResponseImpl>
    implements _$$VerifiableCredentialResponseImplCopyWith<$Res> {
  __$$VerifiableCredentialResponseImplCopyWithImpl(
      _$VerifiableCredentialResponseImpl _value,
      $Res Function(_$VerifiableCredentialResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifiableCredentialResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credential = null,
    Object? cNonceExpiresIn = null,
    Object? cNonce = null,
  }) {
    return _then(_$VerifiableCredentialResponseImpl(
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as String,
      cNonceExpiresIn: null == cNonceExpiresIn
          ? _value.cNonceExpiresIn
          : cNonceExpiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      cNonce: null == cNonce
          ? _value.cNonce
          : cNonce // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VerifiableCredentialResponseImpl
    implements _VerifiableCredentialResponse {
  _$VerifiableCredentialResponseImpl(
      {required this.credential,
      @JsonKey(name: 'c_nonce_expires_in') required this.cNonceExpiresIn,
      @JsonKey(name: 'c_nonce') required this.cNonce});

  factory _$VerifiableCredentialResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VerifiableCredentialResponseImplFromJson(json);

  @override
  final String credential;
  @override
  @JsonKey(name: 'c_nonce_expires_in')
  final int cNonceExpiresIn;
  @override
  @JsonKey(name: 'c_nonce')
  final String cNonce;

  @override
  String toString() {
    return 'VerifiableCredentialResponse(credential: $credential, cNonceExpiresIn: $cNonceExpiresIn, cNonce: $cNonce)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifiableCredentialResponseImpl &&
            (identical(other.credential, credential) ||
                other.credential == credential) &&
            (identical(other.cNonceExpiresIn, cNonceExpiresIn) ||
                other.cNonceExpiresIn == cNonceExpiresIn) &&
            (identical(other.cNonce, cNonce) || other.cNonce == cNonce));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, credential, cNonceExpiresIn, cNonce);

  /// Create a copy of VerifiableCredentialResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifiableCredentialResponseImplCopyWith<
          _$VerifiableCredentialResponseImpl>
      get copyWith => __$$VerifiableCredentialResponseImplCopyWithImpl<
          _$VerifiableCredentialResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifiableCredentialResponseImplToJson(
      this,
    );
  }
}

abstract class _VerifiableCredentialResponse
    implements VerifiableCredentialResponse {
  factory _VerifiableCredentialResponse(
      {required final String credential,
      @JsonKey(name: 'c_nonce_expires_in') required final int cNonceExpiresIn,
      @JsonKey(name: 'c_nonce')
      required final String cNonce}) = _$VerifiableCredentialResponseImpl;

  factory _VerifiableCredentialResponse.fromJson(Map<String, dynamic> json) =
      _$VerifiableCredentialResponseImpl.fromJson;

  @override
  String get credential;
  @override
  @JsonKey(name: 'c_nonce_expires_in')
  int get cNonceExpiresIn;
  @override
  @JsonKey(name: 'c_nonce')
  String get cNonce;

  /// Create a copy of VerifiableCredentialResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifiableCredentialResponseImplCopyWith<
          _$VerifiableCredentialResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerifiableCredential _$VerifiableCredentialFromJson(Map<String, dynamic> json) {
  return _VerifiableCredential.fromJson(json);
}

/// @nodoc
mixin _$VerifiableCredential {
  VerifiableCredentialResponse get credentialResponse =>
      throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  List<VerifiableCredentialClaim> get claims =>
      throw _privateConstructorUsedError;
  List<VerifiableDisclosure> get disclosures =>
      throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  PaymentAnalysisInformation? get paymentAnalysis =>
      throw _privateConstructorUsedError;
  SupportedCredentialDisplayInformation? get display =>
      throw _privateConstructorUsedError;

  /// Serializes this VerifiableCredential to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifiableCredential
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifiableCredentialCopyWith<VerifiableCredential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifiableCredentialCopyWith<$Res> {
  factory $VerifiableCredentialCopyWith(VerifiableCredential value,
          $Res Function(VerifiableCredential) then) =
      _$VerifiableCredentialCopyWithImpl<$Res, VerifiableCredential>;
  @useResult
  $Res call(
      {VerifiableCredentialResponse credentialResponse,
      String subject,
      List<VerifiableCredentialClaim> claims,
      List<VerifiableDisclosure> disclosures,
      DateTime expiresAt,
      PaymentAnalysisInformation? paymentAnalysis,
      SupportedCredentialDisplayInformation? display});

  $VerifiableCredentialResponseCopyWith<$Res> get credentialResponse;
  $PaymentAnalysisInformationCopyWith<$Res>? get paymentAnalysis;
  $SupportedCredentialDisplayInformationCopyWith<$Res>? get display;
}

/// @nodoc
class _$VerifiableCredentialCopyWithImpl<$Res,
        $Val extends VerifiableCredential>
    implements $VerifiableCredentialCopyWith<$Res> {
  _$VerifiableCredentialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifiableCredential
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentialResponse = null,
    Object? subject = null,
    Object? claims = null,
    Object? disclosures = null,
    Object? expiresAt = null,
    Object? paymentAnalysis = freezed,
    Object? display = freezed,
  }) {
    return _then(_value.copyWith(
      credentialResponse: null == credentialResponse
          ? _value.credentialResponse
          : credentialResponse // ignore: cast_nullable_to_non_nullable
              as VerifiableCredentialResponse,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      claims: null == claims
          ? _value.claims
          : claims // ignore: cast_nullable_to_non_nullable
              as List<VerifiableCredentialClaim>,
      disclosures: null == disclosures
          ? _value.disclosures
          : disclosures // ignore: cast_nullable_to_non_nullable
              as List<VerifiableDisclosure>,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentAnalysis: freezed == paymentAnalysis
          ? _value.paymentAnalysis
          : paymentAnalysis // ignore: cast_nullable_to_non_nullable
              as PaymentAnalysisInformation?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as SupportedCredentialDisplayInformation?,
    ) as $Val);
  }

  /// Create a copy of VerifiableCredential
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerifiableCredentialResponseCopyWith<$Res> get credentialResponse {
    return $VerifiableCredentialResponseCopyWith<$Res>(
        _value.credentialResponse, (value) {
      return _then(_value.copyWith(credentialResponse: value) as $Val);
    });
  }

  /// Create a copy of VerifiableCredential
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentAnalysisInformationCopyWith<$Res>? get paymentAnalysis {
    if (_value.paymentAnalysis == null) {
      return null;
    }

    return $PaymentAnalysisInformationCopyWith<$Res>(_value.paymentAnalysis!,
        (value) {
      return _then(_value.copyWith(paymentAnalysis: value) as $Val);
    });
  }

  /// Create a copy of VerifiableCredential
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportedCredentialDisplayInformationCopyWith<$Res>? get display {
    if (_value.display == null) {
      return null;
    }

    return $SupportedCredentialDisplayInformationCopyWith<$Res>(_value.display!,
        (value) {
      return _then(_value.copyWith(display: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerifiableCredentialImplCopyWith<$Res>
    implements $VerifiableCredentialCopyWith<$Res> {
  factory _$$VerifiableCredentialImplCopyWith(_$VerifiableCredentialImpl value,
          $Res Function(_$VerifiableCredentialImpl) then) =
      __$$VerifiableCredentialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VerifiableCredentialResponse credentialResponse,
      String subject,
      List<VerifiableCredentialClaim> claims,
      List<VerifiableDisclosure> disclosures,
      DateTime expiresAt,
      PaymentAnalysisInformation? paymentAnalysis,
      SupportedCredentialDisplayInformation? display});

  @override
  $VerifiableCredentialResponseCopyWith<$Res> get credentialResponse;
  @override
  $PaymentAnalysisInformationCopyWith<$Res>? get paymentAnalysis;
  @override
  $SupportedCredentialDisplayInformationCopyWith<$Res>? get display;
}

/// @nodoc
class __$$VerifiableCredentialImplCopyWithImpl<$Res>
    extends _$VerifiableCredentialCopyWithImpl<$Res, _$VerifiableCredentialImpl>
    implements _$$VerifiableCredentialImplCopyWith<$Res> {
  __$$VerifiableCredentialImplCopyWithImpl(_$VerifiableCredentialImpl _value,
      $Res Function(_$VerifiableCredentialImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifiableCredential
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentialResponse = null,
    Object? subject = null,
    Object? claims = null,
    Object? disclosures = null,
    Object? expiresAt = null,
    Object? paymentAnalysis = freezed,
    Object? display = freezed,
  }) {
    return _then(_$VerifiableCredentialImpl(
      credentialResponse: null == credentialResponse
          ? _value.credentialResponse
          : credentialResponse // ignore: cast_nullable_to_non_nullable
              as VerifiableCredentialResponse,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      claims: null == claims
          ? _value._claims
          : claims // ignore: cast_nullable_to_non_nullable
              as List<VerifiableCredentialClaim>,
      disclosures: null == disclosures
          ? _value._disclosures
          : disclosures // ignore: cast_nullable_to_non_nullable
              as List<VerifiableDisclosure>,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentAnalysis: freezed == paymentAnalysis
          ? _value.paymentAnalysis
          : paymentAnalysis // ignore: cast_nullable_to_non_nullable
              as PaymentAnalysisInformation?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as SupportedCredentialDisplayInformation?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VerifiableCredentialImpl implements _VerifiableCredential {
  _$VerifiableCredentialImpl(
      {required this.credentialResponse,
      required this.subject,
      required final List<VerifiableCredentialClaim> claims,
      required final List<VerifiableDisclosure> disclosures,
      required this.expiresAt,
      this.paymentAnalysis,
      this.display})
      : _claims = claims,
        _disclosures = disclosures;

  factory _$VerifiableCredentialImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifiableCredentialImplFromJson(json);

  @override
  final VerifiableCredentialResponse credentialResponse;
  @override
  final String subject;
  final List<VerifiableCredentialClaim> _claims;
  @override
  List<VerifiableCredentialClaim> get claims {
    if (_claims is EqualUnmodifiableListView) return _claims;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_claims);
  }

  final List<VerifiableDisclosure> _disclosures;
  @override
  List<VerifiableDisclosure> get disclosures {
    if (_disclosures is EqualUnmodifiableListView) return _disclosures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_disclosures);
  }

  @override
  final DateTime expiresAt;
  @override
  final PaymentAnalysisInformation? paymentAnalysis;
  @override
  final SupportedCredentialDisplayInformation? display;

  @override
  String toString() {
    return 'VerifiableCredential(credentialResponse: $credentialResponse, subject: $subject, claims: $claims, disclosures: $disclosures, expiresAt: $expiresAt, paymentAnalysis: $paymentAnalysis, display: $display)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifiableCredentialImpl &&
            (identical(other.credentialResponse, credentialResponse) ||
                other.credentialResponse == credentialResponse) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            const DeepCollectionEquality().equals(other._claims, _claims) &&
            const DeepCollectionEquality()
                .equals(other._disclosures, _disclosures) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.paymentAnalysis, paymentAnalysis) ||
                other.paymentAnalysis == paymentAnalysis) &&
            (identical(other.display, display) || other.display == display));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      credentialResponse,
      subject,
      const DeepCollectionEquality().hash(_claims),
      const DeepCollectionEquality().hash(_disclosures),
      expiresAt,
      paymentAnalysis,
      display);

  /// Create a copy of VerifiableCredential
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifiableCredentialImplCopyWith<_$VerifiableCredentialImpl>
      get copyWith =>
          __$$VerifiableCredentialImplCopyWithImpl<_$VerifiableCredentialImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifiableCredentialImplToJson(
      this,
    );
  }
}

abstract class _VerifiableCredential implements VerifiableCredential {
  factory _VerifiableCredential(
          {required final VerifiableCredentialResponse credentialResponse,
          required final String subject,
          required final List<VerifiableCredentialClaim> claims,
          required final List<VerifiableDisclosure> disclosures,
          required final DateTime expiresAt,
          final PaymentAnalysisInformation? paymentAnalysis,
          final SupportedCredentialDisplayInformation? display}) =
      _$VerifiableCredentialImpl;

  factory _VerifiableCredential.fromJson(Map<String, dynamic> json) =
      _$VerifiableCredentialImpl.fromJson;

  @override
  VerifiableCredentialResponse get credentialResponse;
  @override
  String get subject;
  @override
  List<VerifiableCredentialClaim> get claims;
  @override
  List<VerifiableDisclosure> get disclosures;
  @override
  DateTime get expiresAt;
  @override
  PaymentAnalysisInformation? get paymentAnalysis;
  @override
  SupportedCredentialDisplayInformation? get display;

  /// Create a copy of VerifiableCredential
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifiableCredentialImplCopyWith<_$VerifiableCredentialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerifiableCredentialClaim _$VerifiableCredentialClaimFromJson(
    Map<String, dynamic> json) {
  return _VerifiableCredentialClaim.fromJson(json);
}

/// @nodoc
mixin _$VerifiableCredentialClaim {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this VerifiableCredentialClaim to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifiableCredentialClaim
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifiableCredentialClaimCopyWith<VerifiableCredentialClaim> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifiableCredentialClaimCopyWith<$Res> {
  factory $VerifiableCredentialClaimCopyWith(VerifiableCredentialClaim value,
          $Res Function(VerifiableCredentialClaim) then) =
      _$VerifiableCredentialClaimCopyWithImpl<$Res, VerifiableCredentialClaim>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$VerifiableCredentialClaimCopyWithImpl<$Res,
        $Val extends VerifiableCredentialClaim>
    implements $VerifiableCredentialClaimCopyWith<$Res> {
  _$VerifiableCredentialClaimCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifiableCredentialClaim
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifiableCredentialClaimImplCopyWith<$Res>
    implements $VerifiableCredentialClaimCopyWith<$Res> {
  factory _$$VerifiableCredentialClaimImplCopyWith(
          _$VerifiableCredentialClaimImpl value,
          $Res Function(_$VerifiableCredentialClaimImpl) then) =
      __$$VerifiableCredentialClaimImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$VerifiableCredentialClaimImplCopyWithImpl<$Res>
    extends _$VerifiableCredentialClaimCopyWithImpl<$Res,
        _$VerifiableCredentialClaimImpl>
    implements _$$VerifiableCredentialClaimImplCopyWith<$Res> {
  __$$VerifiableCredentialClaimImplCopyWithImpl(
      _$VerifiableCredentialClaimImpl _value,
      $Res Function(_$VerifiableCredentialClaimImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifiableCredentialClaim
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$VerifiableCredentialClaimImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VerifiableCredentialClaimImpl implements _VerifiableCredentialClaim {
  _$VerifiableCredentialClaimImpl({required this.name, required this.value});

  factory _$VerifiableCredentialClaimImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifiableCredentialClaimImplFromJson(json);

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'VerifiableCredentialClaim(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifiableCredentialClaimImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  /// Create a copy of VerifiableCredentialClaim
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifiableCredentialClaimImplCopyWith<_$VerifiableCredentialClaimImpl>
      get copyWith => __$$VerifiableCredentialClaimImplCopyWithImpl<
          _$VerifiableCredentialClaimImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifiableCredentialClaimImplToJson(
      this,
    );
  }
}

abstract class _VerifiableCredentialClaim implements VerifiableCredentialClaim {
  factory _VerifiableCredentialClaim(
      {required final String name,
      required final String value}) = _$VerifiableCredentialClaimImpl;

  factory _VerifiableCredentialClaim.fromJson(Map<String, dynamic> json) =
      _$VerifiableCredentialClaimImpl.fromJson;

  @override
  String get name;
  @override
  String get value;

  /// Create a copy of VerifiableCredentialClaim
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifiableCredentialClaimImplCopyWith<_$VerifiableCredentialClaimImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerifiableDisclosure _$VerifiableDisclosureFromJson(Map<String, dynamic> json) {
  return _VerifiableDisclosure.fromJson(json);
}

/// @nodoc
mixin _$VerifiableDisclosure {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this VerifiableDisclosure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifiableDisclosure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifiableDisclosureCopyWith<VerifiableDisclosure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifiableDisclosureCopyWith<$Res> {
  factory $VerifiableDisclosureCopyWith(VerifiableDisclosure value,
          $Res Function(VerifiableDisclosure) then) =
      _$VerifiableDisclosureCopyWithImpl<$Res, VerifiableDisclosure>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$VerifiableDisclosureCopyWithImpl<$Res,
        $Val extends VerifiableDisclosure>
    implements $VerifiableDisclosureCopyWith<$Res> {
  _$VerifiableDisclosureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifiableDisclosure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifiableDisclosureImplCopyWith<$Res>
    implements $VerifiableDisclosureCopyWith<$Res> {
  factory _$$VerifiableDisclosureImplCopyWith(_$VerifiableDisclosureImpl value,
          $Res Function(_$VerifiableDisclosureImpl) then) =
      __$$VerifiableDisclosureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$VerifiableDisclosureImplCopyWithImpl<$Res>
    extends _$VerifiableDisclosureCopyWithImpl<$Res, _$VerifiableDisclosureImpl>
    implements _$$VerifiableDisclosureImplCopyWith<$Res> {
  __$$VerifiableDisclosureImplCopyWithImpl(_$VerifiableDisclosureImpl _value,
      $Res Function(_$VerifiableDisclosureImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifiableDisclosure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$VerifiableDisclosureImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VerifiableDisclosureImpl implements _VerifiableDisclosure {
  _$VerifiableDisclosureImpl({required this.name, required this.value});

  factory _$VerifiableDisclosureImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifiableDisclosureImplFromJson(json);

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'VerifiableDisclosure(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifiableDisclosureImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  /// Create a copy of VerifiableDisclosure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifiableDisclosureImplCopyWith<_$VerifiableDisclosureImpl>
      get copyWith =>
          __$$VerifiableDisclosureImplCopyWithImpl<_$VerifiableDisclosureImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifiableDisclosureImplToJson(
      this,
    );
  }
}

abstract class _VerifiableDisclosure implements VerifiableDisclosure {
  factory _VerifiableDisclosure(
      {required final String name,
      required final String value}) = _$VerifiableDisclosureImpl;

  factory _VerifiableDisclosure.fromJson(Map<String, dynamic> json) =
      _$VerifiableDisclosureImpl.fromJson;

  @override
  String get name;
  @override
  String get value;

  /// Create a copy of VerifiableDisclosure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifiableDisclosureImplCopyWith<_$VerifiableDisclosureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentAnalysisInformation _$PaymentAnalysisInformationFromJson(
    Map<String, dynamic> json) {
  return _PaymentAnalysisInformation.fromJson(json);
}

/// @nodoc
mixin _$PaymentAnalysisInformation {
  @JsonKey(name: 'Protesti')
  String get protestiInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'Ritardo nei pagamenti di prestiti e finanziamenti')
  String get latePaymentsInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'Altre informazioni pubbliche negative')
  String get otherNegativeInfo => throw _privateConstructorUsedError;

  /// Serializes this PaymentAnalysisInformation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentAnalysisInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentAnalysisInformationCopyWith<PaymentAnalysisInformation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentAnalysisInformationCopyWith<$Res> {
  factory $PaymentAnalysisInformationCopyWith(PaymentAnalysisInformation value,
          $Res Function(PaymentAnalysisInformation) then) =
      _$PaymentAnalysisInformationCopyWithImpl<$Res,
          PaymentAnalysisInformation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Protesti') String protestiInfo,
      @JsonKey(name: 'Ritardo nei pagamenti di prestiti e finanziamenti')
      String latePaymentsInfo,
      @JsonKey(name: 'Altre informazioni pubbliche negative')
      String otherNegativeInfo});
}

/// @nodoc
class _$PaymentAnalysisInformationCopyWithImpl<$Res,
        $Val extends PaymentAnalysisInformation>
    implements $PaymentAnalysisInformationCopyWith<$Res> {
  _$PaymentAnalysisInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentAnalysisInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protestiInfo = null,
    Object? latePaymentsInfo = null,
    Object? otherNegativeInfo = null,
  }) {
    return _then(_value.copyWith(
      protestiInfo: null == protestiInfo
          ? _value.protestiInfo
          : protestiInfo // ignore: cast_nullable_to_non_nullable
              as String,
      latePaymentsInfo: null == latePaymentsInfo
          ? _value.latePaymentsInfo
          : latePaymentsInfo // ignore: cast_nullable_to_non_nullable
              as String,
      otherNegativeInfo: null == otherNegativeInfo
          ? _value.otherNegativeInfo
          : otherNegativeInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentAnalysisInformationImplCopyWith<$Res>
    implements $PaymentAnalysisInformationCopyWith<$Res> {
  factory _$$PaymentAnalysisInformationImplCopyWith(
          _$PaymentAnalysisInformationImpl value,
          $Res Function(_$PaymentAnalysisInformationImpl) then) =
      __$$PaymentAnalysisInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Protesti') String protestiInfo,
      @JsonKey(name: 'Ritardo nei pagamenti di prestiti e finanziamenti')
      String latePaymentsInfo,
      @JsonKey(name: 'Altre informazioni pubbliche negative')
      String otherNegativeInfo});
}

/// @nodoc
class __$$PaymentAnalysisInformationImplCopyWithImpl<$Res>
    extends _$PaymentAnalysisInformationCopyWithImpl<$Res,
        _$PaymentAnalysisInformationImpl>
    implements _$$PaymentAnalysisInformationImplCopyWith<$Res> {
  __$$PaymentAnalysisInformationImplCopyWithImpl(
      _$PaymentAnalysisInformationImpl _value,
      $Res Function(_$PaymentAnalysisInformationImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentAnalysisInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protestiInfo = null,
    Object? latePaymentsInfo = null,
    Object? otherNegativeInfo = null,
  }) {
    return _then(_$PaymentAnalysisInformationImpl(
      protestiInfo: null == protestiInfo
          ? _value.protestiInfo
          : protestiInfo // ignore: cast_nullable_to_non_nullable
              as String,
      latePaymentsInfo: null == latePaymentsInfo
          ? _value.latePaymentsInfo
          : latePaymentsInfo // ignore: cast_nullable_to_non_nullable
              as String,
      otherNegativeInfo: null == otherNegativeInfo
          ? _value.otherNegativeInfo
          : otherNegativeInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PaymentAnalysisInformationImpl implements _PaymentAnalysisInformation {
  _$PaymentAnalysisInformationImpl(
      {@JsonKey(name: 'Protesti') required this.protestiInfo,
      @JsonKey(name: 'Ritardo nei pagamenti di prestiti e finanziamenti')
      required this.latePaymentsInfo,
      @JsonKey(name: 'Altre informazioni pubbliche negative')
      required this.otherNegativeInfo});

  factory _$PaymentAnalysisInformationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PaymentAnalysisInformationImplFromJson(json);

  @override
  @JsonKey(name: 'Protesti')
  final String protestiInfo;
  @override
  @JsonKey(name: 'Ritardo nei pagamenti di prestiti e finanziamenti')
  final String latePaymentsInfo;
  @override
  @JsonKey(name: 'Altre informazioni pubbliche negative')
  final String otherNegativeInfo;

  @override
  String toString() {
    return 'PaymentAnalysisInformation(protestiInfo: $protestiInfo, latePaymentsInfo: $latePaymentsInfo, otherNegativeInfo: $otherNegativeInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentAnalysisInformationImpl &&
            (identical(other.protestiInfo, protestiInfo) ||
                other.protestiInfo == protestiInfo) &&
            (identical(other.latePaymentsInfo, latePaymentsInfo) ||
                other.latePaymentsInfo == latePaymentsInfo) &&
            (identical(other.otherNegativeInfo, otherNegativeInfo) ||
                other.otherNegativeInfo == otherNegativeInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, protestiInfo, latePaymentsInfo, otherNegativeInfo);

  /// Create a copy of PaymentAnalysisInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentAnalysisInformationImplCopyWith<_$PaymentAnalysisInformationImpl>
      get copyWith => __$$PaymentAnalysisInformationImplCopyWithImpl<
          _$PaymentAnalysisInformationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentAnalysisInformationImplToJson(
      this,
    );
  }
}

abstract class _PaymentAnalysisInformation
    implements PaymentAnalysisInformation {
  factory _PaymentAnalysisInformation(
          {@JsonKey(name: 'Protesti') required final String protestiInfo,
          @JsonKey(name: 'Ritardo nei pagamenti di prestiti e finanziamenti')
          required final String latePaymentsInfo,
          @JsonKey(name: 'Altre informazioni pubbliche negative')
          required final String otherNegativeInfo}) =
      _$PaymentAnalysisInformationImpl;

  factory _PaymentAnalysisInformation.fromJson(Map<String, dynamic> json) =
      _$PaymentAnalysisInformationImpl.fromJson;

  @override
  @JsonKey(name: 'Protesti')
  String get protestiInfo;
  @override
  @JsonKey(name: 'Ritardo nei pagamenti di prestiti e finanziamenti')
  String get latePaymentsInfo;
  @override
  @JsonKey(name: 'Altre informazioni pubbliche negative')
  String get otherNegativeInfo;

  /// Create a copy of PaymentAnalysisInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentAnalysisInformationImplCopyWith<_$PaymentAnalysisInformationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
