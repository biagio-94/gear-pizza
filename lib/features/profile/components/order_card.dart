import 'package:flutter/material.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';
import 'package:gearpizza/features/auth/services/user_role_service.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:gearpizza/features/profile/models/order_detail_dto.dart';

class OrderCard extends StatelessWidget {
  final OrderDetailDto order;

  const OrderCard({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final bool isAdmin = GetIt.instance<AuthGeaPizzaUser>().role == Roles.admin;

    final cardContent = Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Immagine del ristorante
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: ImageDownloadHelper.loadCachedNetworkImage(
                order.restaurant.coverImage,
                width: 72,
                height: 72,
                fit: BoxFit.cover,
                errorWidget: Container(
                  width: 72,
                  height: 72,
                  color: colorScheme.surfaceVariant,
                  child: Icon(Icons.store,
                      size: 36, color: colorScheme.onSurfaceVariant),
                ),
              ),
            ),
            const SizedBox(width: 16),
            // Dettagli
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nome ristorante + stato ordine
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          order.restaurant.name,
                          style: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: colorScheme.onSurface,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 8),
                      TweenAnimationBuilder<double>(
                        tween: Tween(begin: 0.8, end: 1.0),
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeOutBack,
                        builder: (context, scale, child) {
                          final statusColor =
                              _statusColor(order.status, colorScheme);
                          return Transform.scale(
                            scale: scale,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 8),
                              decoration: BoxDecoration(
                                color: statusColor.withOpacity(0.1),
                                border: Border.all(
                                  color: statusColor,
                                  width: 1.2,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                order.status.toUpperCase(),
                                style: textTheme.labelSmall?.copyWith(
                                  color: statusColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  // Lista pizze
                  ...order.pizzas.map(
                    (po) => Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Text(
                        po.pizza.name,
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Indirizzo
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on,
                          size: 16, color: colorScheme.outline),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          order.address,
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    // Se è admin, avvolgiamo la card in InkWell per il tap, altrimenti solo la card
    return isAdmin
        ? InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              context.pushNamed(
                'order-detail',
                pathParameters: {
                  'id': order.id.toString(),
                },
              );
            },
            child: cardContent,
          )
        : cardContent;
  }

  Color _statusColor(String status, ColorScheme scheme) {
    switch (status.toLowerCase()) {
      case 'pending':
        return scheme.error.withOpacity(0.8);
      case 'preparing':
        return scheme.primary;
      case 'delivered':
        return scheme.tertiary;
      case 'completed':
        return scheme.secondary;
      default:
        return scheme.outline;
    }
  }
}
