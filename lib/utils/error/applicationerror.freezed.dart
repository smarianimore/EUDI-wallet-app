// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'applicationerror.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApplicationError {
  ErrorCode get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorCode code) generic,
    required TResult Function(ErrorCode code) operationAborted,
    required TResult Function(ErrorCode code) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorCode code)? generic,
    TResult? Function(ErrorCode code)? operationAborted,
    TResult? Function(ErrorCode code)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorCode code)? generic,
    TResult Function(ErrorCode code)? operationAborted,
    TResult Function(ErrorCode code)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Generic value) generic,
    required TResult Function(OperationAborted value) operationAborted,
    required TResult Function(Unauthorized value) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Generic value)? generic,
    TResult? Function(OperationAborted value)? operationAborted,
    TResult? Function(Unauthorized value)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Generic value)? generic,
    TResult Function(OperationAborted value)? operationAborted,
    TResult Function(Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ApplicationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApplicationErrorCopyWith<ApplicationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationErrorCopyWith<$Res> {
  factory $ApplicationErrorCopyWith(
          ApplicationError value, $Res Function(ApplicationError) then) =
      _$ApplicationErrorCopyWithImpl<$Res, ApplicationError>;
  @useResult
  $Res call({ErrorCode code});
}

/// @nodoc
class _$ApplicationErrorCopyWithImpl<$Res, $Val extends ApplicationError>
    implements $ApplicationErrorCopyWith<$Res> {
  _$ApplicationErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApplicationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ErrorCode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenericImplCopyWith<$Res>
    implements $ApplicationErrorCopyWith<$Res> {
  factory _$$GenericImplCopyWith(
          _$GenericImpl value, $Res Function(_$GenericImpl) then) =
      __$$GenericImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ErrorCode code});
}

/// @nodoc
class __$$GenericImplCopyWithImpl<$Res>
    extends _$ApplicationErrorCopyWithImpl<$Res, _$GenericImpl>
    implements _$$GenericImplCopyWith<$Res> {
  __$$GenericImplCopyWithImpl(
      _$GenericImpl _value, $Res Function(_$GenericImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApplicationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$GenericImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ErrorCode,
    ));
  }
}

/// @nodoc

class _$GenericImpl implements Generic {
  _$GenericImpl({this.code = ErrorCode.generic});

  @override
  @JsonKey()
  final ErrorCode code;

  @override
  String toString() {
    return 'ApplicationError.generic(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of ApplicationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericImplCopyWith<_$GenericImpl> get copyWith =>
      __$$GenericImplCopyWithImpl<_$GenericImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorCode code) generic,
    required TResult Function(ErrorCode code) operationAborted,
    required TResult Function(ErrorCode code) unauthorized,
  }) {
    return generic(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorCode code)? generic,
    TResult? Function(ErrorCode code)? operationAborted,
    TResult? Function(ErrorCode code)? unauthorized,
  }) {
    return generic?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorCode code)? generic,
    TResult Function(ErrorCode code)? operationAborted,
    TResult Function(ErrorCode code)? unauthorized,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Generic value) generic,
    required TResult Function(OperationAborted value) operationAborted,
    required TResult Function(Unauthorized value) unauthorized,
  }) {
    return generic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Generic value)? generic,
    TResult? Function(OperationAborted value)? operationAborted,
    TResult? Function(Unauthorized value)? unauthorized,
  }) {
    return generic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Generic value)? generic,
    TResult Function(OperationAborted value)? operationAborted,
    TResult Function(Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(this);
    }
    return orElse();
  }
}

abstract class Generic implements ApplicationError {
  factory Generic({final ErrorCode code}) = _$GenericImpl;

  @override
  ErrorCode get code;

  /// Create a copy of ApplicationError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericImplCopyWith<_$GenericImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OperationAbortedImplCopyWith<$Res>
    implements $ApplicationErrorCopyWith<$Res> {
  factory _$$OperationAbortedImplCopyWith(_$OperationAbortedImpl value,
          $Res Function(_$OperationAbortedImpl) then) =
      __$$OperationAbortedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ErrorCode code});
}

