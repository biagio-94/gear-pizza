import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/components/custom_input.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:gearpizza/common/utils/validator.dart';
import 'package:gearpizza/features/dashboard/models/pizza_dto.dart';
import 'package:gearpizza/features/profile/bloc/admin_page_bloc.dart';
import 'package:gearpizza/features/profile/bloc/admin_page_event.dart';
import 'package:gearpizza/features/profile/bloc/admin_page_state.dart';
import 'package:gearpizza/features/profile/components/update_pizza_card.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:device_info_plus/device_info_plus.dart';

class ManageMenuScreen extends StatefulWidget {
  final int restaurantId;
  const ManageMenuScreen({Key? key, required this.restaurantId})
      : super(key: key);

  @override
  State<ManageMenuScreen> createState() => _ManageMenuScreenState();
}

class _ManageMenuScreenState extends State<ManageMenuScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isCollapsed = false;
  late final FocusNode _nameFocus;
  final TextEditingController _nameController = TextEditingController();
  XFile? _pickedImage;

  static const double _appBarExpandedHeight = 200;
  static const double _collapseThreshold =
      _appBarExpandedHeight - kToolbarHeight;

  @override
  void initState() {
    super.initState();
    _nameFocus = FocusNode()..addListener(_onNameFocusChange);
    _scrollController.addListener(_onScroll);
    context.read<AdminPageBloc>().add(FetchAdminPageData(widget.restaurantId));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final state = context.read<AdminPageBloc>().state;
    if (state is AdminPageLoaded &&
        state.data.restaurant.coverImageUrl != null &&
        _pickedImage == null) {}
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _nameFocus.removeListener(_onNameFocusChange);
    _nameFocus.dispose();
    _nameController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final collapsed = _scrollController.offset > _collapseThreshold;
    if (collapsed != _isCollapsed) {
      setState(() => _isCollapsed = collapsed);
    }
  }

  void _onNameFocusChange() {
    if (!_nameFocus.hasFocus) {
      context.read<AdminPageBloc>().add(UpdateRestaurantname(
            restaurantName: _nameController.value.text.trim(),
            restaurantId: widget.restaurantId,
          ));
    }
  }

  Future<void> _pickImage(ImageSource src) async {
    // controlli permessi come prima...
    final sdk = Platform.isAndroid
        ? (await DeviceInfoPlugin().androidInfo).version.sdkInt
        : 0;
    final perm = src == ImageSource.camera
        ? Permission.camera
        : (Platform.isAndroid && sdk >= 33
            ? Permission.photos
            : Permission.storage);
    if (!await perm.isGranted && !await perm.request().isGranted) {
      return _showPermissionDeniedDialog(
          src == ImageSource.camera ? 'Fotocamera' : 'Galleria');
    }

    try {
      // ➤ UNA SOLA chiamata a pickImage
      final file = await ImagePicker().pickImage(source: src, maxWidth: 800);
      if (file == null) return; // utente ha annullato

      setState(() => _pickedImage = file);

      context.read<AdminPageBloc>().add(
            UpdateRestaurantImage(
              restaurantId: widget.restaurantId,
              xfile: file,
            ),
          );
    } catch (_) {
      _showCameraErrorDialog();
    }
  }

  void _showPermissionDeniedDialog(String feature) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('$feature non disponibile'),
        content: const Text('Abilita i permessi dalle impostazioni.'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Annulla')),
          TextButton(
              onPressed: openAppSettings, child: const Text('Impostazioni')),
        ],
      ),
    );
  }

  void _showCameraErrorDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Errore'),
        content: const Text('Errore selezione immagine.'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context), child: const Text('OK'))
        ],
      ),
    );
  }

  Future<void> _showImageSourceActionSheet() async {
    await showModalBottomSheet(
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
            title: const Text('Scegli dalla galleria'),
            onTap: () {
              Navigator.pop(context);
              _pickImage(ImageSource.gallery);
            },
          ),
        ]),
      ),
    );
  }

  void _editPizza(PizzaDto pizza) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Modifica pizza: ${pizza.name}')),
    );
  }

  void _deletePizza(PizzaDto pizza) {
    final theme = Theme.of(context);

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: theme.colorScheme.surface, // sfondo dialog
        title: Text(
          'Conferma eliminazione',
          style: TextStyle(
              color: theme.colorScheme.onSurface, fontWeight: FontWeight.w600),
        ),
        content: Text(
          'Eliminare "${pizza.name}"?',
          style: TextStyle(color: theme.colorScheme.onSurface),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(dialogContext); // poppa solo il dialog
            },
            child: Text(
              'Annulla',
              style: TextStyle(color: theme.colorScheme.primary),
            ),
          ),
          TextButton(
            onPressed: () {
              // Fire l’evento di delete
              context.read<AdminPageBloc>().add(DeletePizzaEvent(
                    restaurantId: widget.restaurantId,
                    pizzaId: pizza.id,
                  ));
              Navigator.pop(dialogContext); // chiude il dialog dopo il delete
            },
            child: Text(
              'Elimina',
              style: TextStyle(color: theme.colorScheme.error),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext c) {
    final theme = Theme.of(context);
    return BlocBuilder<AdminPageBloc, AdminPageState>(
      builder: (_, state) {
        if (state is AdminPageError) {
          return Scaffold(body: Center(child: Text(state.message)));
        }
        if (state is AdminPageLoaded) {
          final data = state.data;
          _nameController.text = data.restaurant.name;

          return Scaffold(
            body: CustomScrollView(
              controller: _scrollController,
              slivers: [
                // APP BAR
                SliverAppBar(
                  expandedHeight: _appBarExpandedHeight,
                  pinned: true,
                  backgroundColor: theme.colorScheme.primary,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: _isCollapsed
                        ? theme.colorScheme.onSurface
                        : Colors.white,
                    onPressed: () => Navigator.pop(context),
                  ),
                  centerTitle: true,
                  title: _isCollapsed
                      ? Text(_nameController.text,
                          style: TextStyle(
                              color: theme.colorScheme.onSurface,
                              fontWeight: FontWeight.w600))
                      : null,
                  actions: _isCollapsed
                      ? []
                      : [
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: CircleAvatar(
                              backgroundColor: theme.colorScheme.surface,
                              child: IconButton(
                                icon: const Icon(Icons.image,
                                    color: Colors.black),
                                onPressed: _showImageSourceActionSheet,
                              ),
                            ),
                          )
                        ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                      fit: StackFit.expand,
                      children: [
                        ImageDownloadHelper.loadCachedNetworkImage(
                          data.restaurant.coverImageUrl!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        )
                      ],
                    ),
                  ),
                ),

                // CONTENUTO
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
                    child: CustomTextInput(
                      labelText: 'Nome del ristorante',
                      focusNode: _nameFocus,
                      controller: _nameController,
                      enabled: true,
                      validator: (value) => validateName(value),
                    ),
                  ),
                ),

                SliverToBoxAdapter(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Lista pizze',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Material(
                          shape: const CircleBorder(),
                          color: Theme.of(context).colorScheme.primary,
                          child: IconButton(
                            icon: const Icon(Icons.add, color: Colors.white),
                            onPressed: () {
                              // TODO: apri dialog/route per aggiungere una nuova pizza
                            },
                            tooltip: 'Aggiungi pizza',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // PIZZE
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (_, i) {
                        final pizza = data.pizzas[i];
                        return UpdatePizzaCard(
                          pizza: pizza,
                          onEdit: () => _editPizza(pizza),
                          onDelete: () => _deletePizza(pizza),
                        );
                      },
                      childCount: data.pizzas.length,
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        // loading o stato iniziale
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
