import 'dart:convert';
import 'dart:math';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';

class PizzaDto {
  final int id;
  final String name;
  final String? description;
  final double price;
  String? coverImageUrl;
  final List<AllergenDto> allergens;
  final int restaurantId;
  PizzaDto({
    required this.id,
    required this.name,
    this.description,
    required this.price,
    this.coverImageUrl,
    this.allergens = const [],
    required this.restaurantId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'coverImageUrl': coverImageUrl,
      'allergens': allergens.map((a) => a.toMap()).toList(),
      'restaurantId': restaurantId,
    };
  }

  factory PizzaDto.fromMap(Map<String, dynamic> map) {
    final imageUrl = map['cover_image']?['id'];

    final allergenList = map['allergens'] as List<dynamic>? ?? [];
    final parsedAllergens = allergenList.map((a) {
      final allergenMap = a['allergens_id'];
      return AllergenDto.fromMap(allergenMap);
    }).toList();

    // Prezzo casuale
    double generateRandomPrice() {
      final rng = Random(map['id'] ?? DateTime.now().millisecondsSinceEpoch);
      final min = 7.0;
      final max = 16.0;
      double raw = min + rng.nextDouble() * (max - min);
      return (raw * 100).round() / 100;
    }

    double priceValue = map['price'] != null
        ? (map['price'] as num).toDouble()
        : generateRandomPrice();

    return PizzaDto(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      description: map['description'],
      price: priceValue,
      coverImageUrl: imageUrl,
      allergens: parsedAllergens,
      restaurantId: (map['restaurant'] is Map)
          ? (map['restaurant']['id'] ?? 0)
          : map['restaurant'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PizzaDto.fromJson(String source) =>
      PizzaDto.fromMap(json.decode(source));
}