/// @nodoc
class __$$OperationAbortedImplCopyWithImpl<$Res>
    extends _$ApplicationErrorCopyWithImpl<$Res, _$OperationAbortedImpl>
    implements _$$OperationAbortedImplCopyWith<$Res> {
  __$$OperationAbortedImplCopyWithImpl(_$OperationAbortedImpl _value,
      $Res Function(_$OperationAbortedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApplicationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$OperationAbortedImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ErrorCode,
    ));
  }
}

/// @nodoc

class _$OperationAbortedImpl implements OperationAborted {
  _$OperationAbortedImpl({this.code = ErrorCode.operationAborted});

  @override
  @JsonKey()
  final ErrorCode code;

  @override
  String toString() {
    return 'ApplicationError.operationAborted(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationAbortedImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of ApplicationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationAbortedImplCopyWith<_$OperationAbortedImpl> get copyWith =>
      __$$OperationAbortedImplCopyWithImpl<_$OperationAbortedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorCode code) generic,
    required TResult Function(ErrorCode code) operationAborted,
    required TResult Function(ErrorCode code) unauthorized,
  }) {
    return operationAborted(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorCode code)? generic,
    TResult? Function(ErrorCode code)? operationAborted,
    TResult? Function(ErrorCode code)? unauthorized,
  }) {
    return operationAborted?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorCode code)? generic,
    TResult Function(ErrorCode code)? operationAborted,
    TResult Function(ErrorCode code)? unauthorized,
    required TResult orElse(),
  }) {
    if (operationAborted != null) {
      return operationAborted(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Generic value) generic,
    required TResult Function(OperationAborted value) operationAborted,
    required TResult Function(Unauthorized value) unauthorized,
  }) {
    return operationAborted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Generic value)? generic,
    TResult? Function(OperationAborted value)? operationAborted,
    TResult? Function(Unauthorized value)? unauthorized,
  }) {
    return operationAborted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Generic value)? generic,
    TResult Function(OperationAborted value)? operationAborted,
    TResult Function(Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (operationAborted != null) {
      return operationAborted(this);
    }
    return orElse();
  }
}

abstract class OperationAborted implements ApplicationError {
  factory OperationAborted({final ErrorCode code}) = _$OperationAbortedImpl;

  @override
  ErrorCode get code;

  /// Create a copy of ApplicationError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OperationAbortedImplCopyWith<_$OperationAbortedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res>
    implements $ApplicationErrorCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ErrorCode code});
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$ApplicationErrorCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApplicationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$UnauthorizedImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ErrorCode,
    ));
  }
}

/// @nodoc

class _$UnauthorizedImpl implements Unauthorized {
  _$UnauthorizedImpl({this.code = ErrorCode.unauthorized});

  @override
  @JsonKey()
  final ErrorCode code;

  @override
  String toString() {
    return 'ApplicationError.unauthorized(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of ApplicationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      __$$UnauthorizedImplCopyWithImpl<_$UnauthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorCode code) generic,
    required TResult Function(ErrorCode code) operationAborted,
    required TResult Function(ErrorCode code) unauthorized,
  }) {
    return unauthorized(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorCode code)? generic,
    TResult? Function(ErrorCode code)? operationAborted,
    TResult? Function(ErrorCode code)? unauthorized,
  }) {
    return unauthorized?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorCode code)? generic,
    TResult Function(ErrorCode code)? operationAborted,
    TResult Function(ErrorCode code)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Generic value) generic,
    required TResult Function(OperationAborted value) operationAborted,
    required TResult Function(Unauthorized value) unauthorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Generic value)? generic,
    TResult? Function(OperationAborted value)? operationAborted,
    TResult? Function(Unauthorized value)? unauthorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Generic value)? generic,
    TResult Function(OperationAborted value)? operationAborted,
    TResult Function(Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements ApplicationError {
  factory Unauthorized({final ErrorCode code}) = _$UnauthorizedImpl;

  @override
  ErrorCode get code;

  /// Create a copy of ApplicationError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorizedImplCopyWith<_$UnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}