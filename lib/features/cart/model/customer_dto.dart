import 'dart:convert';

class CustomerDto {
  final int restaurantId;
  final String name;
  final String emailAddress;

  CustomerDto(
      {required this.restaurantId,
      required this.name,
      required this.emailAddress});

  Map<String, dynamic> toMap() {
    return {
      'restaurantId': restaurantId,
      'name': name,
      'emailAddress': emailAddress,
    };
  }

  factory CustomerDto.fromMap(Map<String, dynamic> map) {
    return CustomerDto(
      restaurantId: map['restaurantId']?.toInt() ?? 0,
      name: map['name'] ?? '',
      emailAddress: map['emailAddress'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerDto.fromJson(String source) =>
      CustomerDto.fromMap(json.decode(source));
}
