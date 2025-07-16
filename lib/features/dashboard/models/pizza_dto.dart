import 'dart:convert';

class PizzaDto {
  final int id;
  final String name;
  final double? price;

  PizzaDto({required this.id, required this.name, this.price});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
    };
  }

  factory PizzaDto.fromMap(Map<String, dynamic> map) {
    return PizzaDto(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      price: map['price']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory PizzaDto.fromJson(String source) =>
      PizzaDto.fromMap(json.decode(source));
}
