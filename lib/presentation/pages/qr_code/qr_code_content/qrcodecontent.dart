import 'package:birex/data/model/credential_offer/credentialofferresponse.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qrcodecontent.freezed.dart';

@freezed
class QrCodeContent with _$QrCodeContent {
  factory QrCodeContent.issuance({
    String? credentialOfferUri,
    CredentialOfferResponse? credentialOffer,
  }) = QrCodeIssuance;

  factory QrCodeContent.presentation({
    String? requestUri,
  }) = QrCodePresentation;
}
