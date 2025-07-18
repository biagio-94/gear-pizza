import 'package:flutter/material.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';

class PizzaCard extends StatelessWidget {
  final PizzaDto pizza;
  final VoidCallback? onTap;

  const PizzaCard({
    Key? key,
    required this.pizza,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
              child: pizza.coverImageUrl != null
                  ? ImageDownloadHelper.loadNetworkImage(
                      pizza.coverImageUrl!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    )
                  : Container(
                      color: Colors.grey[300],
                      child: const Icon(
                        Icons.store,
                        size: 48,
                        color: Colors.grey,
                      ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pizza.name,
                    style: AppTextStyles.bodyLarge(context),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  if (pizza.price != null)
                    Text(
                      '€${pizza.price!.toStringAsFixed(2)}',
                      style: AppTextStyles.body(context),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
