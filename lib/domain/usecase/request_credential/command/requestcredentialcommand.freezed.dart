// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requestcredentialcommand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestCredentialCommand {
  String get host => throw _privateConstructorUsedError;
  String get credentialSubject => throw _privateConstructorUsedError;
  int get credentialType => throw _privateConstructorUsedError;

  /// Create a copy of RequestCredentialCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestCredentialCommandCopyWith<RequestCredentialCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCredentialCommandCopyWith<$Res> {
  factory $RequestCredentialCommandCopyWith(RequestCredentialCommand value,
          $Res Function(RequestCredentialCommand) then) =
      _$RequestCredentialCommandCopyWithImpl<$Res, RequestCredentialCommand>;
  @useResult
  $Res call({String host, String credentialSubject, int credentialType});
}

/// @nodoc
class _$RequestCredentialCommandCopyWithImpl<$Res,
        $Val extends RequestCredentialCommand>
    implements $RequestCredentialCommandCopyWith<$Res> {
  _$RequestCredentialCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestCredentialCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? credentialSubject = null,
    Object? credentialType = null,
  }) {
    return _then(_value.copyWith(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      credentialSubject: null == credentialSubject
          ? _value.credentialSubject
          : credentialSubject // ignore: cast_nullable_to_non_nullable
              as String,
      credentialType: null == credentialType
          ? _value.credentialType
          : credentialType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestCredentialCommandImplCopyWith<$Res>
    implements $RequestCredentialCommandCopyWith<$Res> {
  factory _$$RequestCredentialCommandImplCopyWith(
          _$RequestCredentialCommandImpl value,
          $Res Function(_$RequestCredentialCommandImpl) then) =
      __$$RequestCredentialCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String host, String credentialSubject, int credentialType});
}

/// @nodoc
class __$$RequestCredentialCommandImplCopyWithImpl<$Res>
    extends _$RequestCredentialCommandCopyWithImpl<$Res,
        _$RequestCredentialCommandImpl>
    implements _$$RequestCredentialCommandImplCopyWith<$Res> {
  __$$RequestCredentialCommandImplCopyWithImpl(
      _$RequestCredentialCommandImpl _value,
      $Res Function(_$RequestCredentialCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestCredentialCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? credentialSubject = null,
    Object? credentialType = null,
  }) {
    return _then(_$RequestCredentialCommandImpl(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      credentialSubject: null == credentialSubject
          ? _value.credentialSubject
          : credentialSubject // ignore: cast_nullable_to_non_nullable
              as String,
      credentialType: null == credentialType
          ? _value.credentialType
          : credentialType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RequestCredentialCommandImpl implements _RequestCredentialCommand {
  _$RequestCredentialCommandImpl(
      {required this.host,
      required this.credentialSubject,
      required this.credentialType});

  @override
  final String host;
  @override
  final String credentialSubject;
  @override
  final int credentialType;

  @override
  String toString() {
    return 'RequestCredentialCommand(host: $host, credentialSubject: $credentialSubject, credentialType: $credentialType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCredentialCommandImpl &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.credentialSubject, credentialSubject) ||
                other.credentialSubject == credentialSubject) &&
            (identical(other.credentialType, credentialType) ||
                other.credentialType == credentialType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, host, credentialSubject, credentialType);

  /// Create a copy of RequestCredentialCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCredentialCommandImplCopyWith<_$RequestCredentialCommandImpl>
      get copyWith => __$$RequestCredentialCommandImplCopyWithImpl<
          _$RequestCredentialCommandImpl>(this, _$identity);
}

abstract class _RequestCredentialCommand implements RequestCredentialCommand {
  factory _RequestCredentialCommand(
      {required final String host,
      required final String credentialSubject,
      required final int credentialType}) = _$RequestCredentialCommandImpl;

  @override
  String get host;
  @override
  String get credentialSubject;
  @override
  int get credentialType;

  /// Create a copy of RequestCredentialCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestCredentialCommandImplCopyWith<_$RequestCredentialCommandImpl>
      get copyWith => throw _privateConstructorUsedError;
}
