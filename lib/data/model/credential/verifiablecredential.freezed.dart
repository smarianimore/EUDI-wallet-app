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
  DateTime get expiresAt => throw _privateConstructorUsedError;
  List<KnownVerifiableCredentialInformation> get knownCredentialInfo =>
      throw _privateConstructorUsedError;
  List<VerifiableDisclosure> get unknownDisclosures =>
      throw _privateConstructorUsedError;
  List<VerifiableDisclosure> get unknownClaims =>
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
      DateTime expiresAt,
      List<KnownVerifiableCredentialInformation> knownCredentialInfo,
      List<VerifiableDisclosure> unknownDisclosures,
      List<VerifiableDisclosure> unknownClaims,
      SupportedCredentialDisplayInformation? display});

  $VerifiableCredentialResponseCopyWith<$Res> get credentialResponse;
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
    Object? expiresAt = null,
    Object? knownCredentialInfo = null,
    Object? unknownDisclosures = null,
    Object? unknownClaims = null,
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
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      knownCredentialInfo: null == knownCredentialInfo
          ? _value.knownCredentialInfo
          : knownCredentialInfo // ignore: cast_nullable_to_non_nullable
              as List<KnownVerifiableCredentialInformation>,
      unknownDisclosures: null == unknownDisclosures
          ? _value.unknownDisclosures
          : unknownDisclosures // ignore: cast_nullable_to_non_nullable
              as List<VerifiableDisclosure>,
      unknownClaims: null == unknownClaims
          ? _value.unknownClaims
          : unknownClaims // ignore: cast_nullable_to_non_nullable
              as List<VerifiableDisclosure>,
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
      DateTime expiresAt,
      List<KnownVerifiableCredentialInformation> knownCredentialInfo,
      List<VerifiableDisclosure> unknownDisclosures,
      List<VerifiableDisclosure> unknownClaims,
      SupportedCredentialDisplayInformation? display});

  @override
  $VerifiableCredentialResponseCopyWith<$Res> get credentialResponse;
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
    Object? expiresAt = null,
    Object? knownCredentialInfo = null,
    Object? unknownDisclosures = null,
    Object? unknownClaims = null,
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
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      knownCredentialInfo: null == knownCredentialInfo
          ? _value._knownCredentialInfo
          : knownCredentialInfo // ignore: cast_nullable_to_non_nullable
              as List<KnownVerifiableCredentialInformation>,
      unknownDisclosures: null == unknownDisclosures
          ? _value._unknownDisclosures
          : unknownDisclosures // ignore: cast_nullable_to_non_nullable
              as List<VerifiableDisclosure>,
      unknownClaims: null == unknownClaims
          ? _value._unknownClaims
          : unknownClaims // ignore: cast_nullable_to_non_nullable
              as List<VerifiableDisclosure>,
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
      required this.expiresAt,
      required final List<KnownVerifiableCredentialInformation>
          knownCredentialInfo,
      final List<VerifiableDisclosure> unknownDisclosures =
          const <VerifiableDisclosure>[],
      final List<VerifiableDisclosure> unknownClaims =
          const <VerifiableDisclosure>[],
      this.display})
      : _knownCredentialInfo = knownCredentialInfo,
        _unknownDisclosures = unknownDisclosures,
        _unknownClaims = unknownClaims;

  factory _$VerifiableCredentialImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifiableCredentialImplFromJson(json);

  @override
  final VerifiableCredentialResponse credentialResponse;
  @override
  final String subject;
  @override
  final DateTime expiresAt;
  final List<KnownVerifiableCredentialInformation> _knownCredentialInfo;
  @override
  List<KnownVerifiableCredentialInformation> get knownCredentialInfo {
    if (_knownCredentialInfo is EqualUnmodifiableListView)
      return _knownCredentialInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_knownCredentialInfo);
  }

  final List<VerifiableDisclosure> _unknownDisclosures;
  @override
  @JsonKey()
  List<VerifiableDisclosure> get unknownDisclosures {
    if (_unknownDisclosures is EqualUnmodifiableListView)
      return _unknownDisclosures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unknownDisclosures);
  }

  final List<VerifiableDisclosure> _unknownClaims;
  @override
  @JsonKey()
  List<VerifiableDisclosure> get unknownClaims {
    if (_unknownClaims is EqualUnmodifiableListView) return _unknownClaims;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unknownClaims);
  }

  @override
  final SupportedCredentialDisplayInformation? display;

  @override
  String toString() {
    return 'VerifiableCredential(credentialResponse: $credentialResponse, subject: $subject, expiresAt: $expiresAt, knownCredentialInfo: $knownCredentialInfo, unknownDisclosures: $unknownDisclosures, unknownClaims: $unknownClaims, display: $display)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifiableCredentialImpl &&
            (identical(other.credentialResponse, credentialResponse) ||
                other.credentialResponse == credentialResponse) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality()
                .equals(other._knownCredentialInfo, _knownCredentialInfo) &&
            const DeepCollectionEquality()
                .equals(other._unknownDisclosures, _unknownDisclosures) &&
            const DeepCollectionEquality()
                .equals(other._unknownClaims, _unknownClaims) &&
            (identical(other.display, display) || other.display == display));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      credentialResponse,
      subject,
      expiresAt,
      const DeepCollectionEquality().hash(_knownCredentialInfo),
      const DeepCollectionEquality().hash(_unknownDisclosures),
      const DeepCollectionEquality().hash(_unknownClaims),
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
          required final DateTime expiresAt,
          required final List<KnownVerifiableCredentialInformation>
              knownCredentialInfo,
          final List<VerifiableDisclosure> unknownDisclosures,
          final List<VerifiableDisclosure> unknownClaims,
          final SupportedCredentialDisplayInformation? display}) =
      _$VerifiableCredentialImpl;

  factory _VerifiableCredential.fromJson(Map<String, dynamic> json) =
      _$VerifiableCredentialImpl.fromJson;

  @override
  VerifiableCredentialResponse get credentialResponse;
  @override
  String get subject;
  @override
  DateTime get expiresAt;
  @override
  List<KnownVerifiableCredentialInformation> get knownCredentialInfo;
  @override
  List<VerifiableDisclosure> get unknownDisclosures;
  @override
  List<VerifiableDisclosure> get unknownClaims;
  @override
  SupportedCredentialDisplayInformation? get display;

  /// Create a copy of VerifiableCredential
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifiableCredentialImplCopyWith<_$VerifiableCredentialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

