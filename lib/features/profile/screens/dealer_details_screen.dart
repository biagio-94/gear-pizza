import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:gearpizza/common/model/intermediario.dart';
import 'package:gearpizza/common/model/referente_response.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/common/styles/text_styles.dart';
import 'package:gearpizza/common/styles/colors_schemes.dart';
import 'package:gearpizza/common/styles/font_sizes.dart';
import 'package:gearpizza/features/profile/bloc/profile_bloc.dart';
import 'package:gearpizza/features/profile/bloc/profile_event.dart';
import 'package:gearpizza/features/profile/bloc/profile_state.dart';
import 'package:gearpizza/src/generated/l10n/app_localizations.dart';

class DealerDetailsScreen extends StatefulWidget {
  const DealerDetailsScreen({super.key});

  @override
  DealerDetailsScreenState createState() => DealerDetailsScreenState();
}

class DealerDetailsScreenState extends State<DealerDetailsScreen> {
  File? _selectedFile;
  final SecureStorageService storage = GetIt.instance<SecureStorageService>();

  @override
  void initState() {
    super.initState();
    // Inizializzo il bloc del profilo
    context.read<ProfileBloc>().add(const ProfileInitialize());
    // Carico il file salvato dopo il primo frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadSelectedFile();
    });
  }

  // Carico il percorso del file dalla memoria sicura.
  Future<void> _loadSelectedFile() async {
    String? filePath = await storage.readSecureData('selected_file_path');
    if (filePath != null && File(filePath).existsSync()) {
      setState(() {
        _selectedFile = File(filePath);
      });
    }
  }

  // Seleziono un nuovo file immagine.
  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    if (result != null && result.files.single.path != null) {
      String filePath = result.files.single.path!;
      await storage.writeSecureData('selected_file_path', filePath);
      setState(() {
        _selectedFile = File(filePath);
      });
    }
  }

  // Controllo e richiedo il permesso per le notifiche a livello di sistema.
  Future<bool> _checkAndRequestNotificationPermission() async {
    var status = await Permission.notification.status;
    if (!status.isGranted) {
      var result = await Permission.notification.request();
      return result.isGranted;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Sfondo con gradiente delicato oppure design personalizzato
      body: SafeArea(
        child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {},
          builder: (context, state) {
            // Estraggo i dati del profilo dalla response, che ora potrebbe contenere anche il referente.
            final Intermediario? profileData =
                state is ProfileStateInitialized ? state.intermediario : null;
            // Estraggo la referente se presente (ipotizzando che ProfileStateInitialized abbia anche questo campo).
            final ReferenteResponse? referente =
                state is ProfileStateInitialized ? state.referente : null;

            // Se il referente è presente, il nome visualizzato è la concatenazione di nome e cognome;
            // altrimenti, utilizzo il responsabile.
            final displayName = referente != null
                ? "${referente.nome ?? ''} ${referente.cognome ?? ''}"
                : (profileData?.responsabile?.toUpperCase() ?? 'N/A');

            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Foto del profilo con bordo colorato; al tappo si apre il file picker.
                    GestureDetector(
                      onTap: _pickFile,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          backgroundImage: _selectedFile != null
                              ? FileImage(_selectedFile!)
                              : null,
                          child: _selectedFile == null
                              ? Icon(
                                  Icons.add_a_photo,
                                  color:
                                      AppColors.darkOnSurface.withOpacity(0.5),
                                  size: 50,
                                )
                              : null,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Visualizzo il nome: se esiste il referente, mostro nome + cognome;
                    // altrimenti, mostro il responsabile.
                    Text(
                      displayName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkOnBackground,
                        fontSize: AppFontSizes.title,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32),
                    // Card con i dettagli del profilo
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            // Riga switch notifiche integrata in un ListTile
                            ListTile(
                              title: Text(
                                (profileData?.notifiche ?? false)
                                    ? "Disabilita le notifiche"
                                    : "Abilita le notifiche",
                                style: AppTextStyles.descriptionPageStyle
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                              trailing: state is ProfileStateInitialized &&
                                      !state.isSwitchLoading
                                  ? CupertinoSwitch(
                                      value: profileData?.notifiche ?? false,
                                      activeColor: AppColors.darkOnBackground,
                                      onChanged: (bool value) async {
                                        if (value) {
                                          bool permissionGranted =
                                              await _checkAndRequestNotificationPermission();
                                          if (permissionGranted) {
                                            if (!context.mounted) return;
                                            context.read<ProfileBloc>().add(
                                                UpdateConsensiStatus(
                                                    newStatus: true));
                                          } else {
                                            if (!context.mounted) return;
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  "Per attivare le notifiche, abilita il permesso nelle impostazioni di sistema.",
                                                ),
                                              ),
                                            );
                                          }
                                        } else {
                                          context.read<ProfileBloc>().add(
                                              UpdateConsensiStatus(
                                                  newStatus: false));
                                        }
                                      },
                                    )
                                  : const _PulsatingSwitchPlaceholder(),
                            ),
                            const Divider(),
                            // Informazioni aziendali: Company Name, Dealer Code e Collegato.
                            ListTile(
                              leading: Icon(Icons.business,
                                  color: AppColors.darkOnBackground),
                              title: Text(
                                AppLocalizations.of(context)?.company_name ??
                                    "Company Name",
                                style: AppTextStyles.descriptionPageStyle,
                              ),
                              subtitle: Text(
                                profileData?.ragioneSociale ?? 'N/A',
                                style: AppTextStyles.descriptionPageStyle,
                              ),
                            ),
                            const Divider(),
                            ListTile(
                              leading: Icon(Icons.perm_identity,
                                  color: AppColors
                                      .darkOnBackground), // Icona identificativa per il Dealer Code
                              title: Text(
                                AppLocalizations.of(context)?.dealer_code ??
                                    "Dealer Code",
                                style: AppTextStyles.descriptionPageStyle,
                              ),
                              subtitle: Text(
                                profileData?.codice?.toString() ?? 'N/A',
                                style: AppTextStyles.descriptionPageStyle,
                              ),
                            ),

                            // Se è presente il referente, visualizzo anche le informazioni aggiuntive:
                            // Cellulare e Data di nascita.
                            if (referente != null) ...[
                              const Divider(),
                              ListTile(
                                leading: Icon(Icons.phone,
                                    color: AppColors.darkOnBackground),
                                title: Text(
                                  "Cellulare",
                                  style: AppTextStyles.descriptionPageStyle,
                                ),
                                subtitle: Text(
                                  referente.cellulare ?? 'N/A',
                                  style: AppTextStyles.descriptionPageStyle,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _PulsatingSwitchPlaceholder extends StatefulWidget {
  const _PulsatingSwitchPlaceholder();

  @override
  _PulsatingSwitchPlaceholderState createState() =>
      _PulsatingSwitchPlaceholderState();
}

class _PulsatingSwitchPlaceholderState
    extends State<_PulsatingSwitchPlaceholder>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.4, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        width: 50,
        height: 30,
        decoration: BoxDecoration(
          color: Color.fromRGBO(
            AppColors.darkOnBackground.r.toInt(),
            AppColors.darkOnBackground.g.toInt(),
            AppColors.darkOnBackground.b.toInt(),
            0.3,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 26,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
