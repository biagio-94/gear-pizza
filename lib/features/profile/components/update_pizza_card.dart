import 'package:flutter/material.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';

class UpdatePizzaCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    Widget avatarChild = pizza.coverImageUrl != null
        ? ClipOval(
            child: ImageDownloadHelper.loadCachedNetworkImage(
              pizza.coverImageUrl!,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          )
        : Icon(Icons.local_pizza, color: colorScheme.secondary, size: 24);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Row(
          children: [
            // Image
            CircleAvatar(
              radius: 20,
              backgroundColor: colorScheme.secondaryContainer,
              child: avatarChild,
            ),
            const SizedBox(width: 12),

            // Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    pizza.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '€${pizza.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 4),
                  if (pizza.allergens.isNotEmpty)
                    Text(
                      'Allergeni: ${pizza.allergens.map((a) => a.name).join(', ')}',
                      style: TextStyle(
                        color: colorScheme.onSurface.withOpacity(0.7),
                        fontSize: 12,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),

            // Actions vertical
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit, size: 20, color: colorScheme.primary),
                  onPressed: onEdit,
                  splashRadius: 20,
                ),
                IconButton(
                  icon: Icon(Icons.delete, size: 20, color: colorScheme.error),
                  onPressed: onDelete,
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
