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

CredentialIssuerConfiguration _$CredentialIssuerConfigurationFromJson(
    Map<String, dynamic> json) {
  return _CredentialIssuerConfiguration.fromJson(json);
}

/// @nodoc
mixin _$CredentialIssuerConfiguration {
  String get credentialIssuer => throw _privateConstructorUsedError;
  List<String> get authorizationServers => throw _privateConstructorUsedError;
  String get credentialEndpoint => throw _privateConstructorUsedError;
  CredentialIssuerDisplayInformation get display =>
      throw _privateConstructorUsedError;
  Map<String, SupportedCredentialConfiguration>
      get credentialConfigurationsSupported =>
          throw _privateConstructorUsedError;

  /// Serializes this CredentialIssuerConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CredentialIssuerConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CredentialIssuerConfigurationCopyWith<CredentialIssuerConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialIssuerConfigurationCopyWith<$Res> {
  factory $CredentialIssuerConfigurationCopyWith(
          CredentialIssuerConfiguration value,
          $Res Function(CredentialIssuerConfiguration) then) =
      _$CredentialIssuerConfigurationCopyWithImpl<$Res,
          CredentialIssuerConfiguration>;
  @useResult
  $Res call(
      {String credentialIssuer,
      List<String> authorizationServers,
      String credentialEndpoint,
      CredentialIssuerDisplayInformation display,
      Map<String, SupportedCredentialConfiguration>
          credentialConfigurationsSupported});

  $CredentialIssuerDisplayInformationCopyWith<$Res> get display;
}

