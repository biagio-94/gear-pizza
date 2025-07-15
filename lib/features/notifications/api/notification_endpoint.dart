import 'package:intl/intl.dart';

class NotificationEndpoint {
  static const baseUrl = "/secure/spc4bs/notifiche";
  static const updateFCMtoken = "$baseUrl/impostazioni";
  static String getNotifications({
    required DateTime dateFrom,
    required DateTime dateTo,
  }) {
    final dateFormat = DateFormat('yyyyMMdd');
    final formattedDateFrom = dateFormat.format(dateFrom);
    final formattedDateTo = dateFormat.format(dateTo);
    return "$baseUrl/elenco?dateFrom=$formattedDateFrom&dateTo=$formattedDateTo";
  }
}
