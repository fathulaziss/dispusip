import 'package:intl/intl.dart';

class FormatDateTime {
  static String format({
    required DateTime value,
    DateFormat? format,
  }) {
    format ??= DateFormat('yyyy-MM-dd');
    try {
      return format.format(value);
    } catch (e) {
      return 'Invalid date';
    }
  }

  static String news(String value) {
    final dateTime = DateFormat("yyyy-MM-dd'T'HH:mm:ss").parse(value);
    final dateTimeConvert = DateFormat('dd-MM-yyyy').format(dateTime);
    return dateTimeConvert.replaceAll('-', '.');
  }

  static String history(String value) {
    final dateTime = DateFormat('yyyy-MM-dd HH:mm:ss').parse(value);
    final dateTimeConvert = DateFormat('dd-MM-yyyy').format(dateTime);
    return dateTimeConvert.replaceAll('-', '/');
  }

  static String notification(String value) {
    final dateTime = DateFormat('yyyy-MM-dd HH:mm:ss').parse(value);
    final dateTimeConvert = DateFormat('dd-MM-yyyy HH:mm').format(dateTime);
    return dateTimeConvert.replaceAll(' ', '  ');
  }
}
