enum Roles {
  admin,
  trainer,
  user,
}

class UserRoleService {
  /// Mappa una stringa di ruolo a un valore dell'enum Roles
  Roles fromRoleName(String roleName) {
    switch (roleName.toLowerCase().trim()) {
      case 'admin':
        return Roles.admin;
      case 'trainer':
      case 'pt':
      case 'personal_trainer':
        return Roles.trainer;
      case 'user':
      case 'cliente':
      default:
        return Roles.user;
    }
  }
}
