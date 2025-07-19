import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_bloc.dart';
import 'package:gearpizza/features/dashboard/bloc/dashboard_state.dart';
import 'package:gearpizza/features/dashboard/models/filters_dto.dart';

class HomeFiltersBar extends StatelessWidget {
  const HomeFiltersBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: BlocBuilder<DashboardBloc, DashboardState>(
        buildWhen: (_, state) => state is FiltersLoaded,
        builder: (context, state) {
          if (state is FiltersLoaded) {
            return _FilterPills(filters: state.filters);
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class _FilterPills extends StatefulWidget {
  final List<FiltersDto> filters;

  const _FilterPills({Key? key, required this.filters}) : super(key: key);

  @override
  __FilterPillsState createState() => __FilterPillsState();
}

class __FilterPillsState extends State<_FilterPills> {
  final Set<String> _selected = <String>{};

  IconData _iconForFilter(String name) {
    switch (name.toLowerCase()) {
      case 'italiano':
        return Icons.restaurant;
      case 'cinese':
        return Icons.ramen_dining;
      case 'fast food':
        return Icons.fastfood;
      case 'prezzo: basso → alto':
        return Icons.arrow_upward;
      case 'distanza: vicino → lontano':
        return Icons.location_on;
      case 'valutazione: ⭐️⭐️⭐️+':
        return Icons.star_rate;
      case 'aperto 24h':
        return Icons.access_time;
      default:
        return Icons.filter_list;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: widget.filters.map((f) {
          final bool isSelected = _selected.contains(f.name);
          return Padding(
            padding: const EdgeInsets.only(right: 8.0, bottom: 10),
            child: Material(
              color:
                  isSelected ? colorScheme.primary : colorScheme.surfaceVariant,
              borderRadius: BorderRadius.circular(32),
              elevation: isSelected ? 4 : 2,
              shadowColor: Colors.black38,
              child: InkWell(
                borderRadius: BorderRadius.circular(32),
                onTap: () {
                  setState(() {
                    if (isSelected) {
                      _selected.remove(f.name);
                    } else {
                      _selected.add(f.name);
                    }
                  });
                  // TODO: dispatch multi-selection update to bloc using _selected
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  child: Row(
                    children: [
                      Icon(
                        isSelected ? Icons.check : _iconForFilter(f.name),
                        size: 20,
                        color: isSelected
                            ? colorScheme.onPrimary
                            : colorScheme.primary,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        f.name,
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
        }).toList(),
      ),
    );
  }
}
