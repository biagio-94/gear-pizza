import 'dart:io';
import 'dart:ui';
import 'package:camera/camera.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_doc_scanner/flutter_doc_scanner.dart';
import 'package:go_router/go_router.dart';
import 'package:gearpizza/common/bloc/exception_bloc.dart';
import 'package:gearpizza/common/bloc/exception_state.dart';
import 'package:gearpizza/common/bloc/loading_bloc.dart';
import 'package:gearpizza/common/bloc/loading_state.dart';
import 'package:gearpizza/common/components/loading/loading_screen.dart';
import 'package:gearpizza/common/utils/show_error_dialog.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:gearpizza/common/components/custom_button.dart';
import 'package:gearpizza/common/styles/colors_schemes.dart';
import 'package:gearpizza/common/styles/font_sizes.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
import 'package:gearpizza/features/documents/bloc/documents_bloc.dart';
import 'package:gearpizza/features/documents/bloc/documents_event.dart';
import 'package:gearpizza/features/documents/bloc/documents_state.dart';
import 'package:gearpizza/src/generated/l10n/app_localizations.dart';

class UploadPhotoScreen extends StatefulWidget {
  const UploadPhotoScreen({Key? key}) : super(key: key);

  @override
  State<UploadPhotoScreen> createState() => _UploadPhotoScreenState();
}

