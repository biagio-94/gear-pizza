import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/profile/bloc/orders_bloc.dart';
import 'package:gearpizza/features/profile/bloc/orders_event.dart';
import 'package:gearpizza/features/profile/bloc/orders_state.dart';
import 'package:gearpizza/features/cart/model/order_dto.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  void initState() {
    super.initState();
    context.read<OrdersBloc>().add(LoadOrders());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I miei ordini'),
        centerTitle: true,
      ),
      body: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) {
          if (state is OrdersLoaded) {
            final List<OrderDto> orders = state.orders;

            if (orders.isEmpty) {
              return const Center(child: Text('Nessun ordine trovato.'));
            }

            return ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text('#${order.id}'),
                    ),
                    title: Text('Stato: ${order.status}'),
                    subtitle: Text('Indirizzo: ${order.address}'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // TODO: navigazione a dettaglio ordine
                    },
                  ),
                );
              },
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
