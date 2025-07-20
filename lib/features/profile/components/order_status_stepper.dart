import 'package:flutter/material.dart';

// Enum per gli stati dell'ordine
enum OrderStatus {
  pending,
  preparing,
  delivered,
  completed;

  String get label => name[0].toUpperCase() + name.substring(1);

  static OrderStatus fromString(String status) =>
      OrderStatus.values.firstWhere((e) => e.name == status);

  IconData get icon {
    switch (this) {
      case OrderStatus.pending:
        return Icons.schedule;
      case OrderStatus.preparing:
        return Icons.kitchen;
      case OrderStatus.delivered:
        return Icons.delivery_dining;
      case OrderStatus.completed:
        return Icons.check;
    }
  }
}

/// Componente separato per la barra di avanzamento dello stato ordine
class OrderStatusStepper extends StatelessWidget {
  final OrderStatus status;
  final ValueChanged<OrderStatus> onStatusTap;

  const OrderStatusStepper({
    Key? key,
    required this.status,
    required this.onStatusTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final currentIndex = status.index;
    return Row(
      children: OrderStatus.values.map((step) {
        final idx = step.index;
        final isPast = idx < currentIndex;
        final isCurrent = idx == currentIndex;
        final isClickable = idx >= currentIndex;
        final bgColor = isPast
            ? scheme.primary.withOpacity(0.5)
            : isCurrent
                ? scheme.secondary
                : Colors.grey.shade300;
        return Expanded(
          child: GestureDetector(
            onTap: isClickable ? () => onStatusTap(step) : null,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: bgColor,
                  child: Icon(
                    step.icon,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  step.label,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: (isPast || isCurrent)
                            ? Colors.black87
                            : Colors.grey,
                      ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
