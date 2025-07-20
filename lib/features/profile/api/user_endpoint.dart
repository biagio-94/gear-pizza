import 'package:gearpizza/common/utils/directus_query_builder.dart';

class UserEndpoint {
  static const String basePath = '/items';
  static const String collection = 'customers';

  // Endpoint per fetch profilo utente con query opzionale
  static String fetchUserProfile(String userId,
      {DirectusQueryBuilder? queryBuilder}) {
    final query = queryBuilder?.build() ?? '';
    return '$basePath/$collection/$userId$query';
  }

  // Endpoint per patch utente
  static String patchUser(String userId) {
    return '$basePath/$collection/$userId';
  }
}
