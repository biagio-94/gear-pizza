/// File: lib/features/profile/manage_menu_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/profile/bloc/admin_page_bloc.dart';
import 'package:gearpizza/features/profile/bloc/admin_page_event.dart';
import 'package:gearpizza/features/profile/bloc/admin_page_state.dart';
import 'package:gearpizza/features/profile/components/adomin_product_list.dart';
import 'package:gearpizza/features/profile/components/restaurant_image_picker.dart';
import 'package:gearpizza/features/profile/components/restaurant_input_name.dart';
import 'package:gearpizza/features/profile/routes/profile_routes.dart';
import 'package:go_router/go_router.dart';

class ManageMenuScreen extends StatefulWidget {
  final int restaurantId;
  const ManageMenuScreen({Key? key, required this.restaurantId})
      : super(key: key);

  @override
  State<ManageMenuScreen> createState() => _ManageMenuScreenState();
}

class _ManageMenuScreenState extends State<ManageMenuScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isCollapsed = false;

  static const double _appBarExpandedHeight = 200;
  static const double _collapseThreshold =
      _appBarExpandedHeight - kToolbarHeight;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    context.read<AdminPageBloc>().add(FetchAdminPageData(widget.restaurantId));
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final collapsed = _scrollController.offset > _collapseThreshold;
    if (collapsed != _isCollapsed) setState(() => _isCollapsed = collapsed);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminPageBloc, AdminPageState>(
      builder: (context, state) {
        if (state is AdminPageError) {
          return Scaffold(body: Center(child: Text(state.message)));
        }
        if (state is AdminPageLoaded) {
          return Scaffold(
            body: CustomScrollView(
              controller: _scrollController,
              slivers: [
                RestaurantImagePicker(
                  data: state.data,
                  isCollapsed: _isCollapsed,
                  expandedHeight: _appBarExpandedHeight,
                  onImageChanged: (file) {
                    context.read<AdminPageBloc>().add(
                          UpdateRestaurantImage(
                            restaurantId: widget.restaurantId,
                            xfile: file,
                          ),
                        );
                  },
                ),
                SliverToBoxAdapter(
                  child: RestaurantNameInput(
                    initial: state.data.restaurant.name,
                    onChanged: (name) {
                      context.read<AdminPageBloc>().add(
                            UpdateRestaurantname(
                              restaurantId: widget.restaurantId,
                              restaurantName: name,
                            ),
                          );
                    },
                  ),
                ),
                PizzaListHeader(
                  onAdd: () {
                    context.pushNamed(
                      'edit-pizza',
                      pathParameters: {
                        'restaurantId': widget.restaurantId.toString(),
                      },
                      extra: PizzaScreenArgs(
                        pizza: null,
                        allAllergens: state.allergens,
                      ),
                    );
                  },
                ),
                PizzaListSliver(
                  pizzas: state.data.pizzas,
                  onEdit: (pizza) {
                    context.pushNamed(
                      'edit-pizza',
                      pathParameters: {
                        'restaurantId': widget.restaurantId.toString(),
                      },
                      extra: PizzaScreenArgs(
                        pizza: pizza,
                        allAllergens: state.allergens,
                      ),
                    );
                  },
                  onDelete: (pizza) {
                    context.read<AdminPageBloc>().add(
                          DeletePizzaEvent(
                            restaurantId: widget.restaurantId,
                            pizzaId: pizza.id,
                          ),
                        );
                  },
                ),
              ],
            ),
          );
        }
        return Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
