// restaurants_page.dart
import 'package:flutter/material.dart';
import 'package:gearpizza/features/dashboard/models/restaurants_dto.dart';
import 'package:go_router/go_router.dart';

class RestaurantsPage extends StatelessWidget {
  final String restaurantid;

  const RestaurantsPage({super.key, required this.restaurantid});

  // Mock data; nella realtà verrebbe da un repository/Bloc
  List<RestaurantDto> get _mockRestaurants => List.generate(
        10,
        (i) => RestaurantDto(
          id: i.toInt(),
          name: 'Ristorante #$i',
          ownerName: 'Proprietario $i',
          coverImageUrl: null,
          pizzaId: [],
        ),
      );

  @override
  Widget build(BuildContext context) {
    final restaurants = _mockRestaurants;
    return Scaffold(
      appBar: AppBar(title: const Text('Ristoranti')),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (ctx, idx) {
          final r = restaurants[idx];
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                width: 56,
                height: 56,
                child: r.coverImageUrl != null
                    ? Image.network(r.coverImageUrl!, fit: BoxFit.cover)
                    : const Icon(Icons.store),
              ),
            ),
            title: Text(r.name),
            subtitle: Text('2 km • 4 ⭐️'),
            onTap: () => context.go('/restaurants/${r.id}'),
          );
        },
      ),
    );
  }
}
