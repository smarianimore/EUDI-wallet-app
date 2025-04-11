// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credentialpresentationrequest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CredentialPresentationRequest _$CredentialPresentationRequestFromJson(
    Map<String, dynamic> json) {
  return _CredentialPresentationRequest.fromJson(json);
}

/// @nodoc
mixin _$CredentialPresentationRequest {
  String get nonce => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  String get responseUri => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get credential => throw _privateConstructorUsedError;
  Map<String, dynamic> get presentationDefinition =>
      throw _privateConstructorUsedError;
  List<String> get requiredInformation => throw _privateConstructorUsedError;

  /// Serializes this CredentialPresentationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CredentialPresentationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CredentialPresentationRequestCopyWith<CredentialPresentationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialPresentationRequestCopyWith<$Res> {
  factory $CredentialPresentationRequestCopyWith(
          CredentialPresentationRequest value,
          $Res Function(CredentialPresentationRequest) then) =
      _$CredentialPresentationRequestCopyWithImpl<$Res,
          CredentialPresentationRequest>;
  @useResult
  $Res call(
      {String nonce,
      String clientId,
      String responseUri,
      String state,
      String credential,
      Map<String, dynamic> presentationDefinition,
      List<String> requiredInformation});
}

/// @nodoc
class _$CredentialPresentationRequestCopyWithImpl<$Res,
        $Val extends CredentialPresentationRequest>
    implements $CredentialPresentationRequestCopyWith<$Res> {
  _$CredentialPresentationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CredentialPresentationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonce = null,
    Object? clientId = null,
    Object? responseUri = null,
    Object? state = null,
    Object? credential = null,
    Object? presentationDefinition = null,
    Object? requiredInformation = null,
  }) {
    return _then(_value.copyWith(
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      responseUri: null == responseUri
          ? _value.responseUri
          : responseUri // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as String,
      presentationDefinition: null == presentationDefinition
          ? _value.presentationDefinition
          : presentationDefinition // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      requiredInformation: null == requiredInformation
          ? _value.requiredInformation
          : requiredInformation // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CredentialPresentationRequestImplCopyWith<$Res>
    implements $CredentialPresentationRequestCopyWith<$Res> {
  factory _$$CredentialPresentationRequestImplCopyWith(
          _$CredentialPresentationRequestImpl value,
          $Res Function(_$CredentialPresentationRequestImpl) then) =
      __$$CredentialPresentationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nonce,
      String clientId,
      String responseUri,
      String state,
      String credential,
      Map<String, dynamic> presentationDefinition,
      List<String> requiredInformation});
}

/// @nodoc
class __$$CredentialPresentationRequestImplCopyWithImpl<$Res>
    extends _$CredentialPresentationRequestCopyWithImpl<$Res,
        _$CredentialPresentationRequestImpl>
    implements _$$CredentialPresentationRequestImplCopyWith<$Res> {
  __$$CredentialPresentationRequestImplCopyWithImpl(
      _$CredentialPresentationRequestImpl _value,
      $Res Function(_$CredentialPresentationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CredentialPresentationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonce = null,
    Object? clientId = null,
    Object? responseUri = null,
    Object? state = null,
    Object? credential = null,
    Object? presentationDefinition = null,
    Object? requiredInformation = null,
  }) {
    return _then(_$CredentialPresentationRequestImpl(
      nonce: null == nonce
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      responseUri: null == responseUri
          ? _value.responseUri
          : responseUri // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as String,
      presentationDefinition: null == presentationDefinition
          ? _value._presentationDefinition
          : presentationDefinition // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      requiredInformation: null == requiredInformation
          ? _value._requiredInformation
          : requiredInformation // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CredentialPresentationRequestImpl
    implements _CredentialPresentationRequest {
  _$CredentialPresentationRequestImpl(
      {required this.nonce,
      required this.clientId,
      required this.responseUri,
      required this.state,
      required this.credential,
      required final Map<String, dynamic> presentationDefinition,
      required final List<String> requiredInformation})
      : _presentationDefinition = presentationDefinition,
        _requiredInformation = requiredInformation;

  factory _$CredentialPresentationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CredentialPresentationRequestImplFromJson(json);

  @override
  final String nonce;
  @override
  final String clientId;
  @override
  final String responseUri;
  @override
  final String state;
  @override
  final String credential;
  final Map<String, dynamic> _presentationDefinition;
  @override
  Map<String, dynamic> get presentationDefinition {
    if (_presentationDefinition is EqualUnmodifiableMapView)
      return _presentationDefinition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_presentationDefinition);
  }

  final List<String> _requiredInformation;
  @override
  List<String> get requiredInformation {
    if (_requiredInformation is EqualUnmodifiableListView)
      return _requiredInformation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requiredInformation);
  }

  @override
  String toString() {
    return 'CredentialPresentationRequest(nonce: $nonce, clientId: $clientId, responseUri: $responseUri, state: $state, credential: $credential, presentationDefinition: $presentationDefinition, requiredInformation: $requiredInformation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CredentialPresentationRequestImpl &&
            (identical(other.nonce, nonce) || other.nonce == nonce) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.responseUri, responseUri) ||
                other.responseUri == responseUri) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.credential, credential) ||
                other.credential == credential) &&
            const DeepCollectionEquality().equals(
                other._presentationDefinition, _presentationDefinition) &&
            const DeepCollectionEquality()
                .equals(other._requiredInformation, _requiredInformation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nonce,
      clientId,
      responseUri,
      state,
      credential,
      const DeepCollectionEquality().hash(_presentationDefinition),
      const DeepCollectionEquality().hash(_requiredInformation));

  /// Create a copy of CredentialPresentationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CredentialPresentationRequestImplCopyWith<
          _$CredentialPresentationRequestImpl>
      get copyWith => __$$CredentialPresentationRequestImplCopyWithImpl<
          _$CredentialPresentationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CredentialPresentationRequestImplToJson(
      this,
    );
  }
}

abstract class _CredentialPresentationRequest
    implements CredentialPresentationRequest {
  factory _CredentialPresentationRequest(
          {required final String nonce,
          required final String clientId,
          required final String responseUri,
          required final String state,
          required final String credential,
          required final Map<String, dynamic> presentationDefinition,
          required final List<String> requiredInformation}) =
      _$CredentialPresentationRequestImpl;

  factory _CredentialPresentationRequest.fromJson(Map<String, dynamic> json) =
      _$CredentialPresentationRequestImpl.fromJson;

  @override
  String get nonce;
  @override
  String get clientId;
  @override
  String get responseUri;
  @override
  String get state;
  @override
  String get credential;
  @override
  Map<String, dynamic> get presentationDefinition;
  @override
  List<String> get requiredInformation;

  /// Create a copy of CredentialPresentationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CredentialPresentationRequestImplCopyWith<
          _$CredentialPresentationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
