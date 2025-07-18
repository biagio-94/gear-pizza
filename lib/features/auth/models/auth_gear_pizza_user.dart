import 'package:gearpizza/features/auth/services/user_role_service.dart';

/// Modello che rappresenta l'utente da Directus.
/// Dovrai definirlo in base allo schema del tuo Directus.
class DirectusUser {
  final String id;
  final String? firebaseUid;
  final String nome;
  final String cognome;
  final String email;
  final String? telefono;
  final String? ruoloId;
  final DateTime dataCreazione;
  final DateTime dataAggiornamento;
  final String? dataNascita;
  final String? sesso;
  final double? altezza;
  final Map<String, dynamic>? onboardingData;

  DirectusUser({
    required this.id,
    this.firebaseUid,
    required this.nome,
    required this.cognome,
    required this.email,
    this.telefono,
    this.ruoloId,
    required this.dataCreazione,
    required this.dataAggiornamento,
    this.dataNascita,
    this.sesso,
    this.altezza,
    this.onboardingData,
  });

  DirectusUser copyWith({
    String? nome,
    String? cognome,
    String? email,
    String? telefono,
    String? ruoloId,
    DateTime? dataCreazione,
    DateTime? dataAggiornamento,
    String? dataNascita,
    String? sesso,
    double? altezza,
    Map<String, dynamic>? onboardingData,
  }) {
    return DirectusUser(
      id: id,
      firebaseUid: firebaseUid,
      nome: nome ?? this.nome,
      cognome: cognome ?? this.cognome,
      email: email ?? this.email,
      telefono: telefono ?? this.telefono,
      ruoloId: ruoloId ?? this.ruoloId,
      dataCreazione: dataCreazione ?? this.dataCreazione,
      dataAggiornamento: dataAggiornamento ?? this.dataAggiornamento,
      dataNascita: dataNascita ?? this.dataNascita,
      sesso: sesso ?? this.sesso,
      altezza: altezza ?? this.altezza,
      onboardingData: onboardingData ?? this.onboardingData,
    );
  }
}

class AuthGeaPizzaUser {
  /// Qui sostituisci `UsersRow` con `DirectusUser`
  DirectusUser directusUser;
  Roles? role;

  AuthGeaPizzaUser({
    required this.directusUser,
    this.role,
  });

  // Getters
  String get userId => directusUser.id;
  String? get firebaseUid => directusUser.firebaseUid;
  String get nome => directusUser.nome;
  String get cognome => directusUser.cognome;
  String get email => directusUser.email;
  String? get telefono => directusUser.telefono;
  String? get ruoloId => directusUser.ruoloId;
  DateTime get dataCreazione => directusUser.dataCreazione;
  DateTime get dataAggiornamento => directusUser.dataAggiornamento;
  String? get dataNascita => directusUser.dataNascita;
  String? get sesso => directusUser.sesso;
  double? get altezza => directusUser.altezza;
  Map<String, dynamic>? get onboardingData => directusUser.onboardingData;

  // Aggiornamento
  void updateDirectusUser(DirectusUser newUser) {
    directusUser = newUser;
  }

  void updateFields({
    String? nome,
    String? cognome,
    String? email,
    String? telefono,
    String? ruoloId,
    DateTime? dataCreazione,
    DateTime? dataAggiornamento,
    String? dataNascita,
    String? sesso,
    double? altezza,
    int? onboardingStep,
    bool? onboardingComplete,
    Map<String, dynamic>? onboardingData,
  }) {
    directusUser = directusUser.copyWith(
      nome: nome,
      cognome: cognome,
      email: email,
      telefono: telefono,
      ruoloId: ruoloId,
      dataCreazione: dataCreazione,
      dataAggiornamento: dataAggiornamento,
      dataNascita: dataNascita,
      sesso: sesso,
      altezza: altezza,
      onboardingData: onboardingData,
    );
  }
}
