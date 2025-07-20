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
      email: map['email_address'] ?? '',
      fullName: map['name'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email_address': email,
      'name': fullName,
    };
  }
}
