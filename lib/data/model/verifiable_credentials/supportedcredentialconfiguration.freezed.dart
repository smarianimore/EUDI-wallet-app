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
  Map<String, ClaimProperties> get claims => throw _privateConstructorUsedError;
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
      Map<String, ClaimProperties> claims,
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
              as Map<String, ClaimProperties>,
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
      Map<String, ClaimProperties> claims,
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
              as Map<String, ClaimProperties>,
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
      required final Map<String, ClaimProperties> claims,
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
  final Map<String, ClaimProperties> _claims;
  @override
  Map<String, ClaimProperties> get claims {
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
          required final Map<String, ClaimProperties> claims,
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
  Map<String, ClaimProperties> get claims;
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
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'background_color')
  String get backgroudColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_color')
  String get textColor => throw _privateConstructorUsedError;
  SupportedCredentialIssuerLogo get logo => throw _privateConstructorUsedError;

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
      String description,
      @JsonKey(name: 'background_color') String backgroudColor,
      @JsonKey(name: 'text_color') String textColor,
      SupportedCredentialIssuerLogo logo});

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
    Object? description = null,
    Object? backgroudColor = null,
    Object? textColor = null,
    Object? logo = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      String description,
      @JsonKey(name: 'background_color') String backgroudColor,
      @JsonKey(name: 'text_color') String textColor,
      SupportedCredentialIssuerLogo logo});

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
    Object? description = null,
    Object? backgroudColor = null,
    Object? textColor = null,
    Object? logo = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      required this.description,
      @JsonKey(name: 'background_color') required this.backgroudColor,
      @JsonKey(name: 'text_color') required this.textColor,
      required this.logo});

  factory _$SupportedCredentialDisplayInformationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportedCredentialDisplayInformationImplFromJson(json);

  @override
  final String name;
  @override
  final String locale;
  @override
  final String description;
  @override
  @JsonKey(name: 'background_color')
  final String backgroudColor;
  @override
  @JsonKey(name: 'text_color')
  final String textColor;
  @override
  final SupportedCredentialIssuerLogo logo;

  @override
  String toString() {
    return 'SupportedCredentialDisplayInformation(name: $name, locale: $locale, description: $description, backgroudColor: $backgroudColor, textColor: $textColor, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportedCredentialDisplayInformationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.backgroudColor, backgroudColor) ||
                other.backgroudColor == backgroudColor) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, locale, description, backgroudColor, textColor, logo);

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
      required final String description,
      @JsonKey(name: 'background_color') required final String backgroudColor,
      @JsonKey(name: 'text_color') required final String textColor,
      required final SupportedCredentialIssuerLogo
          logo}) = _$SupportedCredentialDisplayInformationImpl;

  factory _SupportedCredentialDisplayInformation.fromJson(
          Map<String, dynamic> json) =
      _$SupportedCredentialDisplayInformationImpl.fromJson;

  @override
  String get name;
  @override
  String get locale;
  @override
  String get description;
  @override
  @JsonKey(name: 'background_color')
  String get backgroudColor;
  @override
  @JsonKey(name: 'text_color')
  String get textColor;
  @override
  SupportedCredentialIssuerLogo get logo;

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

ClaimProperties _$ClaimPropertiesFromJson(Map<String, dynamic> json) {
  return _ClaimProperties.fromJson(json);
}

/// @nodoc
mixin _$ClaimProperties {
  List<DisplayClaimProperties> get display =>
      throw _privateConstructorUsedError;

  /// Serializes this ClaimProperties to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClaimPropertiesCopyWith<ClaimProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimPropertiesCopyWith<$Res> {
  factory $ClaimPropertiesCopyWith(
          ClaimProperties value, $Res Function(ClaimProperties) then) =
      _$ClaimPropertiesCopyWithImpl<$Res, ClaimProperties>;
  @useResult
  $Res call({List<DisplayClaimProperties> display});
}

/// @nodoc
class _$ClaimPropertiesCopyWithImpl<$Res, $Val extends ClaimProperties>
    implements $ClaimPropertiesCopyWith<$Res> {
  _$ClaimPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClaimProperties
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
              as List<DisplayClaimProperties>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClaimPropertiesImplCopyWith<$Res>
    implements $ClaimPropertiesCopyWith<$Res> {
  factory _$$ClaimPropertiesImplCopyWith(_$ClaimPropertiesImpl value,
          $Res Function(_$ClaimPropertiesImpl) then) =
      __$$ClaimPropertiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DisplayClaimProperties> display});
}

