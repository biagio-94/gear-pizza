import 'package:gearpizza/common/utils/directus_query_builder.dart';

class DashboardEndpoints {
  static const String basePath = '/items';

  static String getRestaurants({DirectusQueryBuilder? queryBuilder}) {
    final query = queryBuilder?.build() ?? '';
    return '$basePath/restaurants$query';
  }

  static String getAllergens() {
    return '$basePath/allergens';
  }

  static String getPizzas({DirectusQueryBuilder? queryBuilder}) {
    final query = queryBuilder?.build() ?? '';
    return '$basePath/pizzas$query';
  }

  static String getRestaurantById(int id) {
    return '$basePath/restaurants/$id';
  }

  static String getAllergenById(int id) {
    return '$basePath/allergens/$id';
  }

  /// Restituisce l'endpoint per recuperare un customer per ID,
  /// con possibilità di specificare campi o relazioni da popolare.
  static String getCustomerById(
    String id, {
    DirectusQueryBuilder? queryBuilder,
  }) {
    final qb = queryBuilder ?? DirectusQueryBuilder();
    // Esempio: qb.fields(['id','email_address','name'])
    final query = qb.build();
    return '$basePath/customers/$id$query';
  }
}
// This class provides static methods to construct API endpoints for the dashboard feature.
// It uses a base path and allows for query parameters to be appended using the DirectusQueryBuilder.
// The methods include fetching all restaurants, allergens, and pizzas, as well as fetching specific items by ID.
// The endpoints are constructed in a way that they can be easily used with an API service to make HTTP requests.
// The DirectusQueryBuilder is used to build query strings for filtering, sorting, and pagination of the results.
// This structure allows for a clean separation of concerns, keeping the endpoint definitions organized and reusable.
// The endpoints can be extended or modified as needed without affecting the overall architecture of the application.
