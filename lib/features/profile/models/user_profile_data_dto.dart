// user_profile_data_dto.dart

class UserProfileDataDto {
  final String email;
  final String fullName;

  UserProfileDataDto({
    required this.email,
    required this.fullName,
  });

  factory UserProfileDataDto.fromMap(Map<String, dynamic> map) {
    return UserProfileDataDto(
      email: map['email'] ?? '',
      fullName: map['full_name'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'full_name': fullName,
    };
  }
}
