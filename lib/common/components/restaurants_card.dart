import 'package:flutter/material.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:gearpizza/features/dashboard/models/restaurants_dto.dart';

class RestaurantCard extends StatelessWidget {
  final RestaurantDto restaurant;

  const RestaurantCard({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Immagine in alto a tutta larghezza con angoli arrotondati
          SizedBox(
            height: 160,
            child: restaurant.coverImageUrl != null
                ? ImageDownloadHelper.loadNetworkImage(
                    restaurant.coverImageUrl!,
                    fit: BoxFit.cover,
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

          // Spazio tra immagine e testo
          const SizedBox(height: 12),

          // Nome ristorante
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              restaurant.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),

          // Spazio
          const SizedBox(height: 4),

          // Info aggiuntive (es. proprietario o indirizzo)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              restaurant.ownerName,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
