// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supportedcredentialconfiguration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SupportedCredentialConfiguration _$SupportedCredentialConfigurationFromJson(
    Map<String, dynamic> json) {
  return _SupportedCredentialConfiguration.fromJson(json);
}

/// @nodoc
mixin _$SupportedCredentialConfiguration {
  String get scope => throw _privateConstructorUsedError;
  Map<String, SupportedClaimProperties> get claims =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'cryptographic_binding_methods_supported')
  List<String> get cryptographicBindingMethodsSupported =>
      throw _privateConstructorUsedError;
  List<SupportedCredentialDisplayInformation> get display =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'credential_signing_alg_values_supported')
  List<String> get credentialSigningAlgValuesSupported =>
      throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get vct => throw _privateConstructorUsedError;
  @JsonKey(name: 'proof_types_supported')
  Map<String, dynamic> get proofTypesSupported =>
      throw _privateConstructorUsedError;

  /// Serializes this SupportedCredentialConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportedCredentialConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportedCredentialConfigurationCopyWith<SupportedCredentialConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportedCredentialConfigurationCopyWith<$Res> {
  factory $SupportedCredentialConfigurationCopyWith(
          SupportedCredentialConfiguration value,
          $Res Function(SupportedCredentialConfiguration) then) =
      _$SupportedCredentialConfigurationCopyWithImpl<$Res,
          SupportedCredentialConfiguration>;
  @useResult
  $Res call(
      {String scope,
      Map<String, SupportedClaimProperties> claims,
      @JsonKey(name: 'cryptographic_binding_methods_supported')
      List<String> cryptographicBindingMethodsSupported,
      List<SupportedCredentialDisplayInformation> display,
      @JsonKey(name: 'credential_signing_alg_values_supported')
      List<String> credentialSigningAlgValuesSupported,
      String format,
      String vct,
      @JsonKey(name: 'proof_types_supported')
      Map<String, dynamic> proofTypesSupported});
}

