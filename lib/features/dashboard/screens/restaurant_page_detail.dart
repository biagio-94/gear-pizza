import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:gearpizza/features/dashboard/models/restaurants_dto.dart';

class RestaurantDetailPage extends StatefulWidget {
  final String restaurantId;
  const RestaurantDetailPage({Key? key, required this.restaurantId})
      : super(key: key);

  @override
  State<RestaurantDetailPage> createState() => _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends State<RestaurantDetailPage> {
  final ScrollController _scrollController = ScrollController();
  bool _isCollapsed = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (!_scrollController.hasClients) return;
    // Quando l’AppBar si “stringe” fino all’altezza della toolbar
    const collapseThreshold = 150.0 - kToolbarHeight; // ≃94
    final bool isCollapsedNow = _scrollController.offset > collapseThreshold;
    if (isCollapsedNow != _isCollapsed) {
      setState(() => _isCollapsed = isCollapsedNow);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              expandedHeight: 150,
              pinned: true,
              elevation: 0,
              backgroundColor: _isCollapsed
                  ? theme.colorScheme.primary
                  : theme.colorScheme.primary,
              stretch: true,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: _isCollapsed
                      ? theme.colorScheme.onSurface
                      : theme.colorScheme.surface,
                ),
                onPressed: () => context.pop(),
              ),
              // Titolo visibile solo quando l'app bar è collassata
              flexibleSpace: FlexibleSpaceBar(
                title: _isCollapsed ? Text("Gelateria Romana") : null,
                collapseMode: CollapseMode.parallax,
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    ImageDownloadHelper.loadNetworkImage(
                      "https://www.gelateriaromana.com/source/home/5.jpg",
                      fit: BoxFit.cover,
                    ),
                    Container(color: Colors.black26),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Menu Pizze',
                  style: AppTextStyles.titleLarge(context),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.7,
                ),
                delegate: SliverChildBuilderDelegate((context, index) {
                  return GestureDetector(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      clipBehavior: Clip.antiAlias,
                      elevation: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg/960px-Eq_it-na_pizza-margherita_sep2005_sml.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Margherita",
                                  style: AppTextStyles.bodyLarge(context),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '€11.90',
                                  style: AppTextStyles.body(context),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }, childCount: 4),
              ),
            ),
            const SliverPadding(padding: EdgeInsets.only(bottom: 16)),
          ],
        ),
      ),
    );
  }
}
