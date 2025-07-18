import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:gearpizza/common/api/endpoints.dart';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';

class PizzaDto {
  final int id;
  final String name;
  final String? description;
  final double? price;
  final String? coverImageUrl;
  final List<AllergenDto> allergens;

  PizzaDto({
    required this.id,
    required this.name,
    this.description,
    this.price,
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
    final parsedAllergens = allergenList
        .map((a) => AllergenDto.fromMap(a as Map<String, dynamic>))
        .toList();

    return PizzaDto(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      description: map['description'],
      price: map['price']?.toDouble(),
      coverImageUrl: imageUrl,
      allergens: parsedAllergens,
    );
  }

  String toJson() => json.encode(toMap());

  factory PizzaDto.fromJson(String source) =>
      PizzaDto.fromMap(json.decode(source));
}