/// @nodoc
class __$$ClaimPropertiesImplCopyWithImpl<$Res>
    extends _$ClaimPropertiesCopyWithImpl<$Res, _$ClaimPropertiesImpl>
    implements _$$ClaimPropertiesImplCopyWith<$Res> {
  __$$ClaimPropertiesImplCopyWithImpl(
      _$ClaimPropertiesImpl _value, $Res Function(_$ClaimPropertiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? display = null,
  }) {
    return _then(_$ClaimPropertiesImpl(
      display: null == display
          ? _value._display
          : display // ignore: cast_nullable_to_non_nullable
              as List<DisplayClaimProperties>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ClaimPropertiesImpl implements _ClaimProperties {
  _$ClaimPropertiesImpl({required final List<DisplayClaimProperties> display})
      : _display = display;

  factory _$ClaimPropertiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimPropertiesImplFromJson(json);

  final List<DisplayClaimProperties> _display;
  @override
  List<DisplayClaimProperties> get display {
    if (_display is EqualUnmodifiableListView) return _display;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_display);
  }

  @override
  String toString() {
    return 'ClaimProperties(display: $display)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimPropertiesImpl &&
            const DeepCollectionEquality().equals(other._display, _display));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_display));

  /// Create a copy of ClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimPropertiesImplCopyWith<_$ClaimPropertiesImpl> get copyWith =>
      __$$ClaimPropertiesImplCopyWithImpl<_$ClaimPropertiesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimPropertiesImplToJson(
      this,
    );
  }
}

abstract class _ClaimProperties implements ClaimProperties {
  factory _ClaimProperties(
          {required final List<DisplayClaimProperties> display}) =
      _$ClaimPropertiesImpl;

  factory _ClaimProperties.fromJson(Map<String, dynamic> json) =
      _$ClaimPropertiesImpl.fromJson;

  @override
  List<DisplayClaimProperties> get display;

  /// Create a copy of ClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClaimPropertiesImplCopyWith<_$ClaimPropertiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DisplayClaimProperties _$DisplayClaimPropertiesFromJson(
    Map<String, dynamic> json) {
  return _DisplayClaimProperties.fromJson(json);
}

/// @nodoc
mixin _$DisplayClaimProperties {
  String get name => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;

  /// Serializes this DisplayClaimProperties to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisplayClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisplayClaimPropertiesCopyWith<DisplayClaimProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayClaimPropertiesCopyWith<$Res> {
  factory $DisplayClaimPropertiesCopyWith(DisplayClaimProperties value,
          $Res Function(DisplayClaimProperties) then) =
      _$DisplayClaimPropertiesCopyWithImpl<$Res, DisplayClaimProperties>;
  @useResult
  $Res call({String name, String locale});
}

/// @nodoc
class _$DisplayClaimPropertiesCopyWithImpl<$Res,
        $Val extends DisplayClaimProperties>
    implements $DisplayClaimPropertiesCopyWith<$Res> {
  _$DisplayClaimPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisplayClaimProperties
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
abstract class _$$DisplayClaimPropertiesImplCopyWith<$Res>
    implements $DisplayClaimPropertiesCopyWith<$Res> {
  factory _$$DisplayClaimPropertiesImplCopyWith(
          _$DisplayClaimPropertiesImpl value,
          $Res Function(_$DisplayClaimPropertiesImpl) then) =
      __$$DisplayClaimPropertiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String locale});
}

