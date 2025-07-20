import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/services/firestore_service.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:gearpizza/features/profile/bloc/orders_bloc.dart';
import 'package:gearpizza/features/profile/bloc/orders_event.dart';
import 'package:gearpizza/features/profile/bloc/orders_state.dart';
import 'package:gearpizza/features/profile/components/order_info_card.dart';
import 'package:gearpizza/features/profile/components/order_status_stepper.dart';
import 'package:get_it/get_it.dart';

/// Schermata dettaglio ordine
class OrderDetailScreen extends StatefulWidget {
  final String orderId;

  const OrderDetailScreen({Key? key, required this.orderId}) : super(key: key);

  @override
  _OrderDetailScreenState createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  late final int _orderId;
  OrderStatus? _status;
  String? helpImagePath;

  @override
  void initState() {
    super.initState();
    _orderId = int.tryParse(widget.orderId) ?? -1;
    _fetchHelpImage();
  }

  Future<void> _fetchHelpImage() async {
    final imageUrl = await GetIt.instance<FirebaseStorageService>()
        .fetchOrderImageUrlFromFirebase(widget.orderId);

    if (imageUrl != null) {
      setState(() {
        helpImagePath = imageUrl;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: BackButton(color: Colors.black87),
        title: Text('Dettaglio Ordine #${widget.orderId}',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Colors.black87)),
      ),
      body: BlocConsumer<OrdersBloc, OrdersState>(
        listener: (context, state) {
          if (state is OrdersError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Errore: ${state.message}')),
            );
          }
        },
        builder: (context, state) {
          if (state is OrdersLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is OrdersLoaded) {
            final order = state.orders.firstWhere((o) => o.id == _orderId);

            _status ??= OrderStatus.fromString(order.status);

            // Applica l'immagine solo se è stata fetchata e l'ordine non la contiene già
            final imageToUse = order.helpingImage ?? helpImagePath;

            return _buildContent(order, imageToUse);
          }
          return const Center(child: Text('Caricamento...'));
        },
      ),
    );
  }

  Widget _buildContent(order, String? imageToUse) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          OrderStatusStepper(status: _status!, onStatusTap: _onStatusTap),
          const SizedBox(height: 24),
          InfoCard(
            title: 'Indirizzo',
            content: order.address,
            icon: Icons.location_on_outlined,
          ),
          const SizedBox(height: 16),
          InfoCard(
            title: 'Cliente',
            content: '${order.customer.name}\n${order.customer.emailAddress}',
            icon: Icons.person_outline,
          ),
          const SizedBox(height: 16),
          Text(
            'Pizze ordinate',
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ...order.pizzas.map((p) => Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: Colors.grey.shade200),
                ),
                elevation: 0,
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
          const SizedBox(height: 8),
          if (imageToUse != null)
            Text(
              'Dettagli aggiuntivi',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          if (imageToUse != null) ...[
            const SizedBox(height: 16),
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  imageToUse,
                  height: 180,
                  fit: BoxFit.cover,
                )),
          ],
        ],
      ),
    );
  }

  void _onStatusTap(OrderStatus step) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Sei sicuro?'),
        content: const Text(
            'Una volta cambiato lo stato non potrai tornare indietro.'),
        actions: [
          TextButton(
              onPressed: () => Navigator.of(ctx).pop(false),
              child: const Text('Annulla')),
          ElevatedButton(
              onPressed: () => Navigator.of(ctx).pop(true),
              child: const Text('Conferma')),
        ],
      ),
    );
    if (confirm == true) {
      setState(() => _status = step);
      context.read<OrdersBloc>().add(UpdateOrderStatusEvent(
          orderId: widget.orderId, newStatus: step.name));
    }
  }
}
