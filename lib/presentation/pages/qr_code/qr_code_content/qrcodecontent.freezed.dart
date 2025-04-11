// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qrcodecontent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QrCodeContent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? credentialOfferUri,
            CredentialOfferResponse? credentialOffer)
        issuance,
    required TResult Function(String? requestUri) presentation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? credentialOfferUri,
            CredentialOfferResponse? credentialOffer)?
        issuance,
    TResult? Function(String? requestUri)? presentation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? credentialOfferUri,
            CredentialOfferResponse? credentialOffer)?
        issuance,
    TResult Function(String? requestUri)? presentation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QrCodeIssuance value) issuance,
    required TResult Function(QrCodePresentation value) presentation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QrCodeIssuance value)? issuance,
    TResult? Function(QrCodePresentation value)? presentation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QrCodeIssuance value)? issuance,
    TResult Function(QrCodePresentation value)? presentation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrCodeContentCopyWith<$Res> {
  factory $QrCodeContentCopyWith(
          QrCodeContent value, $Res Function(QrCodeContent) then) =
      _$QrCodeContentCopyWithImpl<$Res, QrCodeContent>;
}

/// @nodoc
class _$QrCodeContentCopyWithImpl<$Res, $Val extends QrCodeContent>
    implements $QrCodeContentCopyWith<$Res> {
  _$QrCodeContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QrCodeContent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$QrCodeIssuanceImplCopyWith<$Res> {
  factory _$$QrCodeIssuanceImplCopyWith(_$QrCodeIssuanceImpl value,
          $Res Function(_$QrCodeIssuanceImpl) then) =
      __$$QrCodeIssuanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? credentialOfferUri, CredentialOfferResponse? credentialOffer});

  $CredentialOfferResponseCopyWith<$Res>? get credentialOffer;
}

/// @nodoc
class __$$QrCodeIssuanceImplCopyWithImpl<$Res>
    extends _$QrCodeContentCopyWithImpl<$Res, _$QrCodeIssuanceImpl>
    implements _$$QrCodeIssuanceImplCopyWith<$Res> {
  __$$QrCodeIssuanceImplCopyWithImpl(
      _$QrCodeIssuanceImpl _value, $Res Function(_$QrCodeIssuanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrCodeContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentialOfferUri = freezed,
    Object? credentialOffer = freezed,
  }) {
    return _then(_$QrCodeIssuanceImpl(
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

  /// Create a copy of QrCodeContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CredentialOfferResponseCopyWith<$Res>? get credentialOffer {
    if (_value.credentialOffer == null) {
      return null;
    }

    return $CredentialOfferResponseCopyWith<$Res>(_value.credentialOffer!,
        (value) {
      return _then(_value.copyWith(credentialOffer: value));
    });
  }
}

/// @nodoc

class _$QrCodeIssuanceImpl implements QrCodeIssuance {
  _$QrCodeIssuanceImpl({this.credentialOfferUri, this.credentialOffer});

  @override
  final String? credentialOfferUri;
  @override
  final CredentialOfferResponse? credentialOffer;

  @override
  String toString() {
    return 'QrCodeContent.issuance(credentialOfferUri: $credentialOfferUri, credentialOffer: $credentialOffer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrCodeIssuanceImpl &&
            (identical(other.credentialOfferUri, credentialOfferUri) ||
                other.credentialOfferUri == credentialOfferUri) &&
            (identical(other.credentialOffer, credentialOffer) ||
                other.credentialOffer == credentialOffer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, credentialOfferUri, credentialOffer);

  /// Create a copy of QrCodeContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QrCodeIssuanceImplCopyWith<_$QrCodeIssuanceImpl> get copyWith =>
      __$$QrCodeIssuanceImplCopyWithImpl<_$QrCodeIssuanceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? credentialOfferUri,
            CredentialOfferResponse? credentialOffer)
        issuance,
    required TResult Function(String? requestUri) presentation,
  }) {
    return issuance(credentialOfferUri, credentialOffer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? credentialOfferUri,
            CredentialOfferResponse? credentialOffer)?
        issuance,
    TResult? Function(String? requestUri)? presentation,
  }) {
    return issuance?.call(credentialOfferUri, credentialOffer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? credentialOfferUri,
            CredentialOfferResponse? credentialOffer)?
        issuance,
    TResult Function(String? requestUri)? presentation,
    required TResult orElse(),
  }) {
    if (issuance != null) {
      return issuance(credentialOfferUri, credentialOffer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QrCodeIssuance value) issuance,
    required TResult Function(QrCodePresentation value) presentation,
  }) {
    return issuance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QrCodeIssuance value)? issuance,
    TResult? Function(QrCodePresentation value)? presentation,
  }) {
    return issuance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QrCodeIssuance value)? issuance,
    TResult Function(QrCodePresentation value)? presentation,
    required TResult orElse(),
  }) {
    if (issuance != null) {
      return issuance(this);
    }
    return orElse();
  }
}

