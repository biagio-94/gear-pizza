import 'package:flutter/material.dart';
import 'package:gearpizza/features/cart/bloc/cart_event.dart';
import 'package:gearpizza/features/dashboard/bloc/product_card/product_card_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/product_card/product_card_event.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/cart/bloc/cart_bloc.dart';
import 'package:gearpizza/features/cart/bloc/cart_state.dart';
import 'package:gearpizza/features/cart/model/order_dto.dart';

class OrderCompleteted extends StatelessWidget {
  const OrderCompleteted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CartBloc>().state;
    if (state is! CartSuccessState) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
    final OrderDto order = state.order;

    return BlocListener<CartBloc, CartState>(
      listener: (context, state) {
        if (state is CartEmptyState) {
          context.pushReplacement("/cart");
        }
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Animazione in loop
              SizedBox(
                width: 300,
                height: 300,
                child: Lottie.asset(
                  'assets/animations/orderCompleted.json',
                  repeat: true,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Grazie per il tuo ordine!',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                order.pizzaIds.length > 1
                    ? 'Le tue pizze sono in arrivo 🚀'
                    : 'La tua pizza è in arrivo 🚀',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 56,
          child: FloatingActionButton.extended(
            onPressed: () {
              context.read<ProductCardBloc>().add(ClearProductCardEvent());
              context.read<CartBloc>().add(ClearCartEvent());
            },
            backgroundColor: Theme.of(context).colorScheme.secondary,
            foregroundColor: Theme.of(context).colorScheme.onSecondary,
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
            label: Center(
              child: Text(
                'Torna alla home',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
