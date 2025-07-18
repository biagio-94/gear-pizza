import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_state.dart';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';

/// A horizontal scrolling filter bar showing allergen tags.
///
/// It listens to the [DashboardBloc] and updates when [AllergensLoaded] state is emitted.
class RestaurantsAllergensBar extends StatelessWidget {
  const RestaurantsAllergensBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: BlocBuilder<DashboardBloc, DashboardState>(
        buildWhen: (_, state) => state is AllergensLoaded,
        builder: (context, state) {
          if (state is AllergensLoaded) {
            return _AllergenPills(allergens: state.allergens);
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

/// Internal widget that renders the list of allergen tags.
class _AllergenPills extends StatelessWidget {
  final List<AllergenDto> allergens;

  const _AllergenPills({
    Key? key,
    required this.allergens,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: allergens.map((a) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 6),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.orange.shade50,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Text(
              a.name,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.deepOrange,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