/// @nodoc
class __$$DisplayClaimPropertiesImplCopyWithImpl<$Res>
    extends _$DisplayClaimPropertiesCopyWithImpl<$Res,
        _$DisplayClaimPropertiesImpl>
    implements _$$DisplayClaimPropertiesImplCopyWith<$Res> {
  __$$DisplayClaimPropertiesImplCopyWithImpl(
      _$DisplayClaimPropertiesImpl _value,
      $Res Function(_$DisplayClaimPropertiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisplayClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? locale = null,
  }) {
    return _then(_$DisplayClaimPropertiesImpl(
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
class _$DisplayClaimPropertiesImpl implements _DisplayClaimProperties {
  _$DisplayClaimPropertiesImpl({required this.name, required this.locale});

  factory _$DisplayClaimPropertiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisplayClaimPropertiesImplFromJson(json);

  @override
  final String name;
  @override
  final String locale;

  @override
  String toString() {
    return 'DisplayClaimProperties(name: $name, locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayClaimPropertiesImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, locale);

  /// Create a copy of DisplayClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayClaimPropertiesImplCopyWith<_$DisplayClaimPropertiesImpl>
      get copyWith => __$$DisplayClaimPropertiesImplCopyWithImpl<
          _$DisplayClaimPropertiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisplayClaimPropertiesImplToJson(
      this,
    );
  }
}

abstract class _DisplayClaimProperties implements DisplayClaimProperties {
  factory _DisplayClaimProperties(
      {required final String name,
      required final String locale}) = _$DisplayClaimPropertiesImpl;

  factory _DisplayClaimProperties.fromJson(Map<String, dynamic> json) =
      _$DisplayClaimPropertiesImpl.fromJson;

  @override
  String get name;
  @override
  String get locale;

  /// Create a copy of DisplayClaimProperties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisplayClaimPropertiesImplCopyWith<_$DisplayClaimPropertiesImpl>
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
  dynamic get cNonce => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'c_nonce') dynamic cNonce});
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
    Object? cNonce = freezed,
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
      cNonce: freezed == cNonce
          ? _value.cNonce
          : cNonce // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      @JsonKey(name: 'c_nonce') dynamic cNonce});
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
    Object? cNonce = freezed,
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
      cNonce: freezed == cNonce ? _value.cNonce! : cNonce,
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
      @JsonKey(name: 'c_nonce') this.cNonce});

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
  final dynamic cNonce;

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
            const DeepCollectionEquality().equals(other.cNonce, cNonce));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, credential, cNonceExpiresIn,
      const DeepCollectionEquality().hash(cNonce));

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
      final dynamic cNonce}) = _$VerifiableCredentialResponseImpl;

  factory _VerifiableCredentialResponse.fromJson(Map<String, dynamic> json) =
      _$VerifiableCredentialResponseImpl.fromJson;

  @override
  String get credential;
  @override
  @JsonKey(name: 'c_nonce_expires_in')
  int get cNonceExpiresIn;
  @override
  @JsonKey(name: 'c_nonce')
  dynamic get cNonce;

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
  $Res call({VerifiableCredentialResponse credentialResponse, String subject});

  $VerifiableCredentialResponseCopyWith<$Res> get credentialResponse;
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
}

/// @nodoc
abstract class _$$VerifiableCredentialImplCopyWith<$Res>
    implements $VerifiableCredentialCopyWith<$Res> {
  factory _$$VerifiableCredentialImplCopyWith(_$VerifiableCredentialImpl value,
          $Res Function(_$VerifiableCredentialImpl) then) =
      __$$VerifiableCredentialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VerifiableCredentialResponse credentialResponse, String subject});

  @override
  $VerifiableCredentialResponseCopyWith<$Res> get credentialResponse;
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
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VerifiableCredentialImpl implements _VerifiableCredential {
  _$VerifiableCredentialImpl(
      {required this.credentialResponse, required this.subject});

  factory _$VerifiableCredentialImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifiableCredentialImplFromJson(json);

  @override
  final VerifiableCredentialResponse credentialResponse;
  @override
  final String subject;

  @override
  String toString() {
    return 'VerifiableCredential(credentialResponse: $credentialResponse, subject: $subject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifiableCredentialImpl &&
            (identical(other.credentialResponse, credentialResponse) ||
                other.credentialResponse == credentialResponse) &&
            (identical(other.subject, subject) || other.subject == subject));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, credentialResponse, subject);

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
      required final String subject}) = _$VerifiableCredentialImpl;

  factory _VerifiableCredential.fromJson(Map<String, dynamic> json) =
      _$VerifiableCredentialImpl.fromJson;

  @override
  VerifiableCredentialResponse get credentialResponse;
  @override
  String get subject;

  /// Create a copy of VerifiableCredential
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifiableCredentialImplCopyWith<_$VerifiableCredentialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
