import 'package:birex/data/model/credential/verifiablecredential.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

extension VerifiableDisclosureFormatter on VerifiableDisclosure {
  String get formatName {
    final beforeCapitalLetter = RegExp('(?=[A-Z])');
    return name.split(beforeCapitalLetter).map((e) => e.capitalize).join(' ');
  }
}
