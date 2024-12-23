import 'package:intl/intl.dart';

class DateFormatter {
  static String formatStandardDate(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }
}
