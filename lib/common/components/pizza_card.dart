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
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Linea sopra
        const Divider(height: 1, thickness: 0.5),
        GestureDetector(
          onTap: onTap,
          child: Padding(
            // Zero padding a sinistra, solo destra
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Immagine quadrata più grande a sinistra
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey[200],
                    child: pizza.coverImageUrl != null
                        ? ImageDownloadHelper.loadNetworkImage(
                            pizza.coverImageUrl!,
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                          )
                        : const Icon(
                            Icons.store,
                            size: 48,
                            color: Colors.grey,
                          ),
                  ),
                ),
                const SizedBox(width: 12),
                // Informazioni a destra, allineate in alto
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        pizza.name,
                        style: theme.textTheme.bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      if (pizza.description != null &&
                          pizza.description!.isNotEmpty)
                        Text(
                          pizza.description!,
                          style: AppTextStyles.bodySmall(context),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      const SizedBox(height: 6),
                      if (pizza.price != null)
                        Text(
                          '€${pizza.price!.toStringAsFixed(2)}',
                          style: AppTextStyles.bodyLarge(context),
                        ),
                      const SizedBox(height: 6),
                      // Allergeni senza troncamento, vanno a capo
                      if (pizza.allergens.isNotEmpty)
                        Text(
                          'Allergeni: ${pizza.allergens.map((a) => a.name).join(', ')}',
                          style: AppTextStyles.caption(context),
                        ),
                      // Spaziatura per i bottoni
                      const SizedBox(height: 8),
                      // Row dei bottoni + e - in basso a destra
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _QuantityButton(
                                icon: Icons.remove, onPressed: () {}),
                            const SizedBox(width: 8),
                            _QuantityButton(icon: Icons.add, onPressed: () {}),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // Linea sotto
        const Divider(height: 1, thickness: 0.5),
      ],
    );
  }
}

class _QuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _QuantityButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      width: 28,
      height: 28,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.secondary.withOpacity(0.1),
          padding: EdgeInsets.zero,
          shape: const CircleBorder(),
          elevation: 0,
        ),
        child: Icon(icon, size: 20),
      ),
    );
  }
}
