import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';
import 'package:gearpizza/features/profile/bloc/admin_page_bloc.dart';
import 'package:gearpizza/features/profile/bloc/admin_page_event.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:go_router/go_router.dart';

class CreateUpdatePizzaScreen extends StatefulWidget {
  final PizzaDto? initial;
  final int restaurantId;

  const CreateUpdatePizzaScreen({
    Key? key,
    this.initial,
    required this.restaurantId,
  }) : super(key: key);

  @override
  State<CreateUpdatePizzaScreen> createState() =>
      _CreateUpdatePizzaScreenState();
}

class _CreateUpdatePizzaScreenState extends State<CreateUpdatePizzaScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameCtrl;
  late final TextEditingController _descCtrl;
  XFile? _pickedImage;
  final Set<AllergenDto> _selectedAllergens = {};

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.initial?.name ?? '');
    _descCtrl = TextEditingController(text: widget.initial?.description ?? '');
    if (widget.initial?.allergens != null) {
      _selectedAllergens.addAll(widget.initial!.allergens);
    }
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _descCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickImage(ImageSource source) async {
    final sdk = Platform.isAndroid
        ? (await DeviceInfoPlugin().androidInfo).version.sdkInt
        : 0;
    final perm = source == ImageSource.camera
        ? Permission.camera
        : (Platform.isAndroid && sdk >= 33
            ? Permission.photos
            : Permission.storage);

    if (!await perm.isGranted && !await perm.request().isGranted) return;

    final file = await ImagePicker().pickImage(source: source, maxWidth: 800);
    if (file != null) setState(() => _pickedImage = file);
  }

  void _showImagePicker() => showModalBottomSheet(
        context: context,
        builder: (_) => SafeArea(
          child: Wrap(children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Scatta foto'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.camera);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Galleria'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.gallery);
              },
            ),
          ]),
        ),
      );

  void _onSubmit() {
    if (!_formKey.currentState!.validate()) return;

    final dto = PizzaDto(
      id: widget.initial?.id ?? 0,
      name: _nameCtrl.text.trim(),
      description: _descCtrl.text.trim(),
      allergens: _selectedAllergens.toList(),
      coverImageUrl: widget.initial?.coverImageUrl,
      price: widget.initial?.price ?? 0,
      restaurantId: widget.restaurantId,
    );

    context
        .read<AdminPageBloc>()
        .add(SaveProductEvent(pizza: dto, xfile: _pickedImage));
    context.pop(); // Chiude lo screen dopo l'invio
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.initial == null ? 'Nuova Pizza' : 'Modifica Pizza'),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Nome Pizza
                TextFormField(
                  controller: _nameCtrl,
                  decoration: const InputDecoration(labelText: 'Nome Pizza'),
                  validator: (v) =>
                      v == null || v.trim().isEmpty ? 'Obbligatorio' : null,
                ),
                const SizedBox(height: 16),

                // Descrizione
                TextFormField(
                  controller: _descCtrl,
                  decoration: const InputDecoration(labelText: 'Descrizione'),
                  maxLines: 3,
                ),
                const SizedBox(height: 16),

                // Allergeni
                Text('Allergeni', style: theme.textTheme.titleMedium),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: (widget.initial?.allergens ?? const [])
                      .map(
                        (al) => ChoiceChip(
                          label: Text(al.name),
                          selected: _selectedAllergens.contains(al),
                          onSelected: (_) {
                            setState(() {
                              _selectedAllergens.contains(al)
                                  ? _selectedAllergens.remove(al)
                                  : _selectedAllergens.add(al);
                            });
                          },
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 16),

                // Immagine
                Text('Immagine', style: theme.textTheme.titleMedium),
                const SizedBox(height: 8),
                if (_pickedImage != null)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.file(
                      File(_pickedImage!.path),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                OutlinedButton.icon(
                  icon: const Icon(Icons.image),
                  label: Text(
                      widget.initial == null ? 'Carica Foto' : 'Cambia Foto'),
                  onPressed: _showImagePicker,
                ),

                const SizedBox(height: 24),

                // Pulsante invio
                if (!keyboardOpen)
                  ElevatedButton(
                    onPressed: _onSubmit,
                    child: Text(widget.initial == null ? 'Crea' : 'Aggiorna'),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
