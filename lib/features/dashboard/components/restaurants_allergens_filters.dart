import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_event.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_state.dart';

class RestaurantsAllergensFilters extends StatefulWidget {
  final String label;
  final int restaurantid;
  final ValueChanged<List<AllergenDto>>? onSelectionChanged;

  const RestaurantsAllergensFilters({
    Key? key,
    required this.label,
    required this.restaurantid,
    this.onSelectionChanged,
  }) : super(key: key);

  @override
  _RestaurantsAllergensFiltersState createState() =>
      _RestaurantsAllergensFiltersState();
}

class _RestaurantsAllergensFiltersState
    extends State<RestaurantsAllergensFilters> {
  final Set<AllergenDto> _selectedFilters = {};

// Map of icons for each allergen (by name)
  static const Map<String, IconData> _allergenIcons = {
    'Gluten': Icons.grain,
    'Lactose': Icons.local_cafe,
    'Peanuts': Icons.spa,
    'Soy': Icons.spa,
    'Egg': Icons.egg,
    'Fish': Icons.set_meal,
    'Shellfish': Icons.shield,
    'Tomato': Icons.local_florist,
    'Milk': Icons.local_drink,
    'Wheat': Icons.emoji_food_beverage,
    'Yeast': Icons.grass,
    'All': Icons.select_all,
  };

  IconData _iconForAllergen(AllergenDto allergen, bool isSelected) {
    if (isSelected) return Icons.check;
    final key = allergen.name.toLowerCase();
    return _allergenIcons.entries
        .firstWhere(
          (entry) => entry.key.toLowerCase() == key,
          orElse: () => const MapEntry('default', Icons.filter_list),
        )
        .value;
  }

  @override
  Widget build(BuildContext context) {
    const totalHeight = 24.0 + 4.0 + 56.0;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SliverPersistentHeader(
      pinned: true,
      delegate: _RestaurantsAllergensFiltersDelegate(
        minExtent: totalHeight,
        maxExtent: totalHeight,
        child: Container(
          color: theme.scaffoldBackgroundColor,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  widget.label,
                  style: theme.textTheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 4),
              Expanded(
                child: BlocBuilder<DashboardBloc, DashboardState>(
                  buildWhen: (_, curr) => curr is AllergensLoaded,
                  builder: (context, state) {
                    if (state is AllergensLoaded) {
                      final allergensList = state.allergens;
                      final allOptions = [
                        AllergenDto(id: 0, name: 'Tutti'),
                        ...allergensList
                      ];

                      return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        separatorBuilder: (_, __) => const SizedBox(width: 2),
                        itemCount: allOptions.length,
                        itemBuilder: (context, idx) {
                          final allergen = allOptions[idx];
                          final isSelected = allergen.id == 0
                              ? _selectedFilters.length == allergensList.length
                              : _selectedFilters.contains(allergen);

                          return Padding(
                            padding:
                                const EdgeInsets.only(right: 4, bottom: 10),
                            child: Material(
                              color: isSelected
                                  ? colorScheme.primary
                                  : colorScheme.surfaceContainerHighest,
                              borderRadius: BorderRadius.circular(32),
                              elevation: isSelected ? 4 : 2,
                              shadowColor: Colors.black38,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(32),
                                onTap: () {
                                  setState(() {
                                    if (allergen.id == 0) {
                                      if (_selectedFilters.length <
                                          allergensList.length) {
                                        _selectedFilters
                                          ..clear()
                                          ..addAll(allergensList);
                                      } else {
                                        _selectedFilters.clear();
                                      }
                                    } else {
                                      if (!_selectedFilters.remove(allergen)) {
                                        _selectedFilters.add(allergen);
                                      }
                                    }
                                  });
                                  widget.onSelectionChanged
                                      ?.call(_selectedFilters.toList());

                                  final ids = _selectedFilters
                                      .map((a) => a.id)
                                      .toList();
                                  context
                                      .read<DashboardBloc>()
                                      .add(FetchByAllergensEvent(
                                        restaurantId: widget.restaurantid,
                                        selectedAllergenIds: ids,
                                      ));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 8),
                                  child: Row(
                                    children: [
                                      Icon(
                                        _iconForAllergen(allergen, isSelected),
                                        size: 20,
                                        color: isSelected
                                            ? colorScheme.onPrimary
                                            : colorScheme.primary,
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        allergen.name,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: isSelected
                                              ? colorScheme.onPrimary
                                              : colorScheme.onSurface,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }
                    return const Center(child: CircularProgressIndicator());
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
