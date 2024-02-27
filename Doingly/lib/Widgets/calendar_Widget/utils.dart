import 'package:intl/intl.dart';

class Utils {
  // Converts DateTime to a formatted string representation of date and time
  static String toDateTime(DateTime dateTime) {
    final date = DateFormat.yMMMEd().format(dateTime);
    final time = DateFormat.Hm().format(dateTime);

    return '$date $time';
  }

  // Converts DateTime to a formatted string representation of date
  static String toDate(DateTime dateTime) {
    final date = DateFormat.yMMMEd().format(dateTime);

    return '$date';
  }

  // Converts DateTime to a formatted string representation of time
  static String toTime(DateTime dateTime) {
    final time = DateFormat.Hm().format(dateTime);

    return '$time';
  }
}