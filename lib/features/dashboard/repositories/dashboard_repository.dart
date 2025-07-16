import 'package:gearpizza/common/models/items_allergens.dart';
import 'package:gearpizza/common/models/items_pizzas.dart';
import 'package:gearpizza/common/models/items_restaurants.dart';
import 'package:gearpizza/common/models/read_items_allergens200_response.dart';
import 'package:gearpizza/common/models/read_items_pizzas200_response.dart';
import 'package:gearpizza/common/models/read_items_restaurants200_response.dart';
import 'package:gearpizza/common/utils/directus_query_builder.dart';
import 'package:gearpizza/common/utils/serializers.dart';
import 'package:gearpizza/features/dashboard/api/dashboard_endpoints.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:gearpizza/features/dashboard/models/restaurants_dto.dart';

class DashboardRepository {
  final ApiService _apiService;

  DashboardRepository(this._apiService);

  Future<List<RestaurantDto>> fetchAllRestaurants() async {
    // Costruisco la query per chiedere tutti i campi del ristorante, incluso cover image, owner e tutte le pizze
    final query = DirectusQueryBuilder().fields(<String>[
      '*',
      'cover_image.*',
      'owner.*',
      'pizzas.*',
    ]);

    final endpoint = DashboardEndpoints.getRestaurants(queryBuilder: query);

    // Faccio la chiamata all'API per ottenere la lista di ristoranti
    final resp = await _apiService.get(endpoint);
    if (resp.statusCode != 200) {
      throw Exception('Errore fetch ristoranti ${resp.statusCode}');
    }

    // Deserializzo la risposta usando built_value per ottenere una lista tipizzata (BuiltList<ItemsRestaurants>)
    final parsed = standardSerializers.deserializeWith(
      ReadItemsRestaurants200Response.serializer,
      resp.data,
    );
    final builtList = parsed?.data?.toList() ?? [];

    // Converto ogni ItemsRestaurants in una mappa (Map<String, dynamic>) per poter usare il mio DTO leggero
    return builtList.map((item) {
      final raw = standardSerializers.serializeWith(
        ItemsRestaurants.serializer,
        item,
      ) as Map<String, dynamic>;

      // Uso il mio DTO custom, più leggero e adatto all'UI, per rappresentare ogni ristorante
      return RestaurantDto.fromDirectus(raw);
    }).toList();
  }

  Future<List<AllergenDto>> fetchAllAllergens() async {
    final endpoint = DashboardEndpoints.getAllergens();

    // Richiedo tutti gli allergeni al backend
    final resp = await _apiService.get(endpoint);
    if (resp.statusCode != 200) {
      throw Exception('Errore fetch allergeni ${resp.statusCode}');
    }

    // Deserializzo in una lista tipizzata di ItemsAllergens
    final parsed = standardSerializers.deserializeWith(
      ReadItemsAllergens200Response.serializer,
      resp.data,
    );
    final builtList = parsed?.data?.toList() ?? [];

    // Converto ogni elemento in una mappa e lo passo al mio DTO
    return builtList.map((item) {
      final raw = standardSerializers.serializeWith(
        ItemsAllergens.serializer,
        item,
      ) as Map<String, dynamic>;
      return AllergenDto.fromMap(raw);
    }).toList();
  }

  Future<List<PizzaDto>> fetchPizzasByRestaurant(int restaurantId) async {
    // Costruisco una query con filtro: voglio solo le pizze del ristorante specifico
    final query = DirectusQueryBuilder().fields(<String>['*']).filter({
      'restaurant': {'_eq': restaurantId}
    });

    final endpoint = DashboardEndpoints.getPizzas(queryBuilder: query);

    // Chiamo l'API per ottenere le pizze
    final resp = await _apiService.get(endpoint);
    if (resp.statusCode != 200) {
      throw Exception('Errore fetch pizze ${resp.statusCode}');
    }

    // Deserializzo in lista tipizzata ItemsPizzas
    final parsed = standardSerializers.deserializeWith(
      ReadItemsPizzas200Response.serializer,
      resp.data,
    );
    final builtList = parsed?.data?.toList() ?? [];

    // Converto ogni item in DTO usando la map raw
    return builtList.map((item) {
      final raw = standardSerializers.serializeWith(
        ItemsPizzas.serializer,
        item,
      ) as Map<String, dynamic>;
      return PizzaDto.fromMap(raw);
    }).toList();
  }
}
