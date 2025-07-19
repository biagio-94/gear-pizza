import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/cart/bloc/cart_bloc.dart';
import 'package:gearpizza/features/cart/bloc/cart_state.dart';
import 'package:go_router/go_router.dart';

class CheckoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartLoadedState) {
          final total = state.totalPrice;
          final colors = Theme.of(context).colorScheme;

          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 56,
            child: FloatingActionButton.extended(
              onPressed: () {
                context.pushNamed("checkout");
              },
              backgroundColor: colors.secondary,
              foregroundColor: colors.onSecondary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
              label: Center(
                child: Text(
                  'Vai all\'ordine · €${total.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
