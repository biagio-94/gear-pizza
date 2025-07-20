enum Roles {
  admin,
  user,
}

class UserRoleService {
  /// Mappa una stringa di ruolo a un valore dell'enum Roles
  Roles fromRoleName(String roleName) {
    switch (roleName.toLowerCase().trim()) {
      case 'admin':
        return Roles.admin;
      case 'user':
      default:
        return Roles.user;
    }
  }
}
