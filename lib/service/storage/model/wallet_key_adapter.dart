import 'package:hive_flutter/hive_flutter.dart';

class WalletKeyCertificate {
  WalletKeyCertificate({required this.certificate});

  final List<int> certificate;
}

class WalletKeyCertificateAdapter extends TypeAdapter<WalletKeyCertificate> {
  @override
  final typeId = 17;

  @override
  WalletKeyCertificate read(BinaryReader reader) {
    final values = reader.readByteList();
    return WalletKeyCertificate(certificate: values.toList());
  }

  @override
  void write(BinaryWriter writer, WalletKeyCertificate obj) {
    writer.writeByteList(obj.certificate);
  }
}
