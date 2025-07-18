import 'package:flutter/material.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(16),
            bottom: Radius.circular(16),
          ),
          child: SizedBox(
            height: 160,
            child: restaurant.coverImageUrl != null
                ? ImageDownloadHelper.loadNetworkImage(
                    restaurant.coverImageUrl!,
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
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              restaurant.name,
              style: AppTextStyles.bodyLarge(context),
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                Text(
                  "4.8",
                  style: AppTextStyles.body(context),
                ),
                const SizedBox(width: 4),
                const Icon(Icons.star, size: 16, color: Colors.amber),
              ],
            ),
          ],
        ),
        Text(
          restaurant.ownerName,
          style: AppTextStyles.bodySmall(context),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
