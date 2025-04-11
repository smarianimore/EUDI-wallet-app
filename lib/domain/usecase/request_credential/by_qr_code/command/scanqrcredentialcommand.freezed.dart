// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanqrcredentialcommand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScanQrCredentialCommand {
  BuildContext get context => throw _privateConstructorUsedError;
  String? get credentialOfferUri => throw _privateConstructorUsedError;
  CredentialOfferResponse? get credentialOffer =>
      throw _privateConstructorUsedError;

  /// Create a copy of ScanQrCredentialCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScanQrCredentialCommandCopyWith<ScanQrCredentialCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanQrCredentialCommandCopyWith<$Res> {
  factory $ScanQrCredentialCommandCopyWith(ScanQrCredentialCommand value,
          $Res Function(ScanQrCredentialCommand) then) =
      _$ScanQrCredentialCommandCopyWithImpl<$Res, ScanQrCredentialCommand>;
  @useResult
  $Res call(
      {BuildContext context,
      String? credentialOfferUri,
      CredentialOfferResponse? credentialOffer});

  $CredentialOfferResponseCopyWith<$Res>? get credentialOffer;
}

/// @nodoc
class _$ScanQrCredentialCommandCopyWithImpl<$Res,
        $Val extends ScanQrCredentialCommand>
    implements $ScanQrCredentialCommandCopyWith<$Res> {
  _$ScanQrCredentialCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScanQrCredentialCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? credentialOfferUri = freezed,
    Object? credentialOffer = freezed,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      credentialOfferUri: freezed == credentialOfferUri
          ? _value.credentialOfferUri
          : credentialOfferUri // ignore: cast_nullable_to_non_nullable
              as String?,
      credentialOffer: freezed == credentialOffer
          ? _value.credentialOffer
          : credentialOffer // ignore: cast_nullable_to_non_nullable
              as CredentialOfferResponse?,
    ) as $Val);
  }

  /// Create a copy of ScanQrCredentialCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialOfferResponseCopyWith<$Res>? get credentialOffer {
    if (_value.credentialOffer == null) {
      return null;
    }

    return $CredentialOfferResponseCopyWith<$Res>(_value.credentialOffer!,
        (value) {
      return _then(_value.copyWith(credentialOffer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScanQrCredentialCommandImplCopyWith<$Res>
    implements $ScanQrCredentialCommandCopyWith<$Res> {
  factory _$$ScanQrCredentialCommandImplCopyWith(
          _$ScanQrCredentialCommandImpl value,
          $Res Function(_$ScanQrCredentialCommandImpl) then) =
      __$$ScanQrCredentialCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BuildContext context,
      String? credentialOfferUri,
      CredentialOfferResponse? credentialOffer});

  @override
  $CredentialOfferResponseCopyWith<$Res>? get credentialOffer;
}

/// @nodoc
class __$$ScanQrCredentialCommandImplCopyWithImpl<$Res>
    extends _$ScanQrCredentialCommandCopyWithImpl<$Res,
        _$ScanQrCredentialCommandImpl>
    implements _$$ScanQrCredentialCommandImplCopyWith<$Res> {
  __$$ScanQrCredentialCommandImplCopyWithImpl(
      _$ScanQrCredentialCommandImpl _value,
      $Res Function(_$ScanQrCredentialCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanQrCredentialCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? credentialOfferUri = freezed,
    Object? credentialOffer = freezed,
  }) {
    return _then(_$ScanQrCredentialCommandImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      credentialOfferUri: freezed == credentialOfferUri
          ? _value.credentialOfferUri
          : credentialOfferUri // ignore: cast_nullable_to_non_nullable
              as String?,
      credentialOffer: freezed == credentialOffer
          ? _value.credentialOffer
          : credentialOffer // ignore: cast_nullable_to_non_nullable
              as CredentialOfferResponse?,
    ));
  }
}

/// @nodoc

class _$ScanQrCredentialCommandImpl implements _ScanQrCredentialCommand {
  _$ScanQrCredentialCommandImpl(
      {required this.context, this.credentialOfferUri, this.credentialOffer});

  @override
  final BuildContext context;
  @override
  final String? credentialOfferUri;
  @override
  final CredentialOfferResponse? credentialOffer;

  @override
  String toString() {
    return 'ScanQrCredentialCommand(context: $context, credentialOfferUri: $credentialOfferUri, credentialOffer: $credentialOffer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanQrCredentialCommandImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.credentialOfferUri, credentialOfferUri) ||
                other.credentialOfferUri == credentialOfferUri) &&
            (identical(other.credentialOffer, credentialOffer) ||
                other.credentialOffer == credentialOffer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, credentialOfferUri, credentialOffer);

  /// Create a copy of ScanQrCredentialCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanQrCredentialCommandImplCopyWith<_$ScanQrCredentialCommandImpl>
      get copyWith => __$$ScanQrCredentialCommandImplCopyWithImpl<
          _$ScanQrCredentialCommandImpl>(this, _$identity);
}

abstract class _ScanQrCredentialCommand implements ScanQrCredentialCommand {
  factory _ScanQrCredentialCommand(
          {required final BuildContext context,
          final String? credentialOfferUri,
          final CredentialOfferResponse? credentialOffer}) =
      _$ScanQrCredentialCommandImpl;

  @override
  BuildContext get context;
  @override
  String? get credentialOfferUri;
  @override
  CredentialOfferResponse? get credentialOffer;

  /// Create a copy of ScanQrCredentialCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScanQrCredentialCommandImplCopyWith<_$ScanQrCredentialCommandImpl>
      get copyWith => throw _privateConstructorUsedError;
}
