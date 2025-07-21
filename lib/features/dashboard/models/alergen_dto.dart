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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AllergenDto &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id.hashCode;
}
