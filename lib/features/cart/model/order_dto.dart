import 'dart:convert';

/// DTO per gli ordini, compatibile con lo schema Directus
class OrderDto {
  final int? id;
  final String status;
  final int restaurantId;
  final int customerId;
  final String address;
  final String? helpingImage;
  final List<int> pizzaIds;

  OrderDto({
    this.id,
    required this.status,
    required this.restaurantId,
    required this.customerId,
    required this.address,
    this.helpingImage,
    required this.pizzaIds,
  });

  /// Mappa i campi nelle chiavi corrette di Directus
  Map<String, dynamic> toMap() {
    final data = {
      if (id != null) 'id': id,
      'status': status,
      'restaurant': restaurantId,
      'customer': customerId,
      'address': address,
      if (helpingImage != null) 'helping_image': helpingImage,
      'pizzas': pizzaIds,
    };
    return data;
  }

  factory OrderDto.fromMap(Map<String, dynamic> map) {
    int extractId(dynamic field) {
      if (field is int) return field;
      if (field is Map<String, dynamic> && field['id'] is int)
        return field['id'];
      return 0;
    }

    List<int> extractPizzaIds(dynamic field) {
      if (field is List) {
        return field.map<int>((e) {
          if (e is int) return e;
          if (e is Map<String, dynamic> && e['pizza'] != null) {
            return extractId(e['pizza']);
          }
          return 0;
        }).toList();
      }
      return [];
    }

    return OrderDto(
      id: map['id'] as int?,
      status: map['status'] ?? '',
      restaurantId: extractId(map['restaurant']),
      customerId: extractId(map['customer']),
      address: map['address'] ?? '',
      helpingImage: map['helpingImage'],
      pizzaIds: extractPizzaIds(map['pizzas']),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderDto.fromJson(String source) =>
      OrderDto.fromMap(json.decode(source));
}
