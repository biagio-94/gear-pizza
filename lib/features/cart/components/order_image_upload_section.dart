import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class OrderImageUploadSection extends StatelessWidget {
  final XFile? image;
  final VoidCallback onUploadTap;

  const OrderImageUploadSection({
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
