import 'dart:convert';
import 'dart:math';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';

class PizzaDto {
  final int id;
  final String name;
  final String? description;
  final double price;
  final String? coverImageUrl;
  final List<AllergenDto> allergens;

  PizzaDto({
    required this.id,
    required this.name,
    this.description,
    required this.price,
    this.coverImageUrl,
    this.allergens = const [],
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'coverImageUrl': coverImageUrl,
      'allergens': allergens.map((a) => a.toMap()).toList(),
    };
  }

  factory PizzaDto.fromMap(Map<String, dynamic> map) {
    final imageUrl = map['cover_image']?['id'];

    final allergenList = map['allergens'] as List<dynamic>? ?? [];
    final parsedAllergens = allergenList.map((a) {
      final allergenMap = a['allergens_id'];
      return AllergenDto.fromMap(allergenMap);
    }).toList();

    // Prezzo casuale tra 7.00 e 16.00 incluso con due decimali
    double generateRandomPrice() {
      final rng = Random(map['id'] ?? DateTime.now().millisecondsSinceEpoch);
      final min = 7.0;
      final max = 16.0;
      double raw = min + rng.nextDouble() * (max - min);
      // arrotonda a due decimali
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
    );
  }

  String toJson() => json.encode(toMap());

  factory PizzaDto.fromJson(String source) =>
      PizzaDto.fromMap(json.decode(source));
}
