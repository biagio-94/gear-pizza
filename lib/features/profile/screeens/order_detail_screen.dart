import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:gearpizza/features/profile/bloc/orders_bloc.dart';
import 'package:gearpizza/features/profile/bloc/orders_state.dart';

enum OrderStatus {
  pending,
  preparing,
  delivered,
  completed;

  String get label => name[0].toUpperCase() + name.substring(1);
  static OrderStatus fromString(String status) =>
      OrderStatus.values.firstWhere((e) => e.name == status.toLowerCase());
}

class OrderDetailScreen extends StatefulWidget {
  final String orderId;

  const OrderDetailScreen({Key? key, required this.orderId}) : super(key: key);

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  late int parsedOrderId;
  OrderStatus? _selectedStatus;

  @override
  void initState() {
    super.initState();
    parsedOrderId = int.tryParse(widget.orderId) ?? -1;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Dettaglio Ordine #${widget.orderId}',
          style: textTheme.bodyLarge?.copyWith(color: Colors.black87),
        ),
      ),
      body: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) {
          if (state is OrdersLoaded) {
            final order = state.orders.firstWhere(
              (o) => o.id == parsedOrderId,
              orElse: () => throw Exception('Ordine non trovato'),
            );

            _selectedStatus ??= OrderStatus.fromString(order.status);

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListView(
                children: [
                  _buildProgressIndicator(colorScheme),
                  const SizedBox(height: 24),
                  _buildInfoCard(
                    title: 'Indirizzo',
                    content: order.address,
                    icon: Icons.location_on_outlined,
                  ),
                  const SizedBox(height: 16),
                  _buildInfoCard(
                    title: 'Cliente',
                    content:
                        '${order.customer.name}\n${order.customer.emailAddress}',
                    icon: Icons.person_outline,
                  ),
                  if (order.helpingImage != null) ...[
                    const SizedBox(height: 16),
                    _buildImageCard(order.helpingImage!),
                  ],
                  const SizedBox(height: 16),
                  Text(
                    'Pizze ordinate',
                    style: textTheme.bodySmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  ...order.pizzas.map((p) => Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(color: Colors.grey.shade200),
                        ),
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: ImageDownloadHelper.loadCachedNetworkImage(
                              p.pizza.coverImage,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(p.pizza.name),
                        ),
                      )),
                ],
              ),
            );
          } else if (state is OrdersLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is OrdersError) {
            return Center(child: Text('Errore: ${state.message}'));
          }
          return const Center(child: Text('Caricamento...'));
        },
      ),
    );
  }

  Widget _buildProgressIndicator(ColorScheme scheme) {
    final currentIndex = _selectedStatus?.index ?? 0;
    final steps = OrderStatus.values;

    return Row(
      children: steps.asMap().entries.map((entry) {
        final idx = entry.key;
        final step = entry.value;
        final isPast = idx < currentIndex;
        final isCurrent = idx == currentIndex;
        final isFuture = idx > currentIndex;
        final isClickable = idx >= currentIndex;

        Color bgColor;
        if (isPast) {
          bgColor = scheme.primary.withOpacity(0.5);
        } else if (isCurrent) {
          bgColor = scheme.secondary;
        } else {
          bgColor = Colors.grey.shade300;
        }

        return Expanded(
          child: GestureDetector(
            onTap: isClickable ? () => _confirmStatusChange(step) : null,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: bgColor,
                  child: Icon(
                    step == OrderStatus.pending
                        ? Icons.schedule
                        : step == OrderStatus.preparing
                            ? Icons.kitchen
                            : step == OrderStatus.delivered
                                ? Icons.delivery_dining
                                : Icons.check,
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

  Future<void> _confirmStatusChange(OrderStatus step) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Sei sicuro?'),
        content:
            Text('Una volta cambiato lo stato non potrai tornare indietro.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text('Annulla'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text('Conferma'),
          ),
        ],
      ),
    );

    if (result == true) {
      setState(() => _selectedStatus = step);
      // TODO: dispatch event to update order status via BLoC
    }
  }

  Widget _buildInfoCard({
    required String title,
    required String content,
    required IconData icon,
  }) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.black54),
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(content),
      ),
    );
  }

  Widget _buildImageCard(String url) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: ImageDownloadHelper.loadCachedNetworkImage(
          url,
          width: double.infinity,
          height: 180,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  void _showStatusBottomSheet(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Aggiorna stato ordine',
                style: Theme.of(ctx)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              ...OrderStatus.values.map((s) {
                return ListTile(
                  title: Text(s.label),
                  leading: Radio<OrderStatus>(
                    value: s,
                    groupValue: _selectedStatus,
                    onChanged: (val) {
                      setState(() => _selectedStatus = val);
                      Navigator.of(ctx).pop();
                    },
                  ),
                );
              }).toList(),
              const SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }
}