KnownVerifiableCredentialInformation
    _$KnownVerifiableCredentialInformationFromJson(Map<String, dynamic> json) {
  return _KnownVerifiableCredentialInformation.fromJson(json);
}

/// @nodoc
mixin _$KnownVerifiableCredentialInformation {
  KnownVerifiableCredentialInformationType get type =>
      throw _privateConstructorUsedError;
  PaymentAnalysisInformation? get paymentAnalysis =>
      throw _privateConstructorUsedError;
  AccountDataAnalysis? get accountDataAnalysis =>
      throw _privateConstructorUsedError;
  VerifiableDisclosure? get basicKeyValue => throw _privateConstructorUsedError;

  /// Serializes this KnownVerifiableCredentialInformation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KnownVerifiableCredentialInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KnownVerifiableCredentialInformationCopyWith<
          KnownVerifiableCredentialInformation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnownVerifiableCredentialInformationCopyWith<$Res> {
  factory $KnownVerifiableCredentialInformationCopyWith(
          KnownVerifiableCredentialInformation value,
          $Res Function(KnownVerifiableCredentialInformation) then) =
      _$KnownVerifiableCredentialInformationCopyWithImpl<$Res,
          KnownVerifiableCredentialInformation>;
  @useResult
  $Res call(
      {KnownVerifiableCredentialInformationType type,
      PaymentAnalysisInformation? paymentAnalysis,
      AccountDataAnalysis? accountDataAnalysis,
      VerifiableDisclosure? basicKeyValue});

  $PaymentAnalysisInformationCopyWith<$Res>? get paymentAnalysis;
  $AccountDataAnalysisCopyWith<$Res>? get accountDataAnalysis;
  $VerifiableDisclosureCopyWith<$Res>? get basicKeyValue;
}

/// @nodoc
class _$KnownVerifiableCredentialInformationCopyWithImpl<$Res,
        $Val extends KnownVerifiableCredentialInformation>
    implements $KnownVerifiableCredentialInformationCopyWith<$Res> {
  _$KnownVerifiableCredentialInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KnownVerifiableCredentialInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? paymentAnalysis = freezed,
    Object? accountDataAnalysis = freezed,
    Object? basicKeyValue = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as KnownVerifiableCredentialInformationType,
      paymentAnalysis: freezed == paymentAnalysis
          ? _value.paymentAnalysis
          : paymentAnalysis // ignore: cast_nullable_to_non_nullable
              as PaymentAnalysisInformation?,
      accountDataAnalysis: freezed == accountDataAnalysis
          ? _value.accountDataAnalysis
          : accountDataAnalysis // ignore: cast_nullable_to_non_nullable
              as AccountDataAnalysis?,
      basicKeyValue: freezed == basicKeyValue
          ? _value.basicKeyValue
          : basicKeyValue // ignore: cast_nullable_to_non_nullable
              as VerifiableDisclosure?,
    ) as $Val);
  }

  /// Create a copy of KnownVerifiableCredentialInformation
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

  /// Create a copy of KnownVerifiableCredentialInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountDataAnalysisCopyWith<$Res>? get accountDataAnalysis {
    if (_value.accountDataAnalysis == null) {
      return null;
    }

    return $AccountDataAnalysisCopyWith<$Res>(_value.accountDataAnalysis!,
        (value) {
      return _then(_value.copyWith(accountDataAnalysis: value) as $Val);
    });
  }

  /// Create a copy of KnownVerifiableCredentialInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerifiableDisclosureCopyWith<$Res>? get basicKeyValue {
    if (_value.basicKeyValue == null) {
      return null;
    }

    return $VerifiableDisclosureCopyWith<$Res>(_value.basicKeyValue!, (value) {
      return _then(_value.copyWith(basicKeyValue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KnownVerifiableCredentialInformationImplCopyWith<$Res>
    implements $KnownVerifiableCredentialInformationCopyWith<$Res> {
  factory _$$KnownVerifiableCredentialInformationImplCopyWith(
          _$KnownVerifiableCredentialInformationImpl value,
          $Res Function(_$KnownVerifiableCredentialInformationImpl) then) =
      __$$KnownVerifiableCredentialInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {KnownVerifiableCredentialInformationType type,
      PaymentAnalysisInformation? paymentAnalysis,
      AccountDataAnalysis? accountDataAnalysis,
      VerifiableDisclosure? basicKeyValue});

  @override
  $PaymentAnalysisInformationCopyWith<$Res>? get paymentAnalysis;
  @override
  $AccountDataAnalysisCopyWith<$Res>? get accountDataAnalysis;
  @override
  $VerifiableDisclosureCopyWith<$Res>? get basicKeyValue;
}

/// @nodoc
class __$$KnownVerifiableCredentialInformationImplCopyWithImpl<$Res>
    extends _$KnownVerifiableCredentialInformationCopyWithImpl<$Res,
        _$KnownVerifiableCredentialInformationImpl>
    implements _$$KnownVerifiableCredentialInformationImplCopyWith<$Res> {
  __$$KnownVerifiableCredentialInformationImplCopyWithImpl(
      _$KnownVerifiableCredentialInformationImpl _value,
      $Res Function(_$KnownVerifiableCredentialInformationImpl) _then)
      : super(_value, _then);

  /// Create a copy of KnownVerifiableCredentialInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? paymentAnalysis = freezed,
    Object? accountDataAnalysis = freezed,
    Object? basicKeyValue = freezed,
  }) {
    return _then(_$KnownVerifiableCredentialInformationImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as KnownVerifiableCredentialInformationType,
      paymentAnalysis: freezed == paymentAnalysis
          ? _value.paymentAnalysis
          : paymentAnalysis // ignore: cast_nullable_to_non_nullable
              as PaymentAnalysisInformation?,
      accountDataAnalysis: freezed == accountDataAnalysis
          ? _value.accountDataAnalysis
          : accountDataAnalysis // ignore: cast_nullable_to_non_nullable
              as AccountDataAnalysis?,
      basicKeyValue: freezed == basicKeyValue
          ? _value.basicKeyValue
          : basicKeyValue // ignore: cast_nullable_to_non_nullable
              as VerifiableDisclosure?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$KnownVerifiableCredentialInformationImpl
    implements _KnownVerifiableCredentialInformation {
  _$KnownVerifiableCredentialInformationImpl(
      {required this.type,
      this.paymentAnalysis,
      this.accountDataAnalysis,
      this.basicKeyValue});

  factory _$KnownVerifiableCredentialInformationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$KnownVerifiableCredentialInformationImplFromJson(json);

  @override
  final KnownVerifiableCredentialInformationType type;
  @override
  final PaymentAnalysisInformation? paymentAnalysis;
  @override
  final AccountDataAnalysis? accountDataAnalysis;
  @override
  final VerifiableDisclosure? basicKeyValue;

  @override
  String toString() {
    return 'KnownVerifiableCredentialInformation(type: $type, paymentAnalysis: $paymentAnalysis, accountDataAnalysis: $accountDataAnalysis, basicKeyValue: $basicKeyValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KnownVerifiableCredentialInformationImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.paymentAnalysis, paymentAnalysis) ||
                other.paymentAnalysis == paymentAnalysis) &&
            (identical(other.accountDataAnalysis, accountDataAnalysis) ||
                other.accountDataAnalysis == accountDataAnalysis) &&
            (identical(other.basicKeyValue, basicKeyValue) ||
                other.basicKeyValue == basicKeyValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, paymentAnalysis, accountDataAnalysis, basicKeyValue);

  /// Create a copy of KnownVerifiableCredentialInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KnownVerifiableCredentialInformationImplCopyWith<
          _$KnownVerifiableCredentialInformationImpl>
      get copyWith => __$$KnownVerifiableCredentialInformationImplCopyWithImpl<
          _$KnownVerifiableCredentialInformationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KnownVerifiableCredentialInformationImplToJson(
      this,
    );
  }
}

abstract class _KnownVerifiableCredentialInformation
    implements KnownVerifiableCredentialInformation {
  factory _KnownVerifiableCredentialInformation(
          {required final KnownVerifiableCredentialInformationType type,
          final PaymentAnalysisInformation? paymentAnalysis,
          final AccountDataAnalysis? accountDataAnalysis,
          final VerifiableDisclosure? basicKeyValue}) =
      _$KnownVerifiableCredentialInformationImpl;

  factory _KnownVerifiableCredentialInformation.fromJson(
          Map<String, dynamic> json) =
      _$KnownVerifiableCredentialInformationImpl.fromJson;

  @override
  KnownVerifiableCredentialInformationType get type;
  @override
  PaymentAnalysisInformation? get paymentAnalysis;
  @override
  AccountDataAnalysis? get accountDataAnalysis;
  @override
  VerifiableDisclosure? get basicKeyValue;

  /// Create a copy of KnownVerifiableCredentialInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KnownVerifiableCredentialInformationImplCopyWith<
          _$KnownVerifiableCredentialInformationImpl>
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

AccountDataAnalysis _$AccountDataAnalysisFromJson(Map<String, dynamic> json) {
  return _AccountDataAnalysis.fromJson(json);
}

/// @nodoc
mixin _$AccountDataAnalysis {
  @JsonKey(name: 'Equilibrio tra Uscite e Entrate')
  String get cashflowBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'Rapporto tra Uscite e Saldo Mensile')
  String get incomeOutcomeRatio => throw _privateConstructorUsedError;
  @JsonKey(name: 'Conto utilizzato per Tasse o Utenze')
  String get taxesOrUtilitiesAccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'Presenza di Entrate Ricorrenti')
  String get recurringIncome => throw _privateConstructorUsedError;
  @JsonKey(name: 'Caratteristiche del conto')
  String get accountDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'Incidenza Impegni Finanziari sul Reddito')
  String get financialCommitments => throw _privateConstructorUsedError;
  @JsonKey(name: 'Conto destinato a uscite “virtuose”')
  String get extraordinaryIncome => throw _privateConstructorUsedError;

  /// Serializes this AccountDataAnalysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountDataAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountDataAnalysisCopyWith<AccountDataAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDataAnalysisCopyWith<$Res> {
  factory $AccountDataAnalysisCopyWith(
          AccountDataAnalysis value, $Res Function(AccountDataAnalysis) then) =
      _$AccountDataAnalysisCopyWithImpl<$Res, AccountDataAnalysis>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Equilibrio tra Uscite e Entrate') String cashflowBalance,
      @JsonKey(name: 'Rapporto tra Uscite e Saldo Mensile')
      String incomeOutcomeRatio,
      @JsonKey(name: 'Conto utilizzato per Tasse o Utenze')
      String taxesOrUtilitiesAccount,
      @JsonKey(name: 'Presenza di Entrate Ricorrenti') String recurringIncome,
      @JsonKey(name: 'Caratteristiche del conto') String accountDescription,
      @JsonKey(name: 'Incidenza Impegni Finanziari sul Reddito')
      String financialCommitments,
      @JsonKey(name: 'Conto destinato a uscite “virtuose”')
      String extraordinaryIncome});
}