/// @nodoc
class _$CredentialIssuerConfigurationCopyWithImpl<$Res,
        $Val extends CredentialIssuerConfiguration>
    implements $CredentialIssuerConfigurationCopyWith<$Res> {
  _$CredentialIssuerConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CredentialIssuerConfiguration
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
              as CredentialIssuerDisplayInformation,
      credentialConfigurationsSupported: null ==
              credentialConfigurationsSupported
          ? _value.credentialConfigurationsSupported
          : credentialConfigurationsSupported // ignore: cast_nullable_to_non_nullable
              as Map<String, SupportedCredentialConfiguration>,
    ) as $Val);
  }

  /// Create a copy of CredentialIssuerConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialIssuerDisplayInformationCopyWith<$Res> get display {
    return $CredentialIssuerDisplayInformationCopyWith<$Res>(_value.display,
        (value) {
      return _then(_value.copyWith(display: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CredentialIssuerConfigurationImplCopyWith<$Res>
    implements $CredentialIssuerConfigurationCopyWith<$Res> {
  factory _$$CredentialIssuerConfigurationImplCopyWith(
          _$CredentialIssuerConfigurationImpl value,
          $Res Function(_$CredentialIssuerConfigurationImpl) then) =
      __$$CredentialIssuerConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String credentialIssuer,
      List<String> authorizationServers,
      String credentialEndpoint,
      CredentialIssuerDisplayInformation display,
      Map<String, SupportedCredentialConfiguration>
          credentialConfigurationsSupported});

  @override
  $CredentialIssuerDisplayInformationCopyWith<$Res> get display;
}

/// @nodoc
class __$$CredentialIssuerConfigurationImplCopyWithImpl<$Res>
    extends _$CredentialIssuerConfigurationCopyWithImpl<$Res,
        _$CredentialIssuerConfigurationImpl>
    implements _$$CredentialIssuerConfigurationImplCopyWith<$Res> {
  __$$CredentialIssuerConfigurationImplCopyWithImpl(
      _$CredentialIssuerConfigurationImpl _value,
      $Res Function(_$CredentialIssuerConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of CredentialIssuerConfiguration
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
    return _then(_$CredentialIssuerConfigurationImpl(
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
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as CredentialIssuerDisplayInformation,
      credentialConfigurationsSupported: null ==
              credentialConfigurationsSupported
          ? _value._credentialConfigurationsSupported
          : credentialConfigurationsSupported // ignore: cast_nullable_to_non_nullable
              as Map<String, SupportedCredentialConfiguration>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CredentialIssuerConfigurationImpl
    implements _CredentialIssuerConfiguration {
  _$CredentialIssuerConfigurationImpl(
      {required this.credentialIssuer,
      required final List<String> authorizationServers,
      required this.credentialEndpoint,
      required this.display,
      required final Map<String, SupportedCredentialConfiguration>
          credentialConfigurationsSupported})
      : _authorizationServers = authorizationServers,
        _credentialConfigurationsSupported = credentialConfigurationsSupported;

  factory _$CredentialIssuerConfigurationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CredentialIssuerConfigurationImplFromJson(json);

  @override
  final String credentialIssuer;
  final List<String> _authorizationServers;
  @override
  List<String> get authorizationServers {
    if (_authorizationServers is EqualUnmodifiableListView)
      return _authorizationServers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authorizationServers);
  }

  @override
  final String credentialEndpoint;
  @override
  final CredentialIssuerDisplayInformation display;
  final Map<String, SupportedCredentialConfiguration>
      _credentialConfigurationsSupported;
  @override
  Map<String, SupportedCredentialConfiguration>
      get credentialConfigurationsSupported {
    if (_credentialConfigurationsSupported is EqualUnmodifiableMapView)
      return _credentialConfigurationsSupported;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_credentialConfigurationsSupported);
  }

  @override
  String toString() {
    return 'CredentialIssuerConfiguration(credentialIssuer: $credentialIssuer, authorizationServers: $authorizationServers, credentialEndpoint: $credentialEndpoint, display: $display, credentialConfigurationsSupported: $credentialConfigurationsSupported)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialIssuerConfigurationImpl &&
            (identical(other.credentialIssuer, credentialIssuer) ||
                other.credentialIssuer == credentialIssuer) &&
            const DeepCollectionEquality()
                .equals(other._authorizationServers, _authorizationServers) &&
            (identical(other.credentialEndpoint, credentialEndpoint) ||
                other.credentialEndpoint == credentialEndpoint) &&
            (identical(other.display, display) || other.display == display) &&
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
      display,
      const DeepCollectionEquality().hash(_credentialConfigurationsSupported));

  /// Create a copy of CredentialIssuerConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CredentialIssuerConfigurationImplCopyWith<
          _$CredentialIssuerConfigurationImpl>
      get copyWith => __$$CredentialIssuerConfigurationImplCopyWithImpl<
          _$CredentialIssuerConfigurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CredentialIssuerConfigurationImplToJson(
      this,
    );
  }
}

abstract class _CredentialIssuerConfiguration
    implements CredentialIssuerConfiguration {
  factory _CredentialIssuerConfiguration(
          {required final String credentialIssuer,
          required final List<String> authorizationServers,
          required final String credentialEndpoint,
          required final CredentialIssuerDisplayInformation display,
          required final Map<String, SupportedCredentialConfiguration>
              credentialConfigurationsSupported}) =
      _$CredentialIssuerConfigurationImpl;

  factory _CredentialIssuerConfiguration.fromJson(Map<String, dynamic> json) =
      _$CredentialIssuerConfigurationImpl.fromJson;

  @override
  String get credentialIssuer;
  @override
  List<String> get authorizationServers;
  @override
  String get credentialEndpoint;
  @override
  CredentialIssuerDisplayInformation get display;
  @override
  Map<String, SupportedCredentialConfiguration>
      get credentialConfigurationsSupported;

  /// Create a copy of CredentialIssuerConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CredentialIssuerConfigurationImplCopyWith<
          _$CredentialIssuerConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CredentialIssuerDisplayInformation _$CredentialIssuerDisplayInformationFromJson(
    Map<String, dynamic> json) {
  return _CredentialIssuerDisplayInformation.fromJson(json);
}

/// @nodoc
mixin _$CredentialIssuerDisplayInformation {
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

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
  $Res call({String name, String location, String locale, String description});
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
    Object? location = null,
    Object? locale = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
  $Res call({String name, String location, String locale, String description});
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
    Object? location = null,
    Object? locale = null,
    Object? description = null,
  }) {
    return _then(_$CredentialIssuerDisplayInformationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CredentialIssuerDisplayInformationImpl
    implements _CredentialIssuerDisplayInformation {
  _$CredentialIssuerDisplayInformationImpl(
      {required this.name,
      required this.location,
      required this.locale,
      required this.description});

  factory _$CredentialIssuerDisplayInformationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CredentialIssuerDisplayInformationImplFromJson(json);

  @override
  final String name;
  @override
  final String location;
  @override
  final String locale;
  @override
  final String description;

  @override
  String toString() {
    return 'CredentialIssuerDisplayInformation(name: $name, location: $location, locale: $locale, description: $description)';
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
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, location, locale, description);

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
          required final String location,
          required final String locale,
          required final String description}) =
      _$CredentialIssuerDisplayInformationImpl;

  factory _CredentialIssuerDisplayInformation.fromJson(
          Map<String, dynamic> json) =
      _$CredentialIssuerDisplayInformationImpl.fromJson;

  @override
  String get name;
  @override
  String get location;
  @override
  String get locale;
  @override
  String get description;

  /// Create a copy of CredentialIssuerDisplayInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CredentialIssuerDisplayInformationImplCopyWith<
          _$CredentialIssuerDisplayInformationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