/// @nodoc
class _$SupportedCredentialConfigurationCopyWithImpl<$Res,
        $Val extends SupportedCredentialConfiguration>
    implements $SupportedCredentialConfigurationCopyWith<$Res> {
  _$SupportedCredentialConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportedCredentialConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scope = null,
    Object? claims = null,
    Object? cryptographicBindingMethodsSupported = null,
    Object? display = null,
    Object? credentialSigningAlgValuesSupported = null,
    Object? format = null,
    Object? vct = null,
    Object? proofTypesSupported = null,
  }) {
    return _then(_value.copyWith(
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      claims: null == claims
          ? _value.claims
          : claims // ignore: cast_nullable_to_non_nullable
              as Map<String, SupportedClaimProperties>,
      cryptographicBindingMethodsSupported: null ==
              cryptographicBindingMethodsSupported
          ? _value.cryptographicBindingMethodsSupported
          : cryptographicBindingMethodsSupported // ignore: cast_nullable_to_non_nullable
              as List<String>,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as List<SupportedCredentialDisplayInformation>,
      credentialSigningAlgValuesSupported: null ==
              credentialSigningAlgValuesSupported
          ? _value.credentialSigningAlgValuesSupported
          : credentialSigningAlgValuesSupported // ignore: cast_nullable_to_non_nullable
              as List<String>,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      vct: null == vct
          ? _value.vct
          : vct // ignore: cast_nullable_to_non_nullable
              as String,
      proofTypesSupported: null == proofTypesSupported
          ? _value.proofTypesSupported
          : proofTypesSupported // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportedCredentialConfigurationImplCopyWith<$Res>
    implements $SupportedCredentialConfigurationCopyWith<$Res> {
  factory _$$SupportedCredentialConfigurationImplCopyWith(
          _$SupportedCredentialConfigurationImpl value,
          $Res Function(_$SupportedCredentialConfigurationImpl) then) =
      __$$SupportedCredentialConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String scope,
      Map<String, SupportedClaimProperties> claims,
      @JsonKey(name: 'cryptographic_binding_methods_supported')
      List<String> cryptographicBindingMethodsSupported,
      List<SupportedCredentialDisplayInformation> display,
      @JsonKey(name: 'credential_signing_alg_values_supported')
      List<String> credentialSigningAlgValuesSupported,
      String format,
      String vct,
      @JsonKey(name: 'proof_types_supported')
      Map<String, dynamic> proofTypesSupported});
}

/// @nodoc
class __$$SupportedCredentialConfigurationImplCopyWithImpl<$Res>
    extends _$SupportedCredentialConfigurationCopyWithImpl<$Res,
        _$SupportedCredentialConfigurationImpl>
    implements _$$SupportedCredentialConfigurationImplCopyWith<$Res> {
  __$$SupportedCredentialConfigurationImplCopyWithImpl(
      _$SupportedCredentialConfigurationImpl _value,
      $Res Function(_$SupportedCredentialConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportedCredentialConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scope = null,
    Object? claims = null,
    Object? cryptographicBindingMethodsSupported = null,
    Object? display = null,
    Object? credentialSigningAlgValuesSupported = null,
    Object? format = null,
    Object? vct = null,
    Object? proofTypesSupported = null,
  }) {
    return _then(_$SupportedCredentialConfigurationImpl(
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      claims: null == claims
          ? _value._claims
          : claims // ignore: cast_nullable_to_non_nullable
              as Map<String, SupportedClaimProperties>,
      cryptographicBindingMethodsSupported: null ==
              cryptographicBindingMethodsSupported
          ? _value._cryptographicBindingMethodsSupported
          : cryptographicBindingMethodsSupported // ignore: cast_nullable_to_non_nullable
              as List<String>,
      display: null == display
          ? _value._display
          : display // ignore: cast_nullable_to_non_nullable
              as List<SupportedCredentialDisplayInformation>,
      credentialSigningAlgValuesSupported: null ==
              credentialSigningAlgValuesSupported
          ? _value._credentialSigningAlgValuesSupported
          : credentialSigningAlgValuesSupported // ignore: cast_nullable_to_non_nullable
              as List<String>,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      vct: null == vct
          ? _value.vct
          : vct // ignore: cast_nullable_to_non_nullable
              as String,
      proofTypesSupported: null == proofTypesSupported
          ? _value._proofTypesSupported
          : proofTypesSupported // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SupportedCredentialConfigurationImpl
    implements _SupportedCredentialConfiguration {
  _$SupportedCredentialConfigurationImpl(
      {required this.scope,
      required final Map<String, SupportedClaimProperties> claims,
      @JsonKey(name: 'cryptographic_binding_methods_supported')
      required final List<String> cryptographicBindingMethodsSupported,
      required final List<SupportedCredentialDisplayInformation> display,
      @JsonKey(name: 'credential_signing_alg_values_supported')
      required final List<String> credentialSigningAlgValuesSupported,
      required this.format,
      required this.vct,
      @JsonKey(name: 'proof_types_supported')
      required final Map<String, dynamic> proofTypesSupported})
      : _claims = claims,
        _cryptographicBindingMethodsSupported =
            cryptographicBindingMethodsSupported,
        _display = display,
        _credentialSigningAlgValuesSupported =
            credentialSigningAlgValuesSupported,
        _proofTypesSupported = proofTypesSupported;

  factory _$SupportedCredentialConfigurationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportedCredentialConfigurationImplFromJson(json);

  @override
  final String scope;
  final Map<String, SupportedClaimProperties> _claims;
  @override
  Map<String, SupportedClaimProperties> get claims {
    if (_claims is EqualUnmodifiableMapView) return _claims;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_claims);
  }

  final List<String> _cryptographicBindingMethodsSupported;
  @override
  @JsonKey(name: 'cryptographic_binding_methods_supported')
  List<String> get cryptographicBindingMethodsSupported {
    if (_cryptographicBindingMethodsSupported is EqualUnmodifiableListView)
      return _cryptographicBindingMethodsSupported;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cryptographicBindingMethodsSupported);
  }

  final List<SupportedCredentialDisplayInformation> _display;
  @override
  List<SupportedCredentialDisplayInformation> get display {
    if (_display is EqualUnmodifiableListView) return _display;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_display);
  }

  final List<String> _credentialSigningAlgValuesSupported;
  @override
  @JsonKey(name: 'credential_signing_alg_values_supported')
  List<String> get credentialSigningAlgValuesSupported {
    if (_credentialSigningAlgValuesSupported is EqualUnmodifiableListView)
      return _credentialSigningAlgValuesSupported;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_credentialSigningAlgValuesSupported);
  }

  @override
  final String format;
  @override
  final String vct;
  final Map<String, dynamic> _proofTypesSupported;
  @override
  @JsonKey(name: 'proof_types_supported')
  Map<String, dynamic> get proofTypesSupported {
    if (_proofTypesSupported is EqualUnmodifiableMapView)
      return _proofTypesSupported;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_proofTypesSupported);
  }

  @override
  String toString() {
    return 'SupportedCredentialConfiguration(scope: $scope, claims: $claims, cryptographicBindingMethodsSupported: $cryptographicBindingMethodsSupported, display: $display, credentialSigningAlgValuesSupported: $credentialSigningAlgValuesSupported, format: $format, vct: $vct, proofTypesSupported: $proofTypesSupported)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportedCredentialConfigurationImpl &&
            (identical(other.scope, scope) || other.scope == scope) &&
            const DeepCollectionEquality().equals(other._claims, _claims) &&
            const DeepCollectionEquality().equals(
                other._cryptographicBindingMethodsSupported,
                _cryptographicBindingMethodsSupported) &&
            const DeepCollectionEquality().equals(other._display, _display) &&
            const DeepCollectionEquality().equals(
                other._credentialSigningAlgValuesSupported,
                _credentialSigningAlgValuesSupported) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.vct, vct) || other.vct == vct) &&
            const DeepCollectionEquality()
                .equals(other._proofTypesSupported, _proofTypesSupported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      scope,
      const DeepCollectionEquality().hash(_claims),
      const DeepCollectionEquality()
          .hash(_cryptographicBindingMethodsSupported),
      const DeepCollectionEquality().hash(_display),
      const DeepCollectionEquality().hash(_credentialSigningAlgValuesSupported),
      format,
      vct,
      const DeepCollectionEquality().hash(_proofTypesSupported));

  /// Create a copy of SupportedCredentialConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportedCredentialConfigurationImplCopyWith<
          _$SupportedCredentialConfigurationImpl>
      get copyWith => __$$SupportedCredentialConfigurationImplCopyWithImpl<
          _$SupportedCredentialConfigurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportedCredentialConfigurationImplToJson(
      this,
    );
  }
}

