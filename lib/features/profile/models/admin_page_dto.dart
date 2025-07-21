import 'dart:convert';

import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:gearpizza/features/dashboard/models/restaurants_dto.dart';

class AdminPageDto {
  final RestaurantDto restaurant;
  final List<PizzaDto> pizzas;

  AdminPageDto({required this.restaurant, required this.pizzas});

  Map<String, dynamic> toMap() {
    return {
      'restaurant': restaurant.toMap(),
      'pizzas': pizzas.map((x) => x.toMap()).toList(),
    };
  }

  factory AdminPageDto.fromMap(Map<String, dynamic> map) {
    return AdminPageDto(
      restaurant: RestaurantDto.fromMap(map['restaurant']),
      pizzas:
          List<PizzaDto>.from(map['pizzas']?.map((x) => PizzaDto.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory AdminPageDto.fromJson(String source) =>
      AdminPageDto.fromMap(json.decode(source));
}
