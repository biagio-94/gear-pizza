import 'package:gearpizza/common/utils/directus_query_builder.dart';

class UserEndpoint {
  static const String basePath = '/items';
  static const String collection = 'customers';
  static const String pizzaCollection = 'pizzas';
  static const String restaurantCollection = 'restaurants';

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

  // Endpoint per patch utente
  static String patchRestaurantname(String restaurantId) {
    return '$basePath/$restaurantCollection/$restaurantId';
  }

  static String getOrdersByUserId(
      String userId, DirectusQueryBuilder? queryBuilder) {
    final query = queryBuilder?.build() ?? '';

    return '$basePath/orders${query}';
  }

  static String patchOrderStatus(int orderId,
      {DirectusQueryBuilder? queryBuilder}) {
    final query = queryBuilder?.build() ?? '';
    return '$basePath/orders/$orderId$query';
  }

  static String patchRestaurant(int restaurantId) {
    return '$basePath/$collection/$restaurantId';
  }

  static String deletePizza(int pizzaId) {
    return '$basePath/$pizzaCollection/$pizzaId';
  }
}
