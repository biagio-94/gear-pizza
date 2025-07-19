import 'package:gearpizza/common/utils/directus_query_builder.dart';

class CartEndpoints {
  static const String basePath = '/items';

  static String checkCustomer({required String email}) {
    final qb = DirectusQueryBuilder()
      ..filter({
        'email_address': {'_eq': email}
      })
      ..populate(['restaurant']);

    return '$basePath/customers${qb.build()}';
  }

  static String createCustomer() {
    return '$basePath/customers';
  }

  static String createOrder() {
    return '$basePath/orders';
  }
}
