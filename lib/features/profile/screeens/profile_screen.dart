import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';
import 'package:gearpizza/features/auth/services/user_role_service.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  static const _storageKey = 'profile_image_path';
  final _storage = GetIt.instance<SecureStorageService>();
  final userRole = GetIt.instance<AuthGeaPizzaUser>().role;

  File? _imageFile;
  String? _userName;

  // Dati immutabili
  static const _allActions = [
    {'id': 1, 'icon': Icons.person, 'title': 'Account'},
    {'id': 2, 'icon': Icons.shopping_bag, 'title': 'Ordini'},
    {'id': 3, 'icon': Icons.restaurant_menu, 'title': 'Gestisci Menu'},
    {'id': 4, 'icon': Icons.logout, 'title': 'Esci'},
  ];

  // Getter che restituisce solo le azioni consentite
  List<Map<String, dynamic>> get _actions {
    return _allActions.where((a) {
      if (a['id'] == 3) return userRole == Roles.admin;
      return true;
    }).toList();
  }

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  Future<void> _loadProfile() async {
    final path = await _storage.readSecureData(_storageKey);
    final name = await _storage.readSecureData('user_name');
    if (!mounted) return;
    setState(() {
      _userName = name;
      if (path != null) _imageFile = File(path);
    });
  }

  Future<void> _pickImage() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked == null) return;
    await _storage.writeSecureData(_storageKey, picked.path);
    if (!mounted) return;
    setState(() => _imageFile = File(picked.path));
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final mq = MediaQuery.of(context);
    final topPad = mq.padding.top;
    final height = mq.size.height;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: cs.primary,
        body: Column(
          children: [
            _Header(
              height: height * 0.25 + topPad,
              topPadding: topPad,
              color: cs.primary,
              imageFile: _imageFile,
              userName: _userName,
              onTapImage: _pickImage,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: cs.surface,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(22),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Profilo',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 24),
                      Expanded(
                        child: ListView.separated(
                          padding: const EdgeInsets.only(bottom: 24),
                          itemCount: _actions.length,
                          separatorBuilder: (_, __) =>
                              const Divider(color: Colors.grey, thickness: 0.5),
                          itemBuilder: (_, i) => _ActionRow(_actions[i]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget estratto per l’header
class _Header extends StatelessWidget {
  final double height;
  final double topPadding;
  final Color color;
  final File? imageFile;
  final String? userName;
  final VoidCallback onTapImage;

  const _Header({
    required this.height,
    required this.topPadding,
    required this.color,
    required this.imageFile,
    required this.userName,
    required this.onTapImage,
  });

  @override
  Widget build(BuildContext context) {
    final name = (userName?.isNotEmpty == true ? userName : 'Ciao')!;
    final subtitle = userName != null
        ? 'Bentornato su GearPizza!'
        : 'Benvenuto su GearPizza!';

    return Container(
      height: height,
      width: double.infinity,
      padding: EdgeInsets.only(top: topPadding + 24, left: 24, right: 24),
      color: color,
      child: Row(
        children: [
          GestureDetector(
            onTap: onTapImage,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white24,
              backgroundImage: imageFile != null ? FileImage(imageFile!) : null,
              child: imageFile == null
                  ? const Icon(Icons.camera_alt, size: 32, color: Colors.white)
                  : null,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Text(subtitle, style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ],
      ),
    );
  }
}

// Widget estratto per ciascuna riga di azione
class _ActionRow extends StatelessWidget {
  final Map<String, dynamic> action;
  const _ActionRow(this.action);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {/* navigazione */},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Icon(action['icon'], color: Colors.grey[800]),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                action['title'],
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
