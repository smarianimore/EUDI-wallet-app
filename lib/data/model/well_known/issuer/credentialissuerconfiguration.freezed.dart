// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credentialissuerconfiguration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WellKnownCredentialIssuerConfiguration
    _$WellKnownCredentialIssuerConfigurationFromJson(
        Map<String, dynamic> json) {
  return _WellKnownCredentialIssuerConfiguration.fromJson(json);
}

/// @nodoc
mixin _$WellKnownCredentialIssuerConfiguration {
  @JsonKey(name: 'credential_issuer')
  String get credentialIssuer => throw _privateConstructorUsedError;
  @JsonKey(name: 'authorization_servers')
  List<String> get authorizationServers => throw _privateConstructorUsedError;
  @JsonKey(name: 'credential_endpoint')
  String get credentialEndpoint => throw _privateConstructorUsedError;
  List<CredentialIssuerDisplayInformation> get display =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'credential_configurations_supported')
  Map<String, SupportedCredentialConfiguration>
      get credentialConfigurationsSupported =>
          throw _privateConstructorUsedError;

  /// Serializes this WellKnownCredentialIssuerConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WellKnownCredentialIssuerConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WellKnownCredentialIssuerConfigurationCopyWith<
          WellKnownCredentialIssuerConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WellKnownCredentialIssuerConfigurationCopyWith<$Res> {
  factory $WellKnownCredentialIssuerConfigurationCopyWith(
          WellKnownCredentialIssuerConfiguration value,
          $Res Function(WellKnownCredentialIssuerConfiguration) then) =
      _$WellKnownCredentialIssuerConfigurationCopyWithImpl<$Res,
          WellKnownCredentialIssuerConfiguration>;
  @useResult
  $Res call(
      {@JsonKey(name: 'credential_issuer') String credentialIssuer,
      @JsonKey(name: 'authorization_servers') List<String> authorizationServers,
      @JsonKey(name: 'credential_endpoint') String credentialEndpoint,
      List<CredentialIssuerDisplayInformation> display,
      @JsonKey(name: 'credential_configurations_supported')
      Map<String, SupportedCredentialConfiguration>
          credentialConfigurationsSupported});
}

/// @nodoc
class _$WellKnownCredentialIssuerConfigurationCopyWithImpl<$Res,
        $Val extends WellKnownCredentialIssuerConfiguration>
    implements $WellKnownCredentialIssuerConfigurationCopyWith<$Res> {
  _$WellKnownCredentialIssuerConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WellKnownCredentialIssuerConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentialIssuer = null,
    Object? authorizationServers = null,
    Object? credentialEndpoint = null,
    Object? display = null,
    Object? credentialConfigurationsSupported = null,
  }) {
    return _then(_value.copyWith(
      credentialIssuer: null == credentialIssuer
          ? _value.credentialIssuer
          : credentialIssuer // ignore: cast_nullable_to_non_nullable
              as String,
      authorizationServers: null == authorizationServers
          ? _value.authorizationServers
          : authorizationServers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      credentialEndpoint: null == credentialEndpoint
          ? _value.credentialEndpoint
          : credentialEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as List<CredentialIssuerDisplayInformation>,
      credentialConfigurationsSupported: null ==
              credentialConfigurationsSupported
          ? _value.credentialConfigurationsSupported
          : credentialConfigurationsSupported // ignore: cast_nullable_to_non_nullable
              as Map<String, SupportedCredentialConfiguration>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WellKnownCredentialIssuerConfigurationImplCopyWith<$Res>
    implements $WellKnownCredentialIssuerConfigurationCopyWith<$Res> {
  factory _$$WellKnownCredentialIssuerConfigurationImplCopyWith(
          _$WellKnownCredentialIssuerConfigurationImpl value,
          $Res Function(_$WellKnownCredentialIssuerConfigurationImpl) then) =
      __$$WellKnownCredentialIssuerConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'credential_issuer') String credentialIssuer,
      @JsonKey(name: 'authorization_servers') List<String> authorizationServers,
      @JsonKey(name: 'credential_endpoint') String credentialEndpoint,
      List<CredentialIssuerDisplayInformation> display,
      @JsonKey(name: 'credential_configurations_supported')
      Map<String, SupportedCredentialConfiguration>
          credentialConfigurationsSupported});
}

