import 'package:birex/data/model/credential_offer/credentialofferresponse.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanqrcredentialcommand.freezed.dart';

@freezed
class ScanQrCredentialCommand with _$ScanQrCredentialCommand {
  factory ScanQrCredentialCommand({
    required BuildContext context,
    String? credentialOfferUri,
    CredentialOfferResponse? credentialOffer,
  }) = _ScanQrCredentialCommand;
}
