import 'dart:async';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/cart/bloc/cart_bloc.dart';
import 'package:gearpizza/features/cart/bloc/cart_event.dart';
import 'package:gearpizza/features/cart/components/address_autocomplete_input.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final _formKey = GlobalKey<FormState>();
  final _addressController = TextEditingController();
  XFile? _pickedImage;
  bool _canConfirm = false;

  @override
  void initState() {
    super.initState();
    // Listen to address changes to update button state
    _addressController.addListener(_updateConfirmButtonState);
  }

  @override
  void dispose() {
    _addressController.removeListener(_updateConfirmButtonState);
    _addressController.dispose();
    super.dispose();
  }

  // Aggiorna lo stato del pulsante di conferma
  void _updateConfirmButtonState() {
    final isAddressValid = _addressController.text.trim().isNotEmpty;
    setState(() {
      _canConfirm = isAddressValid;
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
        // Se vuoi aggiungere la foto come requisito, aggiorna lo stato qui:
        //_updateConfirmButtonState();
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

  void _submitOrder() {
    if (_formKey.currentState?.validate() ?? false) {
      final address = _addressController.text.trim();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Ordine in corso per: \$address')),
      );
      // Gestisci _pickedImage se necessario
      context.read<CartBloc>().add(ClearCartEvent());
      if (context.mounted) context.go('/dashboard');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
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
                AddressSection(
                  formKey: _formKey,
                  controller: _addressController,
                ),
                const SizedBox(height: 24),
                ImagePickerSection(
                  image: _pickedImage,
                  onUploadTap: _showImageSourceActionSheet,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: ConfirmOrderButton(
        enabled: _canConfirm,
        onPressed: _submitOrder,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class AddressSection extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController controller;

  const AddressSection({
    Key? key,
    required this.formKey,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Dove desideri la consegna?', style: theme.textTheme.titleMedium),
        const SizedBox(height: 4),
        Text(
          'Digita via, numero civico, CAP e città per una consegna puntuale',
          style: theme.textTheme.bodySmall,
        ),
        const SizedBox(height: 16),
        Form(
          key: formKey,
          child: AddressAutocompleteInput(controller: controller),
        ),
      ],
    );
  }
}

class ImagePickerSection extends StatelessWidget {
  final XFile? image;
  final VoidCallback onUploadTap;

  const ImagePickerSection({
    Key? key,
    required this.image,
    required this.onUploadTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Vuoi aggiungere una foto (opzionale)?',
            style: theme.textTheme.titleMedium),
        const SizedBox(height: 8),
        if (image != null)
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.file(
              File(image!.path),
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        OutlinedButton.icon(
          onPressed: onUploadTap,
          icon: Icon(Icons.camera_alt, color: theme.colorScheme.secondary),
          label: Text(
            'Carica foto',
            style: TextStyle(color: theme.colorScheme.secondary),
          ),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: theme.colorScheme.secondary),
          ),
        ),
      ],
    );
  }
}

class ConfirmOrderButton extends StatelessWidget {
  final bool enabled;
  final VoidCallback onPressed;

  const ConfirmOrderButton({
    Key? key,
    required this.enabled,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 56,
      child: Opacity(
        opacity: enabled ? 1.0 : 0.5,
        child: FloatingActionButton.extended(
          onPressed: enabled ? onPressed : null,
          backgroundColor: theme.colorScheme.secondary,
          foregroundColor: theme.colorScheme.onSecondary,
          elevation: enabled ? 6 : 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          label: Center(
            child: Text(
              'Conferma ordine',
              style: theme.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
