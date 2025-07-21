import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:gearpizza/common/api/endpoints.dart';

class RestaurantDto {
  final int id;
  final String name;
  String? coverImageUrl;
  final String ownerName;
  final List<int> pizzaId;

  RestaurantDto({
    required this.id,
    required this.name,
    this.coverImageUrl,
    required this.ownerName,
    required this.pizzaId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'coverImageUrl': coverImageUrl,
      'ownerName': ownerName,
      'pizzaId': pizzaId,
    };
  }

  factory RestaurantDto.fromMap(Map<String, dynamic> map) {
    final imageFilename = map['cover_image']?['filename_disk'];
    final ownerFirstname = map['owner']?['first_name'] ?? '';
    final ownerLastname = map['owner']?['last_name'] ?? '';

    final pizzaList = map['pizzas'] as List<dynamic>? ?? [];
    final pizzaIds = pizzaList
        .map((e) {
          if (e is Map && e['id'] != null) {
            return e['id'] as int;
          } else if (e is int) {
            return e;
          } else {
            return 0;
          }
        })
        .where((id) => id != 0)
        .toList();

    return RestaurantDto(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      coverImageUrl: imageFilename,
      ownerName: "$ownerFirstname $ownerLastname",
      pizzaId: pizzaIds,
    );
  }

  String toJson() => json.encode(toMap());

  factory RestaurantDto.fromJson(String source) =>
      RestaurantDto.fromMap(json.decode(source));
}
