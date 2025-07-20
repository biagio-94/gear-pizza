import 'dart:convert';

/// DTO per i clienti, compatibile con lo schema Directus
class CustomerDto {
  final int? id;
  final int restaurantId;
  final String name;
  final String emailAddress;

  CustomerDto({
    this.id,
    required this.restaurantId,
    required this.name,
    required this.emailAddress,
  });

  /// Mappa i campi nelle chiavi corrette di Directus
  Map<String, dynamic> toMap() {
    final data = {
      if (id != null) 'id': id,
      'restaurant': restaurantId,
      'name': name,
      'email_address': emailAddress,
    };
    return data;
  }

  factory CustomerDto.fromMap(Map<String, dynamic> map) {
    int extractId(dynamic field) {
      if (field is int) return field;
      if (field is Map<String, dynamic> && field['id'] is int)
        return field['id'];
      return 0;
    }

    return CustomerDto(
      id: map['id'] as int?,
      restaurantId: extractId(map['restaurant']),
      name: map['name'] ?? '',
      emailAddress: map['email_address'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerDto.fromJson(String source) =>
      CustomerDto.fromMap(json.decode(source));
}
