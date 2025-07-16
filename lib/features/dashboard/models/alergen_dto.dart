import 'dart:convert';

class AllergenDto {
  final int id;
  final String name;
  AllergenDto({required this.id, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory AllergenDto.fromMap(Map<String, dynamic> map) {
    return AllergenDto(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AllergenDto.fromJson(String source) =>
      AllergenDto.fromMap(json.decode(source));
}
