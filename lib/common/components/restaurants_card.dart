import 'package:flutter/material.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:gearpizza/features/dashboard/models/restaurants_dto.dart';

typedef PizzaTapCallback = void Function(PizzaDto pizza);

class RestaurantCard extends StatelessWidget {
  final RestaurantDto restaurant;
  final PizzaTapCallback? onTapPizza;

  const RestaurantCard({
    Key? key,
    required this.restaurant,
    this.onTapPizza,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: ExpansionTile(
        leading: restaurant.coverImageUrl != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  restaurant.coverImageUrl!,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              )
            : const Icon(Icons.store, size: 50),
        title: Text(
          restaurant.name,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          restaurant.ownerName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        childrenPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: restaurant.pizzas.isNotEmpty
            ? restaurant.pizzas
                .map((p) => ListTile(
                      title: Text(p.name),
                      subtitle:
                          Text('\u20AC${p.price?.toStringAsFixed(2) ?? '-'}'),
                      onTap: () => onTapPizza?.call(p),
                    ))
                .toList()
            : [
                const ListTile(
                  title: Text('Nessuna pizza disponibile'),
                )
              ],
      ),
    );
  }
}