/// @nodoc
class _$AccountDataAnalysisCopyWithImpl<$Res, $Val extends AccountDataAnalysis>
    implements $AccountDataAnalysisCopyWith<$Res> {
  _$AccountDataAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountDataAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cashflowBalance = null,
    Object? incomeOutcomeRatio = null,
    Object? taxesOrUtilitiesAccount = null,
    Object? recurringIncome = null,
    Object? accountDescription = null,
    Object? financialCommitments = null,
    Object? extraordinaryIncome = null,
  }) {
    return _then(_value.copyWith(
      cashflowBalance: null == cashflowBalance
          ? _value.cashflowBalance
          : cashflowBalance // ignore: cast_nullable_to_non_nullable
              as String,
      incomeOutcomeRatio: null == incomeOutcomeRatio
          ? _value.incomeOutcomeRatio
          : incomeOutcomeRatio // ignore: cast_nullable_to_non_nullable
              as String,
      taxesOrUtilitiesAccount: null == taxesOrUtilitiesAccount
          ? _value.taxesOrUtilitiesAccount
          : taxesOrUtilitiesAccount // ignore: cast_nullable_to_non_nullable
              as String,
      recurringIncome: null == recurringIncome
          ? _value.recurringIncome
          : recurringIncome // ignore: cast_nullable_to_non_nullable
              as String,
      accountDescription: null == accountDescription
          ? _value.accountDescription
          : accountDescription // ignore: cast_nullable_to_non_nullable
              as String,
      financialCommitments: null == financialCommitments
          ? _value.financialCommitments
          : financialCommitments // ignore: cast_nullable_to_non_nullable
              as String,
      extraordinaryIncome: null == extraordinaryIncome
          ? _value.extraordinaryIncome
          : extraordinaryIncome // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountDataAnalysisImplCopyWith<$Res>
    implements $AccountDataAnalysisCopyWith<$Res> {
  factory _$$AccountDataAnalysisImplCopyWith(_$AccountDataAnalysisImpl value,
          $Res Function(_$AccountDataAnalysisImpl) then) =
      __$$AccountDataAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Equilibrio tra Uscite e Entrate') String cashflowBalance,
      @JsonKey(name: 'Rapporto tra Uscite e Saldo Mensile')
      String incomeOutcomeRatio,
      @JsonKey(name: 'Conto utilizzato per Tasse o Utenze')
      String taxesOrUtilitiesAccount,
      @JsonKey(name: 'Presenza di Entrate Ricorrenti') String recurringIncome,
      @JsonKey(name: 'Caratteristiche del conto') String accountDescription,
      @JsonKey(name: 'Incidenza Impegni Finanziari sul Reddito')
      String financialCommitments,
      @JsonKey(name: 'Conto destinato a uscite “virtuose”')
      String extraordinaryIncome});
}

/// @nodoc
class __$$AccountDataAnalysisImplCopyWithImpl<$Res>
    extends _$AccountDataAnalysisCopyWithImpl<$Res, _$AccountDataAnalysisImpl>
    implements _$$AccountDataAnalysisImplCopyWith<$Res> {
  __$$AccountDataAnalysisImplCopyWithImpl(_$AccountDataAnalysisImpl _value,
      $Res Function(_$AccountDataAnalysisImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountDataAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cashflowBalance = null,
    Object? incomeOutcomeRatio = null,
    Object? taxesOrUtilitiesAccount = null,
    Object? recurringIncome = null,
    Object? accountDescription = null,
    Object? financialCommitments = null,
    Object? extraordinaryIncome = null,
  }) {
    return _then(_$AccountDataAnalysisImpl(
      cashflowBalance: null == cashflowBalance
          ? _value.cashflowBalance
          : cashflowBalance // ignore: cast_nullable_to_non_nullable
              as String,
      incomeOutcomeRatio: null == incomeOutcomeRatio
          ? _value.incomeOutcomeRatio
          : incomeOutcomeRatio // ignore: cast_nullable_to_non_nullable
              as String,
      taxesOrUtilitiesAccount: null == taxesOrUtilitiesAccount
          ? _value.taxesOrUtilitiesAccount
          : taxesOrUtilitiesAccount // ignore: cast_nullable_to_non_nullable
              as String,
      recurringIncome: null == recurringIncome
          ? _value.recurringIncome
          : recurringIncome // ignore: cast_nullable_to_non_nullable
              as String,
      accountDescription: null == accountDescription
          ? _value.accountDescription
          : accountDescription // ignore: cast_nullable_to_non_nullable
              as String,
      financialCommitments: null == financialCommitments
          ? _value.financialCommitments
          : financialCommitments // ignore: cast_nullable_to_non_nullable
              as String,
      extraordinaryIncome: null == extraordinaryIncome
          ? _value.extraordinaryIncome
          : extraordinaryIncome // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AccountDataAnalysisImpl implements _AccountDataAnalysis {
  _$AccountDataAnalysisImpl(
      {@JsonKey(name: 'Equilibrio tra Uscite e Entrate')
      required this.cashflowBalance,
      @JsonKey(name: 'Rapporto tra Uscite e Saldo Mensile')
      required this.incomeOutcomeRatio,
      @JsonKey(name: 'Conto utilizzato per Tasse o Utenze')
      required this.taxesOrUtilitiesAccount,
      @JsonKey(name: 'Presenza di Entrate Ricorrenti')
      required this.recurringIncome,
      @JsonKey(name: 'Caratteristiche del conto')
      required this.accountDescription,
      @JsonKey(name: 'Incidenza Impegni Finanziari sul Reddito')
      required this.financialCommitments,
      @JsonKey(name: 'Conto destinato a uscite “virtuose”')
      required this.extraordinaryIncome});

  factory _$AccountDataAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDataAnalysisImplFromJson(json);

  @override
  @JsonKey(name: 'Equilibrio tra Uscite e Entrate')
  final String cashflowBalance;
  @override
  @JsonKey(name: 'Rapporto tra Uscite e Saldo Mensile')
  final String incomeOutcomeRatio;
  @override
  @JsonKey(name: 'Conto utilizzato per Tasse o Utenze')
  final String taxesOrUtilitiesAccount;
  @override
  @JsonKey(name: 'Presenza di Entrate Ricorrenti')
  final String recurringIncome;
  @override
  @JsonKey(name: 'Caratteristiche del conto')
  final String accountDescription;
  @override
  @JsonKey(name: 'Incidenza Impegni Finanziari sul Reddito')
  final String financialCommitments;
  @override
  @JsonKey(name: 'Conto destinato a uscite “virtuose”')
  final String extraordinaryIncome;

  @override
  String toString() {
    return 'AccountDataAnalysis(cashflowBalance: $cashflowBalance, incomeOutcomeRatio: $incomeOutcomeRatio, taxesOrUtilitiesAccount: $taxesOrUtilitiesAccount, recurringIncome: $recurringIncome, accountDescription: $accountDescription, financialCommitments: $financialCommitments, extraordinaryIncome: $extraordinaryIncome)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDataAnalysisImpl &&
            (identical(other.cashflowBalance, cashflowBalance) ||
                other.cashflowBalance == cashflowBalance) &&
            (identical(other.incomeOutcomeRatio, incomeOutcomeRatio) ||
                other.incomeOutcomeRatio == incomeOutcomeRatio) &&
            (identical(
                    other.taxesOrUtilitiesAccount, taxesOrUtilitiesAccount) ||
                other.taxesOrUtilitiesAccount == taxesOrUtilitiesAccount) &&
            (identical(other.recurringIncome, recurringIncome) ||
                other.recurringIncome == recurringIncome) &&
            (identical(other.accountDescription, accountDescription) ||
                other.accountDescription == accountDescription) &&
            (identical(other.financialCommitments, financialCommitments) ||
                other.financialCommitments == financialCommitments) &&
            (identical(other.extraordinaryIncome, extraordinaryIncome) ||
                other.extraordinaryIncome == extraordinaryIncome));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cashflowBalance,
      incomeOutcomeRatio,
      taxesOrUtilitiesAccount,
      recurringIncome,
      accountDescription,
      financialCommitments,
      extraordinaryIncome);

  /// Create a copy of AccountDataAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDataAnalysisImplCopyWith<_$AccountDataAnalysisImpl> get copyWith =>
      __$$AccountDataAnalysisImplCopyWithImpl<_$AccountDataAnalysisImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDataAnalysisImplToJson(
      this,
    );
  }
}

abstract class _AccountDataAnalysis implements AccountDataAnalysis {
  factory _AccountDataAnalysis(
      {@JsonKey(name: 'Equilibrio tra Uscite e Entrate')
      required final String cashflowBalance,
      @JsonKey(name: 'Rapporto tra Uscite e Saldo Mensile')
      required final String incomeOutcomeRatio,
      @JsonKey(name: 'Conto utilizzato per Tasse o Utenze')
      required final String taxesOrUtilitiesAccount,
      @JsonKey(name: 'Presenza di Entrate Ricorrenti')
      required final String recurringIncome,
      @JsonKey(name: 'Caratteristiche del conto')
      required final String accountDescription,
      @JsonKey(name: 'Incidenza Impegni Finanziari sul Reddito')
      required final String financialCommitments,
      @JsonKey(name: 'Conto destinato a uscite “virtuose”')
      required final String extraordinaryIncome}) = _$AccountDataAnalysisImpl;

  factory _AccountDataAnalysis.fromJson(Map<String, dynamic> json) =
      _$AccountDataAnalysisImpl.fromJson;

  @override
  @JsonKey(name: 'Equilibrio tra Uscite e Entrate')
  String get cashflowBalance;
  @override
  @JsonKey(name: 'Rapporto tra Uscite e Saldo Mensile')
  String get incomeOutcomeRatio;
  @override
  @JsonKey(name: 'Conto utilizzato per Tasse o Utenze')
  String get taxesOrUtilitiesAccount;
  @override
  @JsonKey(name: 'Presenza di Entrate Ricorrenti')
  String get recurringIncome;
  @override
  @JsonKey(name: 'Caratteristiche del conto')
  String get accountDescription;
  @override
  @JsonKey(name: 'Incidenza Impegni Finanziari sul Reddito')
  String get financialCommitments;
  @override
  @JsonKey(name: 'Conto destinato a uscite “virtuose”')
  String get extraordinaryIncome;

  /// Create a copy of AccountDataAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountDataAnalysisImplCopyWith<_$AccountDataAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
