// lib/common/components/restaurants_allergens_filters.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_event.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_state.dart';

/// Un SliverPersistentHeader “pinned” che:
/// 1) Dispa tches FetchAllergenEvent in initState
/// 2) Ascolta AllergensLoaded per mostrare i ChoiceChip
/// 3) Espone onAllergenSelected quando cambia il filtro
class RestaurantsAllergensFilters extends StatefulWidget {
  final String label;
  final ValueChanged<AllergenDto>? onAllergenSelected;

  const RestaurantsAllergensFilters({
    Key? key,
    required this.label,
    this.onAllergenSelected,
  }) : super(key: key);

  @override
  _RestaurantsAllergensFiltersState createState() =>
      _RestaurantsAllergensFiltersState();
}

class _RestaurantsAllergensFiltersState
    extends State<RestaurantsAllergensFilters> {
  late AllergenDto _selectedFilter;

  @override
  void initState() {
    super.initState();
    // default “Tutti”
    _selectedFilter = AllergenDto(id: 0, name: 'Tutti');
    // dispatch per caricare gli allergeni la prima volta
    context.read<DashboardBloc>().add(FetchAllergenEvent());
  }

  @override
  Widget build(BuildContext context) {
    // Calcolo dell’altezza: label (24) + spazio (4) + chips row (56)
    const totalHeight = 24.0 + 4.0 + 56.0;

    return SliverPersistentHeader(
      pinned: true,
      delegate: _RestaurantsAllergensFiltersDelegate(
        minExtent: totalHeight,
        maxExtent: totalHeight,
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Label sopra alle chip
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  widget.label,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 4),
              // BlocBuilder per attendere AllergensLoaded
              Expanded(
                child: BlocBuilder<DashboardBloc, DashboardState>(
                  buildWhen: (_, curr) => curr is AllergensLoaded,
                  builder: (context, state) {
                    if (state is AllergensLoaded) {
                      // Prepara la lista con “Tutti” + allergeni
                      final all =
                          [AllergenDto(id: 0, name: 'Tutti')] + state.allergens;
                      return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        separatorBuilder: (_, __) => const SizedBox(width: 8),
                        itemCount: all.length,
                        itemBuilder: (context, idx) {
                          final allergen = all[idx];
                          final selected = allergen.id == _selectedFilter.id;
                          return ChoiceChip(
                            label: Text(allergen.name),
                            selected: selected,
                            onSelected: (_) {
                              setState(() => _selectedFilter = allergen);
                              widget.onAllergenSelected?.call(allergen);
                            },
                          );
                        },
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RestaurantsAllergensFiltersDelegate
    extends SliverPersistentHeaderDelegate {
  final double minExtent, maxExtent;
  final Widget child;

  _RestaurantsAllergensFiltersDelegate({
    required this.minExtent,
    required this.maxExtent,
    required this.child,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlaps) {
    return Material(elevation: overlaps ? 4 : 0, child: child);
  }

  @override
  bool shouldRebuild(covariant _RestaurantsAllergensFiltersDelegate old) =>
      old.minExtent != minExtent ||
      old.maxExtent != maxExtent ||
      old.child != child;
}
