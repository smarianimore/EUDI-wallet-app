// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presentcredentialcommand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PresentCredentialCommand {
  BuildContext get context => throw _privateConstructorUsedError;
  String get requestUri => throw _privateConstructorUsedError;

  /// Create a copy of PresentCredentialCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PresentCredentialCommandCopyWith<PresentCredentialCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentCredentialCommandCopyWith<$Res> {
  factory $PresentCredentialCommandCopyWith(PresentCredentialCommand value,
          $Res Function(PresentCredentialCommand) then) =
      _$PresentCredentialCommandCopyWithImpl<$Res, PresentCredentialCommand>;
  @useResult
  $Res call({BuildContext context, String requestUri});
}

/// @nodoc
class _$PresentCredentialCommandCopyWithImpl<$Res,
        $Val extends PresentCredentialCommand>
    implements $PresentCredentialCommandCopyWith<$Res> {
  _$PresentCredentialCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PresentCredentialCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? requestUri = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      requestUri: null == requestUri
          ? _value.requestUri
          : requestUri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PresentCredentialCommandImplCopyWith<$Res>
    implements $PresentCredentialCommandCopyWith<$Res> {
  factory _$$PresentCredentialCommandImplCopyWith(
          _$PresentCredentialCommandImpl value,
          $Res Function(_$PresentCredentialCommandImpl) then) =
      __$$PresentCredentialCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, String requestUri});
}

/// @nodoc
class __$$PresentCredentialCommandImplCopyWithImpl<$Res>
    extends _$PresentCredentialCommandCopyWithImpl<$Res,
        _$PresentCredentialCommandImpl>
    implements _$$PresentCredentialCommandImplCopyWith<$Res> {
  __$$PresentCredentialCommandImplCopyWithImpl(
      _$PresentCredentialCommandImpl _value,
      $Res Function(_$PresentCredentialCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresentCredentialCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? requestUri = null,
  }) {
    return _then(_$PresentCredentialCommandImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      requestUri: null == requestUri
          ? _value.requestUri
          : requestUri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PresentCredentialCommandImpl implements _PresentCredentialCommand {
  _$PresentCredentialCommandImpl(
      {required this.context, required this.requestUri});

  @override
  final BuildContext context;
  @override
  final String requestUri;

  @override
  String toString() {
    return 'PresentCredentialCommand(context: $context, requestUri: $requestUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PresentCredentialCommandImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.requestUri, requestUri) ||
                other.requestUri == requestUri));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, requestUri);

  /// Create a copy of PresentCredentialCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PresentCredentialCommandImplCopyWith<_$PresentCredentialCommandImpl>
      get copyWith => __$$PresentCredentialCommandImplCopyWithImpl<
          _$PresentCredentialCommandImpl>(this, _$identity);
}

abstract class _PresentCredentialCommand implements PresentCredentialCommand {
  factory _PresentCredentialCommand(
      {required final BuildContext context,
      required final String requestUri}) = _$PresentCredentialCommandImpl;

  @override
  BuildContext get context;
  @override
  String get requestUri;

  /// Create a copy of PresentCredentialCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PresentCredentialCommandImplCopyWith<_$PresentCredentialCommandImpl>
      get copyWith => throw _privateConstructorUsedError;
}
