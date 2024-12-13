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
  Map<String, dynamic> get claims => throw _privateConstructorUsedError;
  List<String> get cryptographicBindingMethodsSupported =>
      throw _privateConstructorUsedError;
  SupportedCredentialDisplayInformation get display =>
      throw _privateConstructorUsedError;
  List<String> get credentialSigningAlgValuesSupported =>
      throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get vct => throw _privateConstructorUsedError;
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
      Map<String, dynamic> claims,
      List<String> cryptographicBindingMethodsSupported,
      SupportedCredentialDisplayInformation display,
      List<String> credentialSigningAlgValuesSupported,
      String format,
      String vct,
      Map<String, dynamic> proofTypesSupported});

  $SupportedCredentialDisplayInformationCopyWith<$Res> get display;
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
              as Map<String, dynamic>,
      cryptographicBindingMethodsSupported: null ==
              cryptographicBindingMethodsSupported
          ? _value.cryptographicBindingMethodsSupported
          : cryptographicBindingMethodsSupported // ignore: cast_nullable_to_non_nullable
              as List<String>,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as SupportedCredentialDisplayInformation,
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

  /// Create a copy of SupportedCredentialConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SupportedCredentialDisplayInformationCopyWith<$Res> get display {
    return $SupportedCredentialDisplayInformationCopyWith<$Res>(_value.display,
        (value) {
      return _then(_value.copyWith(display: value) as $Val);
    });
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
      Map<String, dynamic> claims,
      List<String> cryptographicBindingMethodsSupported,
      SupportedCredentialDisplayInformation display,
      List<String> credentialSigningAlgValuesSupported,
      String format,
      String vct,
      Map<String, dynamic> proofTypesSupported});

  @override
  $SupportedCredentialDisplayInformationCopyWith<$Res> get display;
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
              as Map<String, dynamic>,
      cryptographicBindingMethodsSupported: null ==
              cryptographicBindingMethodsSupported
          ? _value._cryptographicBindingMethodsSupported
          : cryptographicBindingMethodsSupported // ignore: cast_nullable_to_non_nullable
              as List<String>,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as SupportedCredentialDisplayInformation,
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
@JsonSerializable()
class _$SupportedCredentialConfigurationImpl
    implements _SupportedCredentialConfiguration {
  _$SupportedCredentialConfigurationImpl(
      {required this.scope,
      required final Map<String, dynamic> claims,
      required final List<String> cryptographicBindingMethodsSupported,
      required this.display,
      required final List<String> credentialSigningAlgValuesSupported,
      required this.format,
      required this.vct,
      required final Map<String, dynamic> proofTypesSupported})
      : _claims = claims,
        _cryptographicBindingMethodsSupported =
            cryptographicBindingMethodsSupported,
        _credentialSigningAlgValuesSupported =
            credentialSigningAlgValuesSupported,
        _proofTypesSupported = proofTypesSupported;

  factory _$SupportedCredentialConfigurationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportedCredentialConfigurationImplFromJson(json);

  @override
  final String scope;
  final Map<String, dynamic> _claims;
  @override
  Map<String, dynamic> get claims {
    if (_claims is EqualUnmodifiableMapView) return _claims;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_claims);
  }

  final List<String> _cryptographicBindingMethodsSupported;
  @override
  List<String> get cryptographicBindingMethodsSupported {
    if (_cryptographicBindingMethodsSupported is EqualUnmodifiableListView)
      return _cryptographicBindingMethodsSupported;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cryptographicBindingMethodsSupported);
  }

  @override
  final SupportedCredentialDisplayInformation display;
  final List<String> _credentialSigningAlgValuesSupported;
  @override
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
            (identical(other.display, display) || other.display == display) &&
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
      display,
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
          required final Map<String, dynamic> claims,
          required final List<String> cryptographicBindingMethodsSupported,
          required final SupportedCredentialDisplayInformation display,
          required final List<String> credentialSigningAlgValuesSupported,
          required final String format,
          required final String vct,
          required final Map<String, dynamic> proofTypesSupported}) =
      _$SupportedCredentialConfigurationImpl;

  factory _SupportedCredentialConfiguration.fromJson(
          Map<String, dynamic> json) =
      _$SupportedCredentialConfigurationImpl.fromJson;

  @override
  String get scope;
  @override
  Map<String, dynamic> get claims;
  @override
  List<String> get cryptographicBindingMethodsSupported;
  @override
  SupportedCredentialDisplayInformation get display;
  @override
  List<String> get credentialSigningAlgValuesSupported;
  @override
  String get format;
  @override
  String get vct;
  @override
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
  String get backgroudColor => throw _privateConstructorUsedError;
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
      String backgroudColor,
      String textColor,
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
      String backgroudColor,
      String textColor,
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
@JsonSerializable()
class _$SupportedCredentialDisplayInformationImpl
    implements _SupportedCredentialDisplayInformation {
  _$SupportedCredentialDisplayInformationImpl(
      {required this.name,
      required this.locale,
      required this.description,
      required this.backgroudColor,
      required this.textColor,
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
  final String backgroudColor;
  @override
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
          required final String backgroudColor,
          required final String textColor,
          required final SupportedCredentialIssuerLogo logo}) =
      _$SupportedCredentialDisplayInformationImpl;

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
  String get backgroudColor;
  @override
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
  $Res call({String uri, String altText});
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
  $Res call({String uri, String altText});
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
@JsonSerializable()
class _$SupportedCredentialIssuerLogoImpl
    implements _SupportedCredentialIssuerLogo {
  _$SupportedCredentialIssuerLogoImpl(
      {required this.uri, required this.altText});

  factory _$SupportedCredentialIssuerLogoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SupportedCredentialIssuerLogoImplFromJson(json);

  @override
  final String uri;
  @override
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
      required final String altText}) = _$SupportedCredentialIssuerLogoImpl;

  factory _SupportedCredentialIssuerLogo.fromJson(Map<String, dynamic> json) =
      _$SupportedCredentialIssuerLogoImpl.fromJson;

  @override
  String get uri;
  @override
  String get altText;

  /// Create a copy of SupportedCredentialIssuerLogo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportedCredentialIssuerLogoImplCopyWith<
          _$SupportedCredentialIssuerLogoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
