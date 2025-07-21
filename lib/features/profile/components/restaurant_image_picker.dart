import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gearpizza/common/utils/image_download_helper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:device_info_plus/device_info_plus.dart';

class RestaurantImagePicker extends StatelessWidget {
  final dynamic data;
  final bool isCollapsed;
  final double expandedHeight;
  final ValueChanged<XFile> onImageChanged;

  const RestaurantImagePicker({
    Key? key,
    required this.data,
    required this.isCollapsed,
    required this.expandedHeight,
    required this.onImageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      expandedHeight: expandedHeight,
      pinned: true,
      backgroundColor: theme.colorScheme.primary,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: isCollapsed ? theme.colorScheme.onSurface : Colors.white,
        onPressed: () => Navigator.pop(context),
      ),
      centerTitle: true,
      title: isCollapsed ? Text(data.restaurant.name) : null,
      actions: isCollapsed ? [] : [_buildImageButton(context)],
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
    );
  }

  Widget _buildImageButton(BuildContext context) => Padding(
        padding: const EdgeInsets.only(right: 12),
        child: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.surface,
          child: IconButton(
            icon: const Icon(Icons.image, color: Colors.black),
            onPressed: () => _showImageSourceActionSheet(context),
          ),
        ),
      );

  Future<void> _showImageSourceActionSheet(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      builder: (_) => SafeArea(
        child: Wrap(children: [
          ListTile(
            leading: const Icon(Icons.camera_alt),
            title: const Text('Scatta foto'),
            onTap: () {
              Navigator.pop(context);
              _pickImage(context, ImageSource.camera);
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text('Scegli dalla galleria'),
            onTap: () {
              Navigator.pop(context);
              _pickImage(context, ImageSource.gallery);
            },
          ),
        ]),
      ),
    );
  }

  Future<void> _pickImage(BuildContext context, ImageSource src) async {
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
          context, src == ImageSource.camera ? 'Fotocamera' : 'Galleria');
    }

    try {
      final file = await ImagePicker().pickImage(source: src, maxWidth: 800);
      if (file == null) return;
      onImageChanged(file);
    } catch (_) {
      _showErrorDialog(context);
    }
  }

  void _showPermissionDeniedDialog(BuildContext context, String feature) {
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

  void _showErrorDialog(BuildContext context) {
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
}
