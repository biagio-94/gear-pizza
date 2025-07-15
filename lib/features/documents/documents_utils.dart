import 'package:flutter/material.dart';

String formatDate(DateTime? date) {
  if (date == null) return '';
  return "${date.year.toString().padLeft(4, '0')}${date.month.toString().padLeft(2, '0')}${date.day.toString().padLeft(2, '0')}";
}

DateTime? parseNumericDate(int? numericDate) {
  if (numericDate == null || numericDate.toString().length != 8) return null;

  try {
    final dateStr = numericDate.toString();
    final year = int.parse(dateStr.substring(0, 4));
    final month = int.parse(dateStr.substring(4, 6));
    final day = int.parse(dateStr.substring(6, 8));
    return DateTime(year, month, day);
  } catch (e) {
    debugPrint('Errore nel parsing della data: $numericDate');
    return null;
  }
}