abstract class QrCodeIssuance implements QrCodeContent {
  factory QrCodeIssuance(
      {final String? credentialOfferUri,
      final CredentialOfferResponse? credentialOffer}) = _$QrCodeIssuanceImpl;

  String? get credentialOfferUri;
  CredentialOfferResponse? get credentialOffer;

  /// Create a copy of QrCodeContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QrCodeIssuanceImplCopyWith<_$QrCodeIssuanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QrCodePresentationImplCopyWith<$Res> {
  factory _$$QrCodePresentationImplCopyWith(_$QrCodePresentationImpl value,
          $Res Function(_$QrCodePresentationImpl) then) =
      __$$QrCodePresentationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? requestUri});
}

/// @nodoc
class __$$QrCodePresentationImplCopyWithImpl<$Res>
    extends _$QrCodeContentCopyWithImpl<$Res, _$QrCodePresentationImpl>
    implements _$$QrCodePresentationImplCopyWith<$Res> {
  __$$QrCodePresentationImplCopyWithImpl(_$QrCodePresentationImpl _value,
      $Res Function(_$QrCodePresentationImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrCodeContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestUri = freezed,
  }) {
    return _then(_$QrCodePresentationImpl(
      requestUri: freezed == requestUri
          ? _value.requestUri
          : requestUri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$QrCodePresentationImpl implements QrCodePresentation {
  _$QrCodePresentationImpl({this.requestUri});

  @override
  final String? requestUri;

  @override
  String toString() {
    return 'QrCodeContent.presentation(requestUri: $requestUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrCodePresentationImpl &&
            (identical(other.requestUri, requestUri) ||
                other.requestUri == requestUri));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestUri);

  /// Create a copy of QrCodeContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QrCodePresentationImplCopyWith<_$QrCodePresentationImpl> get copyWith =>
      __$$QrCodePresentationImplCopyWithImpl<_$QrCodePresentationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? credentialOfferUri,
            CredentialOfferResponse? credentialOffer)
        issuance,
    required TResult Function(String? requestUri) presentation,
  }) {
    return presentation(requestUri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? credentialOfferUri,
            CredentialOfferResponse? credentialOffer)?
        issuance,
    TResult? Function(String? requestUri)? presentation,
  }) {
    return presentation?.call(requestUri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? credentialOfferUri,
            CredentialOfferResponse? credentialOffer)?
        issuance,
    TResult Function(String? requestUri)? presentation,
    required TResult orElse(),
  }) {
    if (presentation != null) {
      return presentation(requestUri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QrCodeIssuance value) issuance,
    required TResult Function(QrCodePresentation value) presentation,
  }) {
    return presentation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QrCodeIssuance value)? issuance,
    TResult? Function(QrCodePresentation value)? presentation,
  }) {
    return presentation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QrCodeIssuance value)? issuance,
    TResult Function(QrCodePresentation value)? presentation,
    required TResult orElse(),
  }) {
    if (presentation != null) {
      return presentation(this);
    }
    return orElse();
  }
}

abstract class QrCodePresentation implements QrCodeContent {
  factory QrCodePresentation({final String? requestUri}) =
      _$QrCodePresentationImpl;

  String? get requestUri;

  /// Create a copy of QrCodeContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QrCodePresentationImplCopyWith<_$QrCodePresentationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
