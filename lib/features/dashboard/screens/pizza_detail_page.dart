// pizza_detail_page.dart
import 'package:flutter/material.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';

class PizzaDetailPage extends StatelessWidget {
  final String restaurantId;
  final String pizzaId;

  const PizzaDetailPage({
    Key? key,
    required this.restaurantId,
    required this.pizzaId,
  }) : super(key: key);

  // Mock single pizza: in realtà verresti da un repository
  PizzaDto get pizza => PizzaDto(
        id: int.tryParse(pizzaId) ?? 0,
        name: 'Pizza speciale',
        price: 9.99,
      );

  @override
  Widget build(BuildContext context) {
    final p = pizza;
    return Scaffold(
      appBar: AppBar(title: Text(p.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // if (p.imageUrl != null)
            //   Image.network(p.imageUrl!, fit: BoxFit.cover),
            // Padding(
            //   padding: const EdgeInsets.all(16),
            //   child: Text(
            //     p.description,
            //     style: Theme.of(context).textTheme.bodyMedium,
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 16),
            //   child: ElevatedButton(
            //     onPressed: () {/* aggiungi al carrello */},
            //     child: Text('Aggiungi (\€${p.price.toStringAsFixed(2)})'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
