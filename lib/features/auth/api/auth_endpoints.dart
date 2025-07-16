// lib/features/auth/auth_endpoints.dart
import 'package:gearpizza/common/utils/directus_query_builder.dart';

class AuthEndpoints {
  static const String login = '/auth/login';
  static const String refreshToken = '/auth/refresh';

  /// Ritorna l'endpoint per cercare un utente via email.
  /// Es. '/items/users?fields=id&filter={"email":{"_eq":"foo@bar"}}&limit=1'
  static String getUserByEmail({required DirectusQueryBuilder queryBuilder}) {
    return '/items/users${queryBuilder.build()}';
  }
}
