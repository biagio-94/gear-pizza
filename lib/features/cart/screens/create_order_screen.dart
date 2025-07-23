import 'dart:async';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/cart/bloc/cart_bloc.dart';
import 'package:gearpizza/features/cart/bloc/cart_event.dart';
import 'package:gearpizza/features/cart/bloc/cart_state.dart';
import 'package:gearpizza/features/cart/components/order_confirm_button.dart';
import 'package:gearpizza/features/cart/components/order_form_section.dart';
import 'package:gearpizza/features/cart/components/order_image_upload_section.dart';
import 'package:gearpizza/features/cart/model/card_item_dto.dart';
import 'package:gearpizza/features/cart/model/customer_dto.dart';
import 'package:gearpizza/features/cart/model/order_dto.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart';

class CreateorderScreen extends StatefulWidget {
  const CreateorderScreen({Key? key}) : super(key: key);

  @override
  _CreateorderScreenState createState() => _CreateorderScreenState();
}

class _CreateorderScreenState extends State<CreateorderScreen>
    with WidgetsBindingObserver {
  final _formKey = GlobalKey<FormState>();
  final _addressController = TextEditingController();
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();

  XFile? _pickedImage;
  bool _canConfirm = false;
  bool _keyboardVisible = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    // Listen to address changes to update button state
    _addressController.addListener(_updateConfirmButtonState);
    _emailController.addListener(_updateConfirmButtonState);
    _nameController.addListener(_updateConfirmButtonState);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _addressController.removeListener(_updateConfirmButtonState);
    _emailController.removeListener(_updateConfirmButtonState);
    _nameController.removeListener(_updateConfirmButtonState);
    _nameController.dispose();
    _emailController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final bottomInset = WidgetsBinding
        .instance.platformDispatcher.views.first.viewInsets.bottom;
    final isVisible = bottomInset > 0.0;
    if (isVisible != _keyboardVisible) {
      setState(() {
        _keyboardVisible = isVisible;
      });
    }
  }

  void _updateConfirmButtonState() {
    final isAddressValid = _addressController.text.trim().isNotEmpty;

    final email = _emailController.text.trim();
    final isEmailValid =
        RegExp(r"^[\w\.-]+@[\w\.-]+\.\w{2,4}$").hasMatch(email);

    final name = _nameController.text.trim();
    final isNameValid = RegExp(r"^[A-Za-zÀ-ÿ\s'-]{2,50}$").hasMatch(name);

    setState(() {
      _canConfirm = isAddressValid && isEmailValid && isNameValid;
    });
  }

  Future<void> _showImageSourceActionSheet() async {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Scatta foto'),
              onTap: () {
                Navigator.of(context).pop();
                _pickImage(ImageSource.camera);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Scegli dalla galleria'),
              onTap: () {
                Navigator.of(context).pop();
                _pickImage(ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<int> _androidSdkInt() async {
    if (!Platform.isAndroid) return 0;
    final info = await DeviceInfoPlugin().androidInfo;
    return info.version.sdkInt;
  }

  Future<void> _pickImage(ImageSource source) async {
    // Gestione permessi
    if (source == ImageSource.camera) {
      final status = await Permission.camera.status;
      if (status.isDenied || status.isPermanentlyDenied) {
        final result = await Permission.camera.request();
        if (!result.isGranted) {
          if (result.isPermanentlyDenied) {
            if (!context.mounted) return;
            _showPermissionDeniedDialog('Fotocamera');
          }
          return;
        }
      }
    } else {
      final sdk = await _androidSdkInt();
      if (Platform.isAndroid && sdk >= 33) {
        final status = await Permission.photos.status;
        if (status.isDenied || status.isPermanentlyDenied) {
          final result = await Permission.photos.request();
          if (!result.isGranted) {
            if (result.isPermanentlyDenied) {
              if (!context.mounted) return;
              _showPermissionDeniedDialog('Galleria');
            }
            return;
          }
        }
      } else {
        final status = await Permission.storage.status;
        if (status.isDenied || status.isPermanentlyDenied) {
          final result = await Permission.storage.request();
          if (!result.isGranted) {
            if (result.isPermanentlyDenied) {
              if (!context.mounted) return;
              _showPermissionDeniedDialog('Galleria');
            }
            return;
          }
        }
      }
    }

    final picker = ImagePicker();
    try {
      final picked = await picker.pickImage(source: source, maxWidth: 800);
      if (picked != null) {
        setState(() {
          _pickedImage = picked;
        });
      }
    } catch (e) {
      debugPrint('Errore nel picking immagine: $e');
      _showCameraErrorDialog();
    }
  }

  void _showPermissionDeniedDialog(String feature) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('$feature non disponibile'),
        content: Text(
            'Per utilizzare $feature, abilita i permessi nelle impostazioni.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('Annulla'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.of(ctx).pop();
              await openAppSettings();
            },
            child: const Text('Impostazioni'),
          ),
        ],
      ),
    );
  }

  void _showCameraErrorDialog() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Errore'),
        content: const Text(
            'Si è verificato un errore durante l\'acquisizione dell\'immagine.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _submitOrder(
      {required List<CartItemDto> cartItems, required int restaurantId}) {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    final address = _addressController.text.trim();

    final customerDto = CustomerDto(
      id: null,
      restaurantId: restaurantId,
      name: _nameController.text.trim(),
      emailAddress: _emailController.text.trim().toLowerCase(),
    );

    final orderDto = OrderDto(
      status: 'pending',
      restaurantId: restaurantId,
      customerId: customerDto.id ?? 0,
      address: address,
      helpingImage: _pickedImage?.path,
      pizzaIds: cartItems.map((i) => i.pizza.id).toList(),
    );

    context.read<CartBloc>().add(
          CompleteOrder(
            customerInfo: customerDto,
            orderInfo: orderDto,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocListener<CartBloc, CartState>(
      listener: (context, state) {
        if (state is CartSuccessState) {
          context.go('/cart/checkout/result');
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => context.pop(),
            color: theme.colorScheme.onSurface,
          ),
          title: const Text('Checkout'),
          centerTitle: true,
          backgroundColor: theme.colorScheme.surface,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height -
                  kToolbarHeight -
                  MediaQuery.of(context).padding.top,
            ),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  OrderFormSection(
                    formKey: _formKey,
                    addressController: _addressController,
                    emailController: _emailController,
                    nameController: _nameController,
                  ),
                  const SizedBox(height: 24),
                  OrderImageUploadSection(
                    image: _pickedImage,
                    onUploadTap: _showImageSourceActionSheet,
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: _keyboardVisible
            ? null
            : BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  final isLoaded = state is CartLoadedState;
                  return OrderConfirmButton(
                    enabled: _canConfirm && isLoaded,
                    onPressed: isLoaded
                        ? () => _submitOrder(
                              cartItems: state.items,
                              restaurantId: state.restaurant.id,
                            )
                        : () {},
                  );
                },
              ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
