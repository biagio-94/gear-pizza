import 'package:flutter/material.dart';
import 'package:gearpizza/common/services/firestore_service.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:get_it/get_it.dart';

class UpdatePizzaCard extends StatefulWidget {
  final PizzaDto pizza;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const UpdatePizzaCard({
    Key? key,
    required this.pizza,
    required this.onEdit,
    required this.onDelete,
  }) : super(key: key);

  @override
  _UpdatePizzaCardState createState() => _UpdatePizzaCardState();
}

class _UpdatePizzaCardState extends State<UpdatePizzaCard> {
  late final Future<String> _imageFuture;

  @override
  void initState() {
    super.initState();
    _imageFuture = _fetchImage(
      widget.pizza.id.toString(),
      widget.pizza.coverImageUrl ?? '',
    );
  }

  Future<String> _fetchImage(String pizzaId, String fallbackUrl) async {
    try {
      final firebase = GetIt.instance<FirebaseStorageService>();
      final url = await firebase.fetchPizzaImageUrlFromFirebase(pizzaId);
      return url?.isNotEmpty == true ? url! : fallbackUrl;
    } catch (_) {
      return fallbackUrl;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Row(
          children: [
            // IMAGE CIRCLE
            FutureBuilder<String>(
              future: _imageFuture,
              builder: (context, snap) {
                Widget child;
                if (snap.connectionState == ConnectionState.waiting) {
                  child = const CircularProgressIndicator(strokeWidth: 2);
                } else if (snap.hasData && snap.data!.isNotEmpty) {
                  child = ClipOval(
                    child: ImageDownloadHelper.loadCachedNetworkImage(
                      snap.data!,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  );
                } else {
                  child = Icon(Icons.local_pizza,
                      color: colorScheme.secondary, size: 24);
                }
                return CircleAvatar(
                  radius: 20,
                  backgroundColor: colorScheme.secondaryContainer,
                  child: child,
                );
              },
            ),

            const SizedBox(width: 12),

            // DETAILS
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.pizza.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 4),
                  if (widget.pizza.allergens.isNotEmpty)
                    Text(
                      'Allergeni: ${widget.pizza.allergens.map((a) => a.name).join(', ')}',
                      style: TextStyle(
                        color: colorScheme.onSurface.withOpacity(0.7),
                        fontSize: 12,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  const SizedBox(height: 4),
                  Text(
                    '€${widget.pizza.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: colorScheme.onPrimary,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            // ACTIONS
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: Icon(Icons.edit, size: 20, color: colorScheme.primary),
                  onPressed: widget.onEdit,
                  splashRadius: 20,
                ),
                const SizedBox(height: 4),
                IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: Icon(Icons.delete, size: 20, color: colorScheme.error),
                  onPressed: widget.onDelete,
                  splashRadius: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
