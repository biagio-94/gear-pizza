import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_doc_scanner/flutter_doc_scanner.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/common/components/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gearpizza/common/components/custom_text_button.dart';
import 'package:gearpizza/common/styles/colors_schemes.dart';
import 'package:gearpizza/common/styles/font_sizes.dart';
import 'package:gearpizza/features/documents/bloc/documents_bloc.dart';
import 'package:gearpizza/features/documents/bloc/documents_event.dart';
import 'package:gearpizza/features/documents/bloc/documents_state.dart';
import 'package:permission_handler/permission_handler.dart';

class PhotoPreviewScreen extends StatelessWidget {
  final XFile imageFile;
  final bool isFront;

  const PhotoPreviewScreen({
    super.key,
    required this.imageFile,
    required this.isFront,
  });

  /// Richiama una nuova scansione documento
  Future<void> _rescanDocument(BuildContext context, bool isFront) async {
    try {
      // 1) Controllo e richiesta permessi
      final status = await Permission.camera.status;
      if (status.isDenied || status.isPermanentlyDenied) {
        final result = await Permission.camera.request();
        if (!result.isGranted) {
          if (result.isPermanentlyDenied) {
            await _showCameraErrorDialog(context);
          }
          return;
        }
      }

      // 2) Scan con FlutterDocScanner (una sola pagina)
      final scanned = await FlutterDocScanner().getScanDocuments(page: 1) ?? [];
      if (scanned is List && scanned.isNotEmpty) {
        final path = scanned.first.toString();
        final file = XFile(path);

        // 3) Torniamo su questa preview con la nuova immagine
        context.go(
          '/photo-preview',
          extra: {'image': file, 'isFront': isFront},
        );
      }
    } on PlatformException catch (e) {
      debugPrint('Rescan failed: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Errore durante la nuova scansione.')),
      );
    }
  }

  Future<void> _showCameraErrorDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Errore Fotocamera'),
        content: const Text(
            'Si è verificato un errore durante l\'inizializzazione della fotocamera.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _onSave(BuildContext context, XFile file) {
    final state = context.read<DocumentsBloc>().state;
    if (state is DocumentStepState) {
      context.read<DocumentsBloc>().add(
            UploadDocEvent(docImage: file, isFront: isFront),
          );

      context.go('/onboarding/uploadDoc');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Assicurati che la foto sia ben visibile',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.lightOnSurface,
                  fontSize: AppFontSizes.bodyTextLarge,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.file(
                  File(imageFile.path),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton(
                label: 'Salva',
                type: ButtonType.blueFilled,
                width: WideButton.extraWide,
                onPressed: () => _onSave(context, imageFile),
              ),
              const SizedBox(height: 16),
              CustomTextButton(
                label: 'Esegui nuova scansione',
                onPressed: () => _rescanDocument(context, isFront),
                underlined: true,
                fontWeight: AppFontSizes.medium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
