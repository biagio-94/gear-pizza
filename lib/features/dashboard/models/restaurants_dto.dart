import 'dart:convert';

import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';

class RestaurantDto {
  final int id;
  final String name;
  final String? coverImageUrl;
  final String ownerName;
  final List<PizzaDto> pizzas;

  RestaurantDto({
    required this.id,
    required this.name,
    this.coverImageUrl,
    required this.ownerName,
    required this.pizzas,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'coverImageUrl': coverImageUrl,
      'ownerName': ownerName,
      'pizzas': pizzas.map((x) => x.toMap()).toList(),
    };
  }

  factory RestaurantDto.fromMap(Map<String, dynamic> map) {
    return RestaurantDto(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      coverImageUrl: map['coverImageUrl'],
      ownerName: map['ownerName'] ?? '',
      pizzas:
          List<PizzaDto>.from(map['pizzas']?.map((x) => PizzaDto.fromMap(x))),
    );
  }
  factory RestaurantDto.fromDirectus(Map<String, dynamic> map) {
    return RestaurantDto(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      coverImageUrl: map['cover_image']?['url'],
      ownerName: map['owner']?['first_name'] ?? '',
      pizzas: (map['pizzas'] as List<dynamic>?)
              ?.map((e) => PizzaDto.fromMap(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }

  String toJson() => json.encode(toMap());

  factory RestaurantDto.fromJson(String source) =>
      RestaurantDto.fromMap(json.decode(source));

  /// da lista raw Directus a List<RestaurantDto>
  static List<RestaurantDto> listFromDirectus(List<dynamic> list) => list
      .map((e) => RestaurantDto.fromDirectus(e as Map<String, dynamic>))
      .toList();
}