class _UploadPhotoScreenState extends State<UploadPhotoScreen>
    with SingleTickerProviderStateMixin {
  List<String> selectedFileNames = [];
  late final AnimationController _stepController;

  @override
  void initState() {
    super.initState();
    _stepController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
  }

  @override
  void dispose() {
    _stepController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LoadingBloc, LoadingState>(
          listener: (_, state) {
            if (state.status == LoadingStatus.loading) {
              LoadingScreen().show(
                context: context,
                text: state.loadingText ?? 'Attendi un attimo...',
                showLogoAnimation: false,
              );
            } else {
              LoadingScreen().hide();
            }
          },
        ),
        BlocListener<ExceptionBloc, ExceptionState>(
          listener: (_, state) {
            if (state.message.isNotEmpty) {
              showErrorDialog(context, state.message);
            }
          },
        ),
        BlocListener<DocumentsBloc, DocumentsState>(
          listener: (context, state) {
            if (!mounted) return;
            if (state is DocumentStepState) {
              _stepController.forward(from: 0);
            }
            if (state is IdCardFormState) context.push('/idCardForm');
            if (state is TesseraSanitariaFormState)
              context.push('/tesseraSanitariaForm');
            if (state is BustaPagaFormState) context.push('/bustaPagaForm');
            if (state is DocUploadEndState) {
              setState(() => selectedFileNames.clear());
              context.go('/end', extra: {'idPreventivo': state.uuid});
            }
          },
        ),
      ],
      child: BlocBuilder<DocumentsBloc, DocumentsState>(
        builder: (context, state) {
          if (state is DocumentStepState) {
            return Scaffold(
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  _buildStepIndicator(context, state.step),
                  const SizedBox(height: 16),
                  Expanded(
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 400),
                      transitionBuilder: (child, animation) {
                        final offsetAnim = Tween<Offset>(
                          begin: const Offset(1, 0),
                          end: Offset.zero,
                        ).animate(animation);
                        return SlideTransition(
                            position: offsetAnim, child: child);
                      },
                      child: _buildContentForStep(state),
                    ),
                  ),
                ],
              ),
            );
          }
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  Widget _buildStepIndicator(BuildContext context, int currentStep) {
    const totalSteps = 3;
    final cs = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme.headlineSmall;

    // Colori sensati per sfondo scuro
    final filledColor = cs.onPrimary;
    final unfilledBorder = cs.onSurface.withOpacity(0.5);
    final lineFilled = cs.onPrimary;
    final lineUnfilled = cs.onPrimary.withOpacity(0.3);

    // Mappa step→label
    const labels = ['Identità', 'Tessera', 'Certificazioni'];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // label dello step corrente
          Center(
            child: Text(
              labels[currentStep - 1],
              style: textStyle?.copyWith(
                fontWeight: FontWeight.w600,
                color: cs.onPrimary,
              ),
            ),
          ),

          const SizedBox(height: 12),

          // riga di dots + barre
          Row(
            children: List.generate(totalSteps * 2 - 1, (idx) {
              // barre tra i cerchi (posizioni dispari)
              if (idx.isOdd) {
                final barIndex = idx ~/ 2 + 1;
                final isFilled = barIndex < currentStep;
                return Expanded(
                  child: Container(
                    height: 4,
                    decoration: BoxDecoration(
                      color: lineUnfilled,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: AnimatedFractionallySizedBox(
                      duration: const Duration(milliseconds: 300),
                      alignment: Alignment.centerLeft,
                      widthFactor: isFilled ? 1.0 : 0.0,
                      child: Container(
                        height: 4,
                        decoration: BoxDecoration(
                          color: lineFilled,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                  ),
                );
              }

              // cerchi (posizioni pari)
              final stepIndex = idx ~/ 2 + 1;
              final isDone = stepIndex < currentStep;
              final isActive = stepIndex == currentStep;

              return Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: isActive ? 28 : 24,
                  height: isActive ? 28 : 24,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        isDone || isActive ? filledColor : Colors.transparent,
                    border: Border.all(
                      color: isDone || isActive ? filledColor : unfilledBorder,
                      width: 2,
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildContentForStep(DocumentStepState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(_getHeaderDocMessage(state),
            textAlign: TextAlign.center,
            style: AppTextStyles.descriptionPageStyle),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: state.step != 3
              ? Row(children: [
                  Expanded(
                      child: _buildGlassCard(context, state, false, true,
                          'FRONTE', state.idCardFronte ?? state.tesseraFronte)),
                  const SizedBox(width: 16),
                  Expanded(
                      child: _buildGlassCard(context, state, false, false,
                          'RETRO', state.idCardRetro ?? state.tesseraRetro)),
                ])
              : _buildGlassCard(
                  context,
                  state,
                  true,
                  false,
                  '',
                  state.bustaPaga != null && state.bustaPaga!.isNotEmpty
                      ? state.bustaPaga!.first
                      : null),
        ),
        if (selectedFileNames.isNotEmpty)
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: selectedFileNames
                  .map((f) => Row(children: [
                        const Icon(Icons.check_circle,
                            color: Colors.green, size: 20),
                        const SizedBox(width: 8),
                        Flexible(
                            child: Text(f,
                                style: const TextStyle(
                                    fontSize: AppFontSizes.bodyTextSmall,
                                    color: AppColors.lightBackground)))
                      ]))
                  .toList(),
            ),
          ),
        _buildContinueButton(context, state),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildGlassCard(BuildContext ctx, DocumentStepState state,
      bool isBusta, bool isFront, String label, XFile? preview) {
    final uploaded = isBusta
        ? (state.bustaPaga != null && state.bustaPaga!.isNotEmpty)
        : (isFront
            ? (state.idCardFronte != null || state.tesseraFronte != null)
            : (state.idCardRetro != null || state.tesseraRetro != null));
    return _GlassCard(
      onTap: () =>
          _onCardTap(ctx, isBustaPaga: isBusta, isFront: isFront, state: state),
      label: label,
      isUploaded: uploaded,
      previewImage: preview,
      isBustaPaga: isBusta,
    );
  }

  void _onCardTap(BuildContext context,
      {required bool isBustaPaga,
      required bool isFront,
      required DocumentStepState state}) async {
    if (isBustaPaga) {
      if (state.bustaPaga != null && state.bustaPaga!.isNotEmpty)
        _showRemoveBustaPagaDialog(context);
      else
        await _showBustaPagaChoiceDialog(context);
    } else {
      if ((isFront &&
              (state.idCardFronte != null || state.tesseraFronte != null)) ||
          (!isFront &&
              (state.idCardRetro != null || state.tesseraRetro != null)))
        _showRemoveImageDialog(context, isFront, isBustaPaga);
      else
        await _handleCameraNavigation(context, isFront);
    }
  }

  String _getHeaderDocMessage(DocumentStepState s) {
    switch (s.step) {
      case 1:
        return 'Per il miglior riconoscimento automatico\n'
            'ti consigliamo di usare la Carta d’Identità Elettronica (CIE)';
      case 2:
        return 'Scatta le foto al fronte e al retro della tua tessera sanitaria.';
      case 3:
        return 'Carica la tua busta paga.';
      default:
        return 'Carica i tuoi documenti richiesti.';
    }
  }

  // Original utility functions unchanged below...
  void _showRemoveBustaPagaDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text('Rimuovi file'),
            content: const Text('Vuoi rimuovere la busta paga?'),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      BlocProvider.of<DocumentsBloc>(context).add(ClearDocEvent(
                          step: 3, isFront: false, isBustaPaga: true));
                      selectedFileNames.clear();
                    });
                    Navigator.pop(ctx);
                  },
                  child: const Text('Rimuovi')),
              TextButton(
                  onPressed: () => Navigator.pop(ctx),
                  child: const Text('Annulla'))
            ],
          );
        });
  }

  Future<void> _showBustaPagaChoiceDialog(BuildContext context) async {
    final res = await showDialog<String>(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text('Seleziona opzione'),
            content: const Text(
                'Vuoi scattare una foto o selezionare un documento?'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(ctx, 'photo'),
                  child: const Text('Scatta foto')),
              TextButton(
                  onPressed: () => Navigator.pop(ctx, 'file'),
                  child: const Text('Seleziona documento'))
            ],
          );
        });
    if (!context.mounted) return;
    if (res == 'photo')
      await _capturePhoto(context);
    else if (res == 'file') await _pickPdf(context);
  }

  Future<void> _capturePhoto(BuildContext context) async {
    final photo = await ImagePicker().pickImage(
        source: ImageSource.camera, preferredCameraDevice: CameraDevice.rear);
    if (!context.mounted) return;
    if (photo != null) {
      context
          .read<DocumentsBloc>()
          .add(UploadDocEvent(docImage: photo, isFront: false));
      context.go('/uploadDoc');
    } else
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Scatto foto annullato.')));
  }

  Future<void> _pickPdf(BuildContext context) async {
    final res = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
        allowMultiple: false,
        withData: true);
    if (res != null && res.files.single.path != null) {
      final file = XFile(res.files.single.path!);
      setState(() => selectedFileNames = res.files.map((f) => f.name).toList());
      context
          .read<DocumentsBloc>()
          .add(UploadDocEvent(docImage: file, isFront: false));
      context.go('/uploadDoc');
    } else if (res != null && res.files.length > 1)
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Puoi selezionare al massimo un file PDF.')));
  }

  Future<void> _handleCameraNavigation(
      BuildContext context, bool isFront) async {
    try {
      var status = await Permission.camera.status;
      if (status.isDenied || status.isPermanentlyDenied) {
        status = await Permission.camera.request();
        if (!status.isGranted) {
          if (status.isPermanentlyDenied)
            await _showPermissionDeniedDialog(context);
          return;
        }
      }
      final cams = await availableCameras();
      if (cams.isEmpty) {
        await _showCameraErrorDialog(context);
        return;
      }
      await _scanDocument(isFront);
    } catch (_) {
      await _showCameraErrorDialog(context);
    }
  }

  Future<void> _showPermissionDeniedDialog(BuildContext context) async {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
              title: const Text('Permesso Negato'),
              content: const Text(
                  'Per utilizzare la fotocamera, abilita i permessi nelle impostazioni.'),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(ctx),
                    child: const Text('Annulla')),
                TextButton(
                    onPressed: () async {
                      Navigator.pop(ctx);
                      await openAppSettings();
                    },
                    child: const Text('Vai alle Impostazioni'))
              ]);
        });
  }

  Future<void> _showCameraErrorDialog(BuildContext context) async {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
              title: const Text('Errore Fotocamera'),
              content: const Text(
                  'Si è verificato un errore durante l\'inizializzazione della fotocamera.'),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(ctx),
                    child: const Text('OK'))
              ]);
        });
  }

  Future<void> _scanDocument(bool isFront) async {
    try {
      final scanned =
          await FlutterDocScanner().getScannedDocumentAsImages(page: 1);
      final scannedStr = scanned.toString();
      debugPrint("scanned raw: $scannedStr");

      // 1) Cerca la prima occorrenza di un percorso file JPG
      final match = RegExp(r'file://[^,\}\]\s]+\.jpg').firstMatch(scannedStr);
      if (match == null) {
        debugPrint("!> Non ho trovato un percorso .jpg in scanned.toString()");
        return;
      }
      final rawUri = match.group(0)!;
      debugPrint("rawUri estratto: $rawUri");

      // 2) Rimuovi il prefisso file:// e ottieni il vero path
      final filePath = rawUri.startsWith('file://')
          ? rawUri.replaceFirst('file://', '')
          : Uri.parse(rawUri).toFilePath();
      debugPrint("filePath: $filePath");

      // 3) Crea l'XFile e procedi
      final file = XFile(filePath);
      debugPrint("XFile creato: $file");

      context.read<DocumentsBloc>().add(
            UploadDocEvent(docImage: file, isFront: isFront),
          );
      context.go('/uploadDoc');
    } on PlatformException catch (e) {
      debugPrint("PlatformException: $e");
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Errore durante la scansione del documento.')),
        );
      }
    } catch (e, stack) {
      debugPrint("Eccezione generica: $e\n$stack");
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Errore inaspettato: $e')),
        );
      }
    }
  }

  Widget _buildContinueButton(BuildContext context, DocumentStepState state) {
    final isDark = Theme.of(context).colorScheme.brightness == Brightness.dark;

    final canProceed =
        (state.idCardFronte != null && state.idCardRetro != null) ||
            (state.tesseraFronte != null && state.tesseraRetro != null) ||
            (state.bustaPaga != null);
    return Column(children: [
      CustomButton(
        label: 'Continua',
        disabled: !canProceed,
        onPressed: () =>
            context.read<DocumentsBloc>().add(SendDocToServerEvent()),
        type: isDark ? ButtonType.whiteFilled : ButtonType.blueFilled,
      ),
      if (state.step == 3) ...[
        const SizedBox(height: 16),
        Text(AppLocalizations.of(context)!.or,
            style: AppTextStyles.smallDescriptionStyle),
        const SizedBox(height: 16),
        CustomButton(
            label: 'SALVA SU DOL',
            onPressed: () {
              setState(() => selectedFileNames.clear());
              context
                  .go('/onboarding/end', extra: {'idPreventivo': state.uuid});
            },
            type: ButtonType.outlined)
      ]
    ]);
  }
}