abstract class _SupportedCredentialConfiguration
    implements SupportedCredentialConfiguration {
  factory _SupportedCredentialConfiguration(
          {required final String scope,
          required final Map<String, SupportedClaimProperties> claims,
          @JsonKey(name: 'cryptographic_binding_methods_supported')
          required final List<String> cryptographicBindingMethodsSupported,
          required final List<SupportedCredentialDisplayInformation> display,
          @JsonKey(name: 'credential_signing_alg_values_supported')
          required final List<String> credentialSigningAlgValuesSupported,
          required final String format,
          required final String vct,
          @JsonKey(name: 'proof_types_supported')
          required final Map<String, dynamic> proofTypesSupported}) =
      _$SupportedCredentialConfigurationImpl;

  factory _SupportedCredentialConfiguration.fromJson(
          Map<String, dynamic> json) =
      _$SupportedCredentialConfigurationImpl.fromJson;

  @override
  String get scope;
  @override
  Map<String, SupportedClaimProperties> get claims;
  @override
  @JsonKey(name: 'cryptographic_binding_methods_supported')
  List<String> get cryptographicBindingMethodsSupported;
  @override
  List<SupportedCredentialDisplayInformation> get display;
  @override
  @JsonKey(name: 'credential_signing_alg_values_supported')
  List<String> get credentialSigningAlgValuesSupported;
  @override
  String get format;
  @override
  String get vct;
  @override
  @JsonKey(name: 'proof_types_supported')
  Map<String, dynamic> get proofTypesSupported;

  /// Create a copy of SupportedCredentialConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportedCredentialConfigurationImplCopyWith<
          _$SupportedCredentialConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportedCredentialDisplayInformation
    _$SupportedCredentialDisplayInformationFromJson(Map<String, dynamic> json) {
  return _SupportedCredentialDisplayInformation.fromJson(json);
}

/// @nodoc
mixin _$SupportedCredentialDisplayInformation {
  String get name => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;
  @JsonKey(name: 'background_color')
  String get backgroudColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_color')
  String get textColor => throw _privateConstructorUsedError;
  SupportedCredentialIssuerLogo get logo => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this SupportedCredentialDisplayInformation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportedCredentialDisplayInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportedCredentialDisplayInformationCopyWith<
          SupportedCredentialDisplayInformation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportedCredentialDisplayInformationCopyWith<$Res> {
  factory $SupportedCredentialDisplayInformationCopyWith(
          SupportedCredentialDisplayInformation value,
          $Res Function(SupportedCredentialDisplayInformation) then) =
      _$SupportedCredentialDisplayInformationCopyWithImpl<$Res,
          SupportedCredentialDisplayInformation>;
  @useResult
  $Res call(
      {String name,
      String locale,
      @JsonKey(name: 'background_color') String backgroudColor,
      @JsonKey(name: 'text_color') String textColor,
      SupportedCredentialIssuerLogo logo,
      String? description});

  $SupportedCredentialIssuerLogoCopyWith<$Res> get logo;
}

/// @nodoc
class _$SupportedCredentialDisplayInformationCopyWithImpl<$Res,
        $Val extends SupportedCredentialDisplayInformation>
    implements $SupportedCredentialDisplayInformationCopyWith<$Res> {
  _$SupportedCredentialDisplayInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportedCredentialDisplayInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? locale = null,
    Object? backgroudColor = null,
    Object? textColor = null,
    Object? logo = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      backgroudColor: null == backgroudColor
          ? _value.backgroudColor
          : backgroudColor // ignore: cast_nullable_to_non_nullable
              as String,
      textColor: null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as SupportedCredentialIssuerLogo,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SupportedCredentialDisplayInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportedCredentialIssuerLogoCopyWith<$Res> get logo {
    return $SupportedCredentialIssuerLogoCopyWith<$Res>(_value.logo, (value) {
      return _then(_value.copyWith(logo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportedCredentialDisplayInformationImplCopyWith<$Res>
    implements $SupportedCredentialDisplayInformationCopyWith<$Res> {
  factory _$$SupportedCredentialDisplayInformationImplCopyWith(
          _$SupportedCredentialDisplayInformationImpl value,
          $Res Function(_$SupportedCredentialDisplayInformationImpl) then) =
      __$$SupportedCredentialDisplayInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String locale,
      @JsonKey(name: 'background_color') String backgroudColor,
      @JsonKey(name: 'text_color') String textColor,
      SupportedCredentialIssuerLogo logo,
      String? description});

  @override
  $SupportedCredentialIssuerLogoCopyWith<$Res> get logo;
}

/// @nodoc
class __$$SupportedCredentialDisplayInformationImplCopyWithImpl<$Res>
    extends _$SupportedCredentialDisplayInformationCopyWithImpl<$Res,
        _$SupportedCredentialDisplayInformationImpl>
    implements _$$SupportedCredentialDisplayInformationImplCopyWith<$Res> {
  __$$SupportedCredentialDisplayInformationImplCopyWithImpl(
      _$SupportedCredentialDisplayInformationImpl _value,
      $Res Function(_$SupportedCredentialDisplayInformationImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportedCredentialDisplayInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? locale = null,
    Object? backgroudColor = null,
    Object? textColor = null,
    Object? logo = null,
    Object? description = freezed,
  }) {
    return _then(_$SupportedCredentialDisplayInformationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      backgroudColor: null == backgroudColor
          ? _value.backgroudColor
          : backgroudColor // ignore: cast_nullable_to_non_nullable
              as String,
      textColor: null == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as SupportedCredentialIssuerLogo,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SupportedCredentialDisplayInformationImpl
    implements _SupportedCredentialDisplayInformation {
  _$SupportedCredentialDisplayInformationImpl(
      {required this.name,
      required this.locale,
      @JsonKey(name: 'background_color') required this.backgroudColor,
      @JsonKey(name: 'text_color') required this.textColor,
      required this.logo,
      this.description});

  factory _$SupportedCredentialDisplayInformationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportedCredentialDisplayInformationImplFromJson(json);

  @override
  final String name;
  @override
  final String locale;
  @override
  @JsonKey(name: 'background_color')
  final String backgroudColor;
  @override
  @JsonKey(name: 'text_color')
  final String textColor;
  @override
  final SupportedCredentialIssuerLogo logo;
  @override
  final String? description;

  @override
  String toString() {
    return 'SupportedCredentialDisplayInformation(name: $name, locale: $locale, backgroudColor: $backgroudColor, textColor: $textColor, logo: $logo, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportedCredentialDisplayInformationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.backgroudColor, backgroudColor) ||
                other.backgroudColor == backgroudColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, locale, backgroudColor, textColor, logo, description);

  /// Create a copy of SupportedCredentialDisplayInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportedCredentialDisplayInformationImplCopyWith<
          _$SupportedCredentialDisplayInformationImpl>
      get copyWith => __$$SupportedCredentialDisplayInformationImplCopyWithImpl<
          _$SupportedCredentialDisplayInformationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportedCredentialDisplayInformationImplToJson(
      this,
    );
  }
}

abstract class _SupportedCredentialDisplayInformation
    implements SupportedCredentialDisplayInformation {
  factory _SupportedCredentialDisplayInformation(
      {required final String name,
      required final String locale,
      @JsonKey(name: 'background_color') required final String backgroudColor,
      @JsonKey(name: 'text_color') required final String textColor,
      required final SupportedCredentialIssuerLogo logo,
      final String? description}) = _$SupportedCredentialDisplayInformationImpl;

  factory _SupportedCredentialDisplayInformation.fromJson(
          Map<String, dynamic> json) =
      _$SupportedCredentialDisplayInformationImpl.fromJson;

  @override
  String get name;
  @override
  String get locale;
  @override
  @JsonKey(name: 'background_color')
  String get backgroudColor;
  @override
  @JsonKey(name: 'text_color')
  String get textColor;
  @override
  SupportedCredentialIssuerLogo get logo;
  @override
  String? get description;

  /// Create a copy of SupportedCredentialDisplayInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportedCredentialDisplayInformationImplCopyWith<
          _$SupportedCredentialDisplayInformationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportedCredentialIssuerLogo _$SupportedCredentialIssuerLogoFromJson(
    Map<String, dynamic> json) {
  return _SupportedCredentialIssuerLogo.fromJson(json);
}

/// @nodoc
mixin _$SupportedCredentialIssuerLogo {
  String get uri => throw _privateConstructorUsedError;
  @JsonKey(name: 'alt_text')
  String get altText => throw _privateConstructorUsedError;

  /// Serializes this SupportedCredentialIssuerLogo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportedCredentialIssuerLogo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportedCredentialIssuerLogoCopyWith<SupportedCredentialIssuerLogo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportedCredentialIssuerLogoCopyWith<$Res> {
  factory $SupportedCredentialIssuerLogoCopyWith(
          SupportedCredentialIssuerLogo value,
          $Res Function(SupportedCredentialIssuerLogo) then) =
      _$SupportedCredentialIssuerLogoCopyWithImpl<$Res,
          SupportedCredentialIssuerLogo>;
  @useResult
  $Res call({String uri, @JsonKey(name: 'alt_text') String altText});
}

/// @nodoc
class _$SupportedCredentialIssuerLogoCopyWithImpl<$Res,
        $Val extends SupportedCredentialIssuerLogo>
    implements $SupportedCredentialIssuerLogoCopyWith<$Res> {
  _$SupportedCredentialIssuerLogoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportedCredentialIssuerLogo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? altText = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      altText: null == altText
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportedCredentialIssuerLogoImplCopyWith<$Res>
    implements $SupportedCredentialIssuerLogoCopyWith<$Res> {
  factory _$$SupportedCredentialIssuerLogoImplCopyWith(
          _$SupportedCredentialIssuerLogoImpl value,
          $Res Function(_$SupportedCredentialIssuerLogoImpl) then) =
      __$$SupportedCredentialIssuerLogoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri, @JsonKey(name: 'alt_text') String altText});
}

/// @nodoc
class __$$SupportedCredentialIssuerLogoImplCopyWithImpl<$Res>
    extends _$SupportedCredentialIssuerLogoCopyWithImpl<$Res,
        _$SupportedCredentialIssuerLogoImpl>
    implements _$$SupportedCredentialIssuerLogoImplCopyWith<$Res> {
  __$$SupportedCredentialIssuerLogoImplCopyWithImpl(
      _$SupportedCredentialIssuerLogoImpl _value,
      $Res Function(_$SupportedCredentialIssuerLogoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportedCredentialIssuerLogo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
    Object? altText = null,
  }) {
    return _then(_$SupportedCredentialIssuerLogoImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      altText: null == altText
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SupportedCredentialIssuerLogoImpl
    implements _SupportedCredentialIssuerLogo {
  _$SupportedCredentialIssuerLogoImpl(
      {required this.uri, @JsonKey(name: 'alt_text') required this.altText});

  factory _$SupportedCredentialIssuerLogoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportedCredentialIssuerLogoImplFromJson(json);

  @override
  final String uri;
  @override
  @JsonKey(name: 'alt_text')
  final String altText;

  @override
  String toString() {
    return 'SupportedCredentialIssuerLogo(uri: $uri, altText: $altText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportedCredentialIssuerLogoImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.altText, altText) || other.altText == altText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, altText);

  /// Create a copy of SupportedCredentialIssuerLogo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportedCredentialIssuerLogoImplCopyWith<
          _$SupportedCredentialIssuerLogoImpl>
      get copyWith => __$$SupportedCredentialIssuerLogoImplCopyWithImpl<
          _$SupportedCredentialIssuerLogoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportedCredentialIssuerLogoImplToJson(
      this,
    );
  }
}

abstract class _SupportedCredentialIssuerLogo
    implements SupportedCredentialIssuerLogo {
  factory _SupportedCredentialIssuerLogo(
          {required final String uri,
          @JsonKey(name: 'alt_text') required final String altText}) =
      _$SupportedCredentialIssuerLogoImpl;

  factory _SupportedCredentialIssuerLogo.fromJson(Map<String, dynamic> json) =
      _$SupportedCredentialIssuerLogoImpl.fromJson;

  @override
  String get uri;
  @override
  @JsonKey(name: 'alt_text')
  String get altText;

  /// Create a copy of SupportedCredentialIssuerLogo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportedCredentialIssuerLogoImplCopyWith<
          _$SupportedCredentialIssuerLogoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportedClaimProperties _$SupportedClaimPropertiesFromJson(
    Map<String, dynamic> json) {
  return _SupportedClaimProperties.fromJson(json);
}

/// @nodoc
mixin _$SupportedClaimProperties {
  List<DisplaySupportedClaimProperties> get display =>
      throw _privateConstructorUsedError;

  /// Serializes this SupportedClaimProperties to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportedClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportedClaimPropertiesCopyWith<SupportedClaimProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportedClaimPropertiesCopyWith<$Res> {
  factory $SupportedClaimPropertiesCopyWith(SupportedClaimProperties value,
          $Res Function(SupportedClaimProperties) then) =
      _$SupportedClaimPropertiesCopyWithImpl<$Res, SupportedClaimProperties>;
  @useResult
  $Res call({List<DisplaySupportedClaimProperties> display});
}

/// @nodoc
class _$SupportedClaimPropertiesCopyWithImpl<$Res,
        $Val extends SupportedClaimProperties>
    implements $SupportedClaimPropertiesCopyWith<$Res> {
  _$SupportedClaimPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportedClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? display = null,
  }) {
    return _then(_value.copyWith(
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as List<DisplaySupportedClaimProperties>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportedClaimPropertiesImplCopyWith<$Res>
    implements $SupportedClaimPropertiesCopyWith<$Res> {
  factory _$$SupportedClaimPropertiesImplCopyWith(
          _$SupportedClaimPropertiesImpl value,
          $Res Function(_$SupportedClaimPropertiesImpl) then) =
      __$$SupportedClaimPropertiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DisplaySupportedClaimProperties> display});
}

/// @nodoc
class __$$SupportedClaimPropertiesImplCopyWithImpl<$Res>
    extends _$SupportedClaimPropertiesCopyWithImpl<$Res,
        _$SupportedClaimPropertiesImpl>
    implements _$$SupportedClaimPropertiesImplCopyWith<$Res> {
  __$$SupportedClaimPropertiesImplCopyWithImpl(
      _$SupportedClaimPropertiesImpl _value,
      $Res Function(_$SupportedClaimPropertiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportedClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? display = null,
  }) {
    return _then(_$SupportedClaimPropertiesImpl(
      display: null == display
          ? _value._display
          : display // ignore: cast_nullable_to_non_nullable
              as List<DisplaySupportedClaimProperties>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SupportedClaimPropertiesImpl implements _SupportedClaimProperties {
  _$SupportedClaimPropertiesImpl(
      {required final List<DisplaySupportedClaimProperties> display})
      : _display = display;

  factory _$SupportedClaimPropertiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportedClaimPropertiesImplFromJson(json);

  final List<DisplaySupportedClaimProperties> _display;
  @override
  List<DisplaySupportedClaimProperties> get display {
    if (_display is EqualUnmodifiableListView) return _display;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_display);
  }

  @override
  String toString() {
    return 'SupportedClaimProperties(display: $display)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportedClaimPropertiesImpl &&
            const DeepCollectionEquality().equals(other._display, _display));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_display));

  /// Create a copy of SupportedClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportedClaimPropertiesImplCopyWith<_$SupportedClaimPropertiesImpl>
      get copyWith => __$$SupportedClaimPropertiesImplCopyWithImpl<
          _$SupportedClaimPropertiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportedClaimPropertiesImplToJson(
      this,
    );
  }
}

abstract class _SupportedClaimProperties implements SupportedClaimProperties {
  factory _SupportedClaimProperties(
          {required final List<DisplaySupportedClaimProperties> display}) =
      _$SupportedClaimPropertiesImpl;

  factory _SupportedClaimProperties.fromJson(Map<String, dynamic> json) =
      _$SupportedClaimPropertiesImpl.fromJson;

  @override
  List<DisplaySupportedClaimProperties> get display;

  /// Create a copy of SupportedClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportedClaimPropertiesImplCopyWith<_$SupportedClaimPropertiesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DisplaySupportedClaimProperties _$DisplaySupportedClaimPropertiesFromJson(
    Map<String, dynamic> json) {
  return _DisplaySupportedClaimProperties.fromJson(json);
}

/// @nodoc
mixin _$DisplaySupportedClaimProperties {
  String get name => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;

  /// Serializes this DisplaySupportedClaimProperties to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisplaySupportedClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisplaySupportedClaimPropertiesCopyWith<DisplaySupportedClaimProperties>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplaySupportedClaimPropertiesCopyWith<$Res> {
  factory $DisplaySupportedClaimPropertiesCopyWith(
          DisplaySupportedClaimProperties value,
          $Res Function(DisplaySupportedClaimProperties) then) =
      _$DisplaySupportedClaimPropertiesCopyWithImpl<$Res,
          DisplaySupportedClaimProperties>;
  @useResult
  $Res call({String name, String locale});
}

/// @nodoc
class _$DisplaySupportedClaimPropertiesCopyWithImpl<$Res,
        $Val extends DisplaySupportedClaimProperties>
    implements $DisplaySupportedClaimPropertiesCopyWith<$Res> {
  _$DisplaySupportedClaimPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisplaySupportedClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisplaySupportedClaimPropertiesImplCopyWith<$Res>
    implements $DisplaySupportedClaimPropertiesCopyWith<$Res> {
  factory _$$DisplaySupportedClaimPropertiesImplCopyWith(
          _$DisplaySupportedClaimPropertiesImpl value,
          $Res Function(_$DisplaySupportedClaimPropertiesImpl) then) =
      __$$DisplaySupportedClaimPropertiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String locale});
}

/// @nodoc
class __$$DisplaySupportedClaimPropertiesImplCopyWithImpl<$Res>
    extends _$DisplaySupportedClaimPropertiesCopyWithImpl<$Res,
        _$DisplaySupportedClaimPropertiesImpl>
    implements _$$DisplaySupportedClaimPropertiesImplCopyWith<$Res> {
  __$$DisplaySupportedClaimPropertiesImplCopyWithImpl(
      _$DisplaySupportedClaimPropertiesImpl _value,
      $Res Function(_$DisplaySupportedClaimPropertiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisplaySupportedClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? locale = null,
  }) {
    return _then(_$DisplaySupportedClaimPropertiesImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisplaySupportedClaimPropertiesImpl
    implements _DisplaySupportedClaimProperties {
  _$DisplaySupportedClaimPropertiesImpl(
      {required this.name, required this.locale});

  factory _$DisplaySupportedClaimPropertiesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DisplaySupportedClaimPropertiesImplFromJson(json);

  @override
  final String name;
  @override
  final String locale;

  @override
  String toString() {
    return 'DisplaySupportedClaimProperties(name: $name, locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplaySupportedClaimPropertiesImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, locale);

  /// Create a copy of DisplaySupportedClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplaySupportedClaimPropertiesImplCopyWith<
          _$DisplaySupportedClaimPropertiesImpl>
      get copyWith => __$$DisplaySupportedClaimPropertiesImplCopyWithImpl<
          _$DisplaySupportedClaimPropertiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisplaySupportedClaimPropertiesImplToJson(
      this,
    );
  }
}

abstract class _DisplaySupportedClaimProperties
    implements DisplaySupportedClaimProperties {
  factory _DisplaySupportedClaimProperties(
      {required final String name,
      required final String locale}) = _$DisplaySupportedClaimPropertiesImpl;

  factory _DisplaySupportedClaimProperties.fromJson(Map<String, dynamic> json) =
      _$DisplaySupportedClaimPropertiesImpl.fromJson;

  @override
  String get name;
  @override
  String get locale;

  /// Create a copy of DisplaySupportedClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisplaySupportedClaimPropertiesImplCopyWith<
          _$DisplaySupportedClaimPropertiesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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
    Object? claims = null,
    Object? disclosures = null,
    Object? expiresAt = null,
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
      List<VerifiableCredentialClaim> claims,
      List<VerifiableDisclosure> disclosures,
      DateTime expiresAt,
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
    Object? claims = null,
    Object? disclosures = null,
    Object? expiresAt = null,
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
  final SupportedCredentialDisplayInformation? display;

  @override
  String toString() {
    return 'VerifiableCredential(credentialResponse: $credentialResponse, subject: $subject, claims: $claims, disclosures: $disclosures, expiresAt: $expiresAt, display: $display)';
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
