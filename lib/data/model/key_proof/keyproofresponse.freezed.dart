// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyproofresponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KeyProofResponse _$KeyProofResponseFromJson(Map<String, dynamic> json) {
  return _KeyProofResponse.fromJson(json);
}

/// @nodoc
mixin _$KeyProofResponse {
  /// Serializes this KeyProofResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyProofResponseCopyWith<$Res> {
  factory $KeyProofResponseCopyWith(
          KeyProofResponse value, $Res Function(KeyProofResponse) then) =
      _$KeyProofResponseCopyWithImpl<$Res, KeyProofResponse>;
}

/// @nodoc
class _$KeyProofResponseCopyWithImpl<$Res, $Val extends KeyProofResponse>
    implements $KeyProofResponseCopyWith<$Res> {
  _$KeyProofResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeyProofResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$KeyProofResponseImplCopyWith<$Res> {
  factory _$$KeyProofResponseImplCopyWith(_$KeyProofResponseImpl value,
          $Res Function(_$KeyProofResponseImpl) then) =
      __$$KeyProofResponseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KeyProofResponseImplCopyWithImpl<$Res>
    extends _$KeyProofResponseCopyWithImpl<$Res, _$KeyProofResponseImpl>
    implements _$$KeyProofResponseImplCopyWith<$Res> {
  __$$KeyProofResponseImplCopyWithImpl(_$KeyProofResponseImpl _value,
      $Res Function(_$KeyProofResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeyProofResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$KeyProofResponseImpl implements _KeyProofResponse {
  _$KeyProofResponseImpl();

  factory _$KeyProofResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyProofResponseImplFromJson(json);

  @override
  String toString() {
    return 'KeyProofResponse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$KeyProofResponseImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyProofResponseImplToJson(
      this,
    );
  }
}

abstract class _KeyProofResponse implements KeyProofResponse {
  factory _KeyProofResponse() = _$KeyProofResponseImpl;

  factory _KeyProofResponse.fromJson(Map<String, dynamic> json) =
      _$KeyProofResponseImpl.fromJson;
}
