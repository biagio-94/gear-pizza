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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const totalHeight = 24.0 + 4.0 + 56.0;

    return SliverPersistentHeader(
      pinned: true,
      delegate: _RestaurantsAllergensFiltersDelegate(
        minExtent: totalHeight,
        maxExtent: totalHeight,
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                        separatorBuilder: (_, __) => const SizedBox(width: 8),
                        itemCount: allOptions.length,
                        itemBuilder: (context, idx) {
                          final allergen = allOptions[idx];
                          final isSelected = allergen.id == 0
                              ? _selectedFilters.length == allergensList.length
                              : _selectedFilters.contains(allergen);

                          return ChoiceChip(
                            label: Text(allergen.name),
                            selected: isSelected,
                            onSelected: (_) {
                              setState(() {
                                if (allergen.id == 0) {
                                  // Toggle: seleziona tutti o deseleziona tutti
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

                              final ids =
                                  _selectedFilters.map((a) => a.id).toList();
                              context
                                  .read<DashboardBloc>()
                                  .add(FetchByAllergensEvent(
                                    restaurantId: widget.restaurantid,
                                    selectedAllergenIds: ids,
                                  ));
                            },
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
