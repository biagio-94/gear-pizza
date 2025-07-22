import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/components/custom_input.dart';
import 'package:gearpizza/common/components/custom_text_area.dart';
import 'package:gearpizza/common/services/firestore_service.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:gearpizza/features/dashboard/models/alergen_dto.dart';
import 'package:gearpizza/features/profile/bloc/admin_page_bloc.dart';
import 'package:gearpizza/features/profile/bloc/admin_page_event.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class CreateUpdatePizzaScreen extends StatefulWidget {
  final PizzaDto? initial;
  final int restaurantId;
  final List<AllergenDto> allAllergens;

  const CreateUpdatePizzaScreen({
    Key? key,
    this.initial,
    required this.restaurantId,
    required this.allAllergens,
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
  late final Future<String> _imageUrlFuture;

  @override
  void initState() {
    super.initState();
    // inizializza campi e allergeni
    if (widget.initial != null) {
      _selectedAllergens.addAll(widget.initial!.allergens);
    }
    _nameCtrl = TextEditingController(text: widget.initial?.name ?? '');
    _descCtrl = TextEditingController(text: widget.initial?.description ?? '');
    // fetch condizionale immagine
    _imageUrlFuture =
        _fetchImage(widget.initial?.id, widget.initial?.coverImageUrl ?? '');
  }

  Future<String> _fetchImage(int? pizzaId, String fallbackUrl) async {
    if (pizzaId != null && pizzaId > 0) {
      try {
        final url = await GetIt.instance<FirebaseStorageService>()
            .fetchPizzaImageUrlFromFirebase(pizzaId.toString());
        if (url != null && url.isNotEmpty) return url;
      } catch (_) {}
    }
    return fallbackUrl;
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
    context.pop();
  }

  static const Map<String, IconData> _allergenIcons = {
    'Gluten': Icons.grain,
    'Lactose': Icons.local_cafe,
    'Peanuts': Icons.spa,
    'Soy': Icons.spa,
    'Egg': Icons.egg,
    'Fish': Icons.set_meal,
    'Shellfish': Icons.shield,
    'Tomato': Icons.local_florist,
    'Milk': Icons.local_drink,
    'Wheat': Icons.emoji_food_beverage,
    'Yeast': Icons.grass,
    'All': Icons.select_all,
  };

  IconData _iconForAllergen(AllergenDto allergen, bool isSelected) {
    return _allergenIcons[allergen.name] ?? Icons.label;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.initial?.name ?? "Inserisci una pizza"),
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
                const SizedBox(height: 8),
                Text(
                  widget.initial?.name != null
                      ? 'Modifica la tua pizza'
                      : "Crea la tua ",
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Inserisci un nome, descrizione, inserisci eventuali allergeni ed un\'immagine del prodotto.',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 16),
                CustomTextInput(
                  labelText: 'Nome Pizza',
                  controller: _nameCtrl,
                  validator: (v) =>
                      v == null || v.trim().isEmpty ? 'Obbligatorio' : null,
                ),
                const SizedBox(height: 16),
                CustomTextArea(
                  labelText: "Descrizione",
                  controller: _descCtrl,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Inserisci una descrizione";
                    return null;
                  },
                  minLines: 4,
                  maxLines: 8,
                ),
                const SizedBox(height: 16),
                Text('Allergeni', style: theme.textTheme.titleMedium),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      // "Tutti"
                      Builder(builder: (context) {
                        final allSelected = _selectedAllergens.length ==
                            widget.allAllergens.length;
                        return Material(
                          color: allSelected
                              ? theme.colorScheme.primary
                              : theme.colorScheme.surface,
                          borderRadius: BorderRadius.circular(32),
                          elevation: allSelected ? 4 : 1,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(32),
                            onTap: () => setState(() {
                              if (allSelected)
                                _selectedAllergens.clear();
                              else {
                                _selectedAllergens.clear();
                                _selectedAllergens.addAll(widget.allAllergens);
                              }
                            }),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 8),
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.check_box,
                                        size: 20,
                                        color: allSelected
                                            ? theme.colorScheme.onPrimary
                                            : theme.colorScheme.primary),
                                    const SizedBox(width: 6),
                                    Text('Tutti',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: allSelected
                                                ? theme.colorScheme.onPrimary
                                                : theme.colorScheme.onSurface)),
                                  ]),
                            ),
                          ),
                        );
                      }),
                      ...widget.allAllergens.map((allergen) {
                        final isSelected =
                            _selectedAllergens.contains(allergen);
                        return Material(
                          color: isSelected
                              ? theme.colorScheme.primary
                              : theme.colorScheme.surface,
                          borderRadius: BorderRadius.circular(32),
                          elevation: isSelected ? 4 : 1,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(32),
                            onTap: () => setState(() {
                              if (!_selectedAllergens.remove(allergen))
                                _selectedAllergens.add(allergen);
                            }),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 8),
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(_iconForAllergen(allergen, isSelected),
                                        size: 20,
                                        color: isSelected
                                            ? theme.colorScheme.onPrimary
                                            : theme.colorScheme.primary),
                                    const SizedBox(width: 6),
                                    Text(allergen.name,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: isSelected
                                                ? theme.colorScheme.onPrimary
                                                : theme.colorScheme.onSurface)),
                                  ]),
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Text('Immagine', style: theme.textTheme.titleMedium),
                const SizedBox(height: 8),
                if (_pickedImage != null)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.file(File(_pickedImage!.path),
                        height: 150, fit: BoxFit.cover),
                  )
                else
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      color: Colors.grey[200],
                      child: FutureBuilder<String>(
                        future: _imageUrlFuture,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting)
                            return const Center(
                                child: CircularProgressIndicator());
                          final url = snapshot.data;
                          if (url != null && url.isNotEmpty) {
                            return ImageDownloadHelper.loadCachedNetworkImage(
                                url,
                                fit: BoxFit.cover,
                                width: double.infinity);
                          }
                          return const Center(child: Text('Nessuna immagine'));
                        },
                      ),
                    ),
                  ),
                TextButton.icon(
                    onPressed: _showImagePicker,
                    icon: const Icon(Icons.image_outlined),
                    label: const Text('Seleziona immagine')),
                const SizedBox(height: 24),
                ElevatedButton(
                    onPressed: _onSubmit, child: const Text('Salva')),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