Future<void> _showRemoveImageDialog(
    BuildContext context, bool isFront, bool isBustaPaga) async {
  final bloc = context.read<DocumentsBloc>();
  final step = (bloc.state as DocumentStepState).step;
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(!isBustaPaga ? "Rimuovi immagine" : "Rimuovi i file"),
      content: Text(!isBustaPaga
          ? "Sei sicuro di voler rimuovere questa immagine?"
          : "Sei sicuro di voler rimuovere i file caricati?"),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Annulla"),
        ),
        TextButton(
          onPressed: () {
            bloc.add(ClearDocEvent(
                step: step, isFront: isFront, isBustaPaga: isBustaPaga));
            Navigator.of(context).pop();
          },
          child: const Text("Rimuovi"),
        ),
      ],
    ),
  );
}

class _GlassCard extends StatefulWidget {
  final bool isUploaded;
  final bool isBustaPaga;
  final String label;
  final XFile? previewImage;
  final VoidCallback onTap;

  const _GlassCard({
    required this.isUploaded,
    required this.isBustaPaga,
    required this.label,
    this.previewImage,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  State<_GlassCard> createState() => _GlassCardState();
}

class _GlassCardState extends State<_GlassCard>
    with SingleTickerProviderStateMixin {
  double _scale = 1.0;
  late final AnimationController _fadeCtrl;
  late final Animation<double> _fadeAnim;

  @override
  void initState() {
    super.initState();
    _fadeCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _fadeAnim = CurvedAnimation(parent: _fadeCtrl, curve: Curves.easeIn);
    if (widget.isUploaded) _fadeCtrl.forward();
  }

  @override
  void didUpdateWidget(covariant _GlassCard old) {
    super.didUpdateWidget(old);
    if (!old.isUploaded && widget.isUploaded) {
      _fadeCtrl.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _fadeCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    final onSurface = Theme.of(context).colorScheme.onSurface;
    final onPrimary = Theme.of(context).colorScheme.onPrimary;

    return GestureDetector(
      onTapDown: (_) => setState(() => _scale = 0.97),
      onTapUp: (_) => setState(() => _scale = 1.0),
      onTapCancel: () => setState(() => _scale = 1.0),
      onTap: widget.onTap,
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  width: 2,
                  // gradient stroke: animate from transparent to primary
                  color: widget.isUploaded
                      ? onPrimary
                      : onSurface.withOpacity(0.2),
                ),
              ),
              child: AspectRatio(
                aspectRatio: widget.isBustaPaga ? 2 : 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // anteprima o icona leggera
                    if (widget.previewImage != null && !widget.isUploaded)
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: FileImage(File(widget.previewImage!.path)),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    else
                      FadeTransition(
                        opacity: widget.isUploaded
                            ? _fadeAnim
                            : AlwaysStoppedAnimation(1.0),
                        child: Icon(
                          widget.isUploaded
                              ? Icons.check_circle
                              : Icons.add_circle_outline,
                          size: 50,
                          color: onPrimary,
                        ),
                      ),

                    // etichetta sottile
                    if (widget.label.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(
                          widget.label,
                          style: TextStyle(
                            fontSize: AppFontSizes.bodyText,
                            fontWeight: FontWeight.w600,
                            color: onPrimary,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