/// @nodoc
class __$$WellKnownCredentialIssuerConfigurationImplCopyWithImpl<$Res>
    extends _$WellKnownCredentialIssuerConfigurationCopyWithImpl<$Res,
        _$WellKnownCredentialIssuerConfigurationImpl>
    implements _$$WellKnownCredentialIssuerConfigurationImplCopyWith<$Res> {
  __$$WellKnownCredentialIssuerConfigurationImplCopyWithImpl(
      _$WellKnownCredentialIssuerConfigurationImpl _value,
      $Res Function(_$WellKnownCredentialIssuerConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of WellKnownCredentialIssuerConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentialIssuer = null,
    Object? authorizationServers = null,
    Object? credentialEndpoint = null,
    Object? display = null,
    Object? credentialConfigurationsSupported = null,
  }) {
    return _then(_$WellKnownCredentialIssuerConfigurationImpl(
      credentialIssuer: null == credentialIssuer
          ? _value.credentialIssuer
          : credentialIssuer // ignore: cast_nullable_to_non_nullable
              as String,
      authorizationServers: null == authorizationServers
          ? _value._authorizationServers
          : authorizationServers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      credentialEndpoint: null == credentialEndpoint
          ? _value.credentialEndpoint
          : credentialEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      display: null == display
          ? _value._display
          : display // ignore: cast_nullable_to_non_nullable
              as List<CredentialIssuerDisplayInformation>,
      credentialConfigurationsSupported: null ==
              credentialConfigurationsSupported
          ? _value._credentialConfigurationsSupported
          : credentialConfigurationsSupported // ignore: cast_nullable_to_non_nullable
              as Map<String, SupportedCredentialConfiguration>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WellKnownCredentialIssuerConfigurationImpl
    implements _WellKnownCredentialIssuerConfiguration {
  _$WellKnownCredentialIssuerConfigurationImpl(
      {@JsonKey(name: 'credential_issuer') required this.credentialIssuer,
      @JsonKey(name: 'authorization_servers')
      required final List<String> authorizationServers,
      @JsonKey(name: 'credential_endpoint') required this.credentialEndpoint,
      required final List<CredentialIssuerDisplayInformation> display,
      @JsonKey(name: 'credential_configurations_supported')
      required final Map<String, SupportedCredentialConfiguration>
          credentialConfigurationsSupported})
      : _authorizationServers = authorizationServers,
        _display = display,
        _credentialConfigurationsSupported = credentialConfigurationsSupported;

  factory _$WellKnownCredentialIssuerConfigurationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WellKnownCredentialIssuerConfigurationImplFromJson(json);

  @override
  @JsonKey(name: 'credential_issuer')
  final String credentialIssuer;
  final List<String> _authorizationServers;
  @override
  @JsonKey(name: 'authorization_servers')
  List<String> get authorizationServers {
    if (_authorizationServers is EqualUnmodifiableListView)
      return _authorizationServers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authorizationServers);
  }

  @override
  @JsonKey(name: 'credential_endpoint')
  final String credentialEndpoint;
  final List<CredentialIssuerDisplayInformation> _display;
  @override
  List<CredentialIssuerDisplayInformation> get display {
    if (_display is EqualUnmodifiableListView) return _display;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_display);
  }

  final Map<String, SupportedCredentialConfiguration>
      _credentialConfigurationsSupported;
  @override
  @JsonKey(name: 'credential_configurations_supported')
  Map<String, SupportedCredentialConfiguration>
      get credentialConfigurationsSupported {
    if (_credentialConfigurationsSupported is EqualUnmodifiableMapView)
      return _credentialConfigurationsSupported;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_credentialConfigurationsSupported);
  }

  @override
  String toString() {
    return 'WellKnownCredentialIssuerConfiguration(credentialIssuer: $credentialIssuer, authorizationServers: $authorizationServers, credentialEndpoint: $credentialEndpoint, display: $display, credentialConfigurationsSupported: $credentialConfigurationsSupported)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WellKnownCredentialIssuerConfigurationImpl &&
            (identical(other.credentialIssuer, credentialIssuer) ||
                other.credentialIssuer == credentialIssuer) &&
            const DeepCollectionEquality()
                .equals(other._authorizationServers, _authorizationServers) &&
            (identical(other.credentialEndpoint, credentialEndpoint) ||
                other.credentialEndpoint == credentialEndpoint) &&
            const DeepCollectionEquality().equals(other._display, _display) &&
            const DeepCollectionEquality().equals(
                other._credentialConfigurationsSupported,
                _credentialConfigurationsSupported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      credentialIssuer,
      const DeepCollectionEquality().hash(_authorizationServers),
      credentialEndpoint,
      const DeepCollectionEquality().hash(_display),
      const DeepCollectionEquality().hash(_credentialConfigurationsSupported));

  /// Create a copy of WellKnownCredentialIssuerConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WellKnownCredentialIssuerConfigurationImplCopyWith<
          _$WellKnownCredentialIssuerConfigurationImpl>
      get copyWith =>
          __$$WellKnownCredentialIssuerConfigurationImplCopyWithImpl<
              _$WellKnownCredentialIssuerConfigurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WellKnownCredentialIssuerConfigurationImplToJson(
      this,
    );
  }
}

abstract class _WellKnownCredentialIssuerConfiguration
    implements WellKnownCredentialIssuerConfiguration {
  factory _WellKnownCredentialIssuerConfiguration(
          {@JsonKey(name: 'credential_issuer')
          required final String credentialIssuer,
          @JsonKey(name: 'authorization_servers')
          required final List<String> authorizationServers,
          @JsonKey(name: 'credential_endpoint')
          required final String credentialEndpoint,
          required final List<CredentialIssuerDisplayInformation> display,
          @JsonKey(name: 'credential_configurations_supported')
          required final Map<String, SupportedCredentialConfiguration>
              credentialConfigurationsSupported}) =
      _$WellKnownCredentialIssuerConfigurationImpl;

  factory _WellKnownCredentialIssuerConfiguration.fromJson(
          Map<String, dynamic> json) =
      _$WellKnownCredentialIssuerConfigurationImpl.fromJson;

  @override
  @JsonKey(name: 'credential_issuer')
  String get credentialIssuer;
  @override
  @JsonKey(name: 'authorization_servers')
  List<String> get authorizationServers;
  @override
  @JsonKey(name: 'credential_endpoint')
  String get credentialEndpoint;
  @override
  List<CredentialIssuerDisplayInformation> get display;
  @override
  @JsonKey(name: 'credential_configurations_supported')
  Map<String, SupportedCredentialConfiguration>
      get credentialConfigurationsSupported;

  /// Create a copy of WellKnownCredentialIssuerConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WellKnownCredentialIssuerConfigurationImplCopyWith<
          _$WellKnownCredentialIssuerConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CredentialIssuerDisplayInformation _$CredentialIssuerDisplayInformationFromJson(
    Map<String, dynamic> json) {
  return _CredentialIssuerDisplayInformation.fromJson(json);
}

/// @nodoc
mixin _$CredentialIssuerDisplayInformation {
  String get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get locale => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  CredentialIssuerLogoInformation? get logo =>
      throw _privateConstructorUsedError;

  /// Serializes this CredentialIssuerDisplayInformation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CredentialIssuerDisplayInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CredentialIssuerDisplayInformationCopyWith<
          CredentialIssuerDisplayInformation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialIssuerDisplayInformationCopyWith<$Res> {
  factory $CredentialIssuerDisplayInformationCopyWith(
          CredentialIssuerDisplayInformation value,
          $Res Function(CredentialIssuerDisplayInformation) then) =
      _$CredentialIssuerDisplayInformationCopyWithImpl<$Res,
          CredentialIssuerDisplayInformation>;
  @useResult
  $Res call(
      {String name,
      String? location,
      String? locale,
      String? description,
      CredentialIssuerLogoInformation? logo});

  $CredentialIssuerLogoInformationCopyWith<$Res>? get logo;
}

/// @nodoc
class _$CredentialIssuerDisplayInformationCopyWithImpl<$Res,
        $Val extends CredentialIssuerDisplayInformation>
    implements $CredentialIssuerDisplayInformationCopyWith<$Res> {
  _$CredentialIssuerDisplayInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CredentialIssuerDisplayInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? location = freezed,
    Object? locale = freezed,
    Object? description = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as CredentialIssuerLogoInformation?,
    ) as $Val);
  }

  /// Create a copy of CredentialIssuerDisplayInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialIssuerLogoInformationCopyWith<$Res>? get logo {
    if (_value.logo == null) {
      return null;
    }

    return $CredentialIssuerLogoInformationCopyWith<$Res>(_value.logo!,
        (value) {
      return _then(_value.copyWith(logo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CredentialIssuerDisplayInformationImplCopyWith<$Res>
    implements $CredentialIssuerDisplayInformationCopyWith<$Res> {
  factory _$$CredentialIssuerDisplayInformationImplCopyWith(
          _$CredentialIssuerDisplayInformationImpl value,
          $Res Function(_$CredentialIssuerDisplayInformationImpl) then) =
      __$$CredentialIssuerDisplayInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? location,
      String? locale,
      String? description,
      CredentialIssuerLogoInformation? logo});

  @override
  $CredentialIssuerLogoInformationCopyWith<$Res>? get logo;
}

/// @nodoc
class __$$CredentialIssuerDisplayInformationImplCopyWithImpl<$Res>
    extends _$CredentialIssuerDisplayInformationCopyWithImpl<$Res,
        _$CredentialIssuerDisplayInformationImpl>
    implements _$$CredentialIssuerDisplayInformationImplCopyWith<$Res> {
  __$$CredentialIssuerDisplayInformationImplCopyWithImpl(
      _$CredentialIssuerDisplayInformationImpl _value,
      $Res Function(_$CredentialIssuerDisplayInformationImpl) _then)
      : super(_value, _then);

  /// Create a copy of CredentialIssuerDisplayInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? location = freezed,
    Object? locale = freezed,
    Object? description = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$CredentialIssuerDisplayInformationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as CredentialIssuerLogoInformation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CredentialIssuerDisplayInformationImpl
    implements _CredentialIssuerDisplayInformation {
  _$CredentialIssuerDisplayInformationImpl(
      {required this.name,
      this.location,
      this.locale,
      this.description,
      this.logo});

  factory _$CredentialIssuerDisplayInformationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CredentialIssuerDisplayInformationImplFromJson(json);

  @override
  final String name;
  @override
  final String? location;
  @override
  final String? locale;
  @override
  final String? description;
  @override
  final CredentialIssuerLogoInformation? logo;

  @override
  String toString() {
    return 'CredentialIssuerDisplayInformation(name: $name, location: $location, locale: $locale, description: $description, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialIssuerDisplayInformationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, location, locale, description, logo);

  /// Create a copy of CredentialIssuerDisplayInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CredentialIssuerDisplayInformationImplCopyWith<
          _$CredentialIssuerDisplayInformationImpl>
      get copyWith => __$$CredentialIssuerDisplayInformationImplCopyWithImpl<
          _$CredentialIssuerDisplayInformationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CredentialIssuerDisplayInformationImplToJson(
      this,
    );
  }
}

abstract class _CredentialIssuerDisplayInformation
    implements CredentialIssuerDisplayInformation {
  factory _CredentialIssuerDisplayInformation(
          {required final String name,
          final String? location,
          final String? locale,
          final String? description,
          final CredentialIssuerLogoInformation? logo}) =
      _$CredentialIssuerDisplayInformationImpl;

  factory _CredentialIssuerDisplayInformation.fromJson(
          Map<String, dynamic> json) =
      _$CredentialIssuerDisplayInformationImpl.fromJson;

  @override
  String get name;
  @override
  String? get location;
  @override
  String? get locale;
  @override
  String? get description;
  @override
  CredentialIssuerLogoInformation? get logo;

  /// Create a copy of CredentialIssuerDisplayInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CredentialIssuerDisplayInformationImplCopyWith<
          _$CredentialIssuerDisplayInformationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CredentialIssuerLogoInformation _$CredentialIssuerLogoInformationFromJson(
    Map<String, dynamic> json) {
  return _CredentialIssuerLogoInformation.fromJson(json);
}

/// @nodoc
mixin _$CredentialIssuerLogoInformation {
  String get uri => throw _privateConstructorUsedError;

  /// Serializes this CredentialIssuerLogoInformation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CredentialIssuerLogoInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CredentialIssuerLogoInformationCopyWith<CredentialIssuerLogoInformation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialIssuerLogoInformationCopyWith<$Res> {
  factory $CredentialIssuerLogoInformationCopyWith(
          CredentialIssuerLogoInformation value,
          $Res Function(CredentialIssuerLogoInformation) then) =
      _$CredentialIssuerLogoInformationCopyWithImpl<$Res,
          CredentialIssuerLogoInformation>;
  @useResult
  $Res call({String uri});
}

/// @nodoc
class _$CredentialIssuerLogoInformationCopyWithImpl<$Res,
        $Val extends CredentialIssuerLogoInformation>
    implements $CredentialIssuerLogoInformationCopyWith<$Res> {
  _$CredentialIssuerLogoInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CredentialIssuerLogoInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CredentialIssuerLogoInformationImplCopyWith<$Res>
    implements $CredentialIssuerLogoInformationCopyWith<$Res> {
  factory _$$CredentialIssuerLogoInformationImplCopyWith(
          _$CredentialIssuerLogoInformationImpl value,
          $Res Function(_$CredentialIssuerLogoInformationImpl) then) =
      __$$CredentialIssuerLogoInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri});
}

/// @nodoc
class __$$CredentialIssuerLogoInformationImplCopyWithImpl<$Res>
    extends _$CredentialIssuerLogoInformationCopyWithImpl<$Res,
        _$CredentialIssuerLogoInformationImpl>
    implements _$$CredentialIssuerLogoInformationImplCopyWith<$Res> {
  __$$CredentialIssuerLogoInformationImplCopyWithImpl(
      _$CredentialIssuerLogoInformationImpl _value,
      $Res Function(_$CredentialIssuerLogoInformationImpl) _then)
      : super(_value, _then);

  /// Create a copy of CredentialIssuerLogoInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
  }) {
    return _then(_$CredentialIssuerLogoInformationImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CredentialIssuerLogoInformationImpl
    implements _CredentialIssuerLogoInformation {
  _$CredentialIssuerLogoInformationImpl({required this.uri});

  factory _$CredentialIssuerLogoInformationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CredentialIssuerLogoInformationImplFromJson(json);

  @override
  final String uri;

  @override
  String toString() {
    return 'CredentialIssuerLogoInformation(uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialIssuerLogoInformationImpl &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri);

  /// Create a copy of CredentialIssuerLogoInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CredentialIssuerLogoInformationImplCopyWith<
          _$CredentialIssuerLogoInformationImpl>
      get copyWith => __$$CredentialIssuerLogoInformationImplCopyWithImpl<
          _$CredentialIssuerLogoInformationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CredentialIssuerLogoInformationImplToJson(
      this,
    );
  }
}

abstract class _CredentialIssuerLogoInformation
    implements CredentialIssuerLogoInformation {
  factory _CredentialIssuerLogoInformation({required final String uri}) =
      _$CredentialIssuerLogoInformationImpl;

  factory _CredentialIssuerLogoInformation.fromJson(Map<String, dynamic> json) =
      _$CredentialIssuerLogoInformationImpl.fromJson;

  @override
  String get uri;

  /// Create a copy of CredentialIssuerLogoInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CredentialIssuerLogoInformationImplCopyWith<
          _$CredentialIssuerLogoInformationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportedCredentialConfiguration _$SupportedCredentialConfigurationFromJson(
    Map<String, dynamic> json) {
  return _SupportedCredentialConfiguration.fromJson(json);
}

/// @nodoc
mixin _$SupportedCredentialConfiguration {
  String get scope => throw _privateConstructorUsedError;
  @SupportedClaimPropertiesConverter()
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
      @SupportedClaimPropertiesConverter()
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
      @SupportedClaimPropertiesConverter()
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
      @SupportedClaimPropertiesConverter()
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
  @SupportedClaimPropertiesConverter()
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
          @SupportedClaimPropertiesConverter()
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
  @SupportedClaimPropertiesConverter()
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
  Map<String, SupportedClaimProperties>? get properties =>
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
  $Res call(
      {List<DisplaySupportedClaimProperties> display,
      Map<String, SupportedClaimProperties>? properties});
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
    Object? properties = freezed,
  }) {
    return _then(_value.copyWith(
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as List<DisplaySupportedClaimProperties>,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, SupportedClaimProperties>?,
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
  $Res call(
      {List<DisplaySupportedClaimProperties> display,
      Map<String, SupportedClaimProperties>? properties});
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
    Object? properties = freezed,
  }) {
    return _then(_$SupportedClaimPropertiesImpl(
      display: null == display
          ? _value._display
          : display // ignore: cast_nullable_to_non_nullable
              as List<DisplaySupportedClaimProperties>,
      properties: freezed == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, SupportedClaimProperties>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SupportedClaimPropertiesImpl implements _SupportedClaimProperties {
  _$SupportedClaimPropertiesImpl(
      {required final List<DisplaySupportedClaimProperties> display,
      final Map<String, SupportedClaimProperties>? properties})
      : _display = display,
        _properties = properties;

  factory _$SupportedClaimPropertiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportedClaimPropertiesImplFromJson(json);

  final List<DisplaySupportedClaimProperties> _display;
  @override
  List<DisplaySupportedClaimProperties> get display {
    if (_display is EqualUnmodifiableListView) return _display;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_display);
  }

  final Map<String, SupportedClaimProperties>? _properties;
  @override
  Map<String, SupportedClaimProperties>? get properties {
    final value = _properties;
    if (value == null) return null;
    if (_properties is EqualUnmodifiableMapView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SupportedClaimProperties(display: $display, properties: $properties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportedClaimPropertiesImpl &&
            const DeepCollectionEquality().equals(other._display, _display) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_display),
      const DeepCollectionEquality().hash(_properties));

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
          {required final List<DisplaySupportedClaimProperties> display,
          final Map<String, SupportedClaimProperties>? properties}) =
      _$SupportedClaimPropertiesImpl;

  factory _SupportedClaimProperties.fromJson(Map<String, dynamic> json) =
      _$SupportedClaimPropertiesImpl.fromJson;

  @override
  List<DisplaySupportedClaimProperties> get display;
  @override
  Map<String, SupportedClaimProperties>? get properties;

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
