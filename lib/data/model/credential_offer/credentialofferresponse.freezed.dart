// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credentialofferresponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CredentialOfferResponse _$CredentialOfferResponseFromJson(
    Map<String, dynamic> json) {
  return _CredentialOfferResponse.fromJson(json);
}

/// @nodoc
mixin _$CredentialOfferResponse {
  @JsonKey(name: 'credential_issuer')
  String get credentialIssuer => throw _privateConstructorUsedError;
  @JsonKey(name: 'credential_configuration_ids')
  List<String> get credentialConfigurationIds =>
      throw _privateConstructorUsedError;
  Map<String, CredentialPreauthorizationGrant> get grants =>
      throw _privateConstructorUsedError;

  /// Serializes this CredentialOfferResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CredentialOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CredentialOfferResponseCopyWith<CredentialOfferResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialOfferResponseCopyWith<$Res> {
  factory $CredentialOfferResponseCopyWith(CredentialOfferResponse value,
          $Res Function(CredentialOfferResponse) then) =
      _$CredentialOfferResponseCopyWithImpl<$Res, CredentialOfferResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'credential_issuer') String credentialIssuer,
      @JsonKey(name: 'credential_configuration_ids')
      List<String> credentialConfigurationIds,
      Map<String, CredentialPreauthorizationGrant> grants});
}

/// @nodoc
class _$CredentialOfferResponseCopyWithImpl<$Res,
        $Val extends CredentialOfferResponse>
    implements $CredentialOfferResponseCopyWith<$Res> {
  _$CredentialOfferResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CredentialOfferResponse
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
abstract class _$$CredentialOfferResponseImplCopyWith<$Res>
    implements $CredentialOfferResponseCopyWith<$Res> {
  factory _$$CredentialOfferResponseImplCopyWith(
          _$CredentialOfferResponseImpl value,
          $Res Function(_$CredentialOfferResponseImpl) then) =
      __$$CredentialOfferResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'credential_issuer') String credentialIssuer,
      @JsonKey(name: 'credential_configuration_ids')
      List<String> credentialConfigurationIds,
      Map<String, CredentialPreauthorizationGrant> grants});
}

/// @nodoc
class __$$CredentialOfferResponseImplCopyWithImpl<$Res>
    extends _$CredentialOfferResponseCopyWithImpl<$Res,
        _$CredentialOfferResponseImpl>
    implements _$$CredentialOfferResponseImplCopyWith<$Res> {
  __$$CredentialOfferResponseImplCopyWithImpl(
      _$CredentialOfferResponseImpl _value,
      $Res Function(_$CredentialOfferResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CredentialOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentialIssuer = null,
    Object? credentialConfigurationIds = null,
    Object? grants = null,
  }) {
    return _then(_$CredentialOfferResponseImpl(
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
class _$CredentialOfferResponseImpl implements _CredentialOfferResponse {
  _$CredentialOfferResponseImpl(
      {@JsonKey(name: 'credential_issuer') required this.credentialIssuer,
      @JsonKey(name: 'credential_configuration_ids')
      required final List<String> credentialConfigurationIds,
      required final Map<String, CredentialPreauthorizationGrant> grants})
      : _credentialConfigurationIds = credentialConfigurationIds,
        _grants = grants;

  factory _$CredentialOfferResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CredentialOfferResponseImplFromJson(json);

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
    return 'CredentialOfferResponse(credentialIssuer: $credentialIssuer, credentialConfigurationIds: $credentialConfigurationIds, grants: $grants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialOfferResponseImpl &&
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

  /// Create a copy of CredentialOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CredentialOfferResponseImplCopyWith<_$CredentialOfferResponseImpl>
      get copyWith => __$$CredentialOfferResponseImplCopyWithImpl<
          _$CredentialOfferResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CredentialOfferResponseImplToJson(
      this,
    );
  }
}

abstract class _CredentialOfferResponse implements CredentialOfferResponse {
  factory _CredentialOfferResponse(
          {@JsonKey(name: 'credential_issuer')
          required final String credentialIssuer,
          @JsonKey(name: 'credential_configuration_ids')
          required final List<String> credentialConfigurationIds,
          required final Map<String, CredentialPreauthorizationGrant> grants}) =
      _$CredentialOfferResponseImpl;

  factory _CredentialOfferResponse.fromJson(Map<String, dynamic> json) =
      _$CredentialOfferResponseImpl.fromJson;

  @override
  @JsonKey(name: 'credential_issuer')
  String get credentialIssuer;
  @override
  @JsonKey(name: 'credential_configuration_ids')
  List<String> get credentialConfigurationIds;
  @override
  Map<String, CredentialPreauthorizationGrant> get grants;

  /// Create a copy of CredentialOfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CredentialOfferResponseImplCopyWith<_$CredentialOfferResponseImpl>
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
