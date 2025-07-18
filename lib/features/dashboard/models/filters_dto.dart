import 'dart:convert';

class FiltersDto {
  final int id;
  final String name;
  FiltersDto({required this.id, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory FiltersDto.fromMap(Map<String, dynamic> map) {
    return FiltersDto(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FiltersDto.fromJson(String source) =>
      FiltersDto.fromMap(json.decode(source));
}
