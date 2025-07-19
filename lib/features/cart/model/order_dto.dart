import 'dart:convert';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';

class OrderDto {
  final String status;
  final int restaurantId;
  final int customerId;
  final String address;
  final String? helpImageUrl;
  final List<PizzaDto> pizzas;

  OrderDto({
    required this.status,
    required this.restaurantId,
    required this.customerId,
    required this.address,
    required this.helpImageUrl,
    required this.pizzas,
  });

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'restaurantId': restaurantId,
      'customerId': customerId,
      'address': address,
      'helpImageUrl': helpImageUrl,
      'pizzas': pizzas.map((x) => x.toMap()).toList(),
    };
  }

  factory OrderDto.fromMap(Map<String, dynamic> map) {
    return OrderDto(
      status: map['status'] ?? '',
      restaurantId: map['restaurantId']?.toInt() ?? 0,
      customerId: map['customerId']?.toInt() ?? 0,
      address: map['address'] ?? '',
      helpImageUrl: map['helpImageUrl'],
      pizzas:
          List<PizzaDto>.from(map['pizzas']?.map((x) => PizzaDto.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderDto.fromJson(String source) =>
      OrderDto.fromMap(json.decode(source));
}
