import 'dart:convert';

import 'package:gearpizza/common/model/notifiche_elenco_item.dart';

class AppNotification {
  final String id;
  final String title;
  final String body;
  final DateTime timestamp;
  bool read;
  final Map<String, dynamic>? data;

  AppNotification({
    required this.id,
    required this.title,
    required this.body,
    required this.timestamp,
    this.read = false,
    this.data,
  });

  AppNotification copyWith({
    String? id,
    String? title,
    String? body,
    DateTime? timestamp,
    bool? read,
    Map<String, dynamic>? data,
  }) {
    return AppNotification(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      timestamp: timestamp ?? this.timestamp,
      read: read ?? this.read,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'timestamp': timestamp.toIso8601String(),
      'read': read,
      'data': data,
    };
  }

  // Metodo per creare una notifica da una mappa (per il recupero da SecureStorage)
  factory AppNotification.fromMap(Map<String, dynamic> map) {
    return AppNotification(
      id: map['id'] as String,
      title: map['title'] as String,
      body: map['body'] as String,
      timestamp: DateTime.parse(map['timestamp'] as String),
      read: map['read'] as bool? ?? false,
      data: map['data'] != null ? Map<String, dynamic>.from(map['data']) : null,
    );
  }
  static AppNotification convertToAppNotification(NotificheElencoItem item) {
    // Parse timestamp from dataInvio and oraInvio
    DateTime timestamp = _parseTimestamp(item.dataInvio, item.oraInvio);

    // Parse dati into a Map
    Map<String, dynamic>? data = _parseData(item.dati);

    return AppNotification(
      id: item.pushId ?? item.keyId?.toString() ?? 'no_id',
      title: item.titolo ?? '',
      body: item.testo ?? '',
      timestamp: timestamp,
      read: false,
      data: data,
    );
  }

  static DateTime _parseTimestamp(int? dataInvio, int? oraInvio) {
    if (dataInvio == null || oraInvio == null) return DateTime.now();

    try {
      String dataStr = dataInvio.toString().padLeft(8, '0');
      int year = int.parse(dataStr.substring(0, 4));
      int month = int.parse(dataStr.substring(4, 6));
      int day = int.parse(dataStr.substring(6, 8));

      String oraStr = oraInvio.toString().padLeft(6, '0');
      int hour = int.parse(oraStr.substring(0, 2));
      int minute = int.parse(oraStr.substring(2, 4));
      int second = int.parse(oraStr.substring(4, 6));

      return DateTime(year, month, day, hour, minute, second);
    } catch (e) {
      return DateTime.now(); // Fallback on error
    }
  }

  static Map<String, dynamic>? _parseData(String? dati) {
    if (dati == null) return null;

    try {
      return jsonDecode(dati) as Map<String, dynamic>;
    } catch (e) {
      return null;
    }
  }
}
