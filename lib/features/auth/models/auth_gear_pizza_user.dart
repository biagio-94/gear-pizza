import 'package:firebase_auth/firebase_auth.dart' as fb;
import 'package:gearpizza/features/auth/services/user_role_service.dart';
import 'package:gearpizza/models/tables/users.dart';

/// Classe che unifica l'utente Firebase Auth e il record completo
/// dalla tabella `users` di Supabase.
class AuthGeaPizzaUser {
  /// Utente autenticato su Firebase
  final fb.User firebaseUser;

  /// Record completo della tabella `users` di Supabase
  UsersRow supaUser;
  Roles? role;

  AuthGeaPizzaUser({
    required this.firebaseUser,
    required this.supaUser,
    this.role,
  });

  // -------------------------
  // Getters per i campi utente
  // -------------------------

  String get userId => supaUser.userId;
  String? get firebaseUid => supaUser.firebaseUid;
  String get nome => supaUser.nome;
  String get cognome => supaUser.cognome;
  String get email => supaUser.email;
  String? get telefono => supaUser.telefono;
  String? get ruoloId => supaUser.ruoloId;
  DateTime get dataCreazione => supaUser.dataCreazione;
  DateTime get dataAggiornamento => supaUser.dataAggiornamento;
  String? get dataNascita => supaUser.dataNascita;
  String? get sesso => supaUser.sesso;
  double? get altezza => supaUser.altezza;
  int get onboardingStep => supaUser.onboardingStep;
  bool get onboardingComplete => supaUser.onboardingComplete;
  Map<String, dynamic>? get onboardingData => supaUser.onboardingData;

  // -------------------------
  // Metodi di aggiornamento
  // -------------------------

  /// Sostituisce completamente il record SupaUser
  void updateSupaUser(UsersRow newSupaUser) {
    supaUser = newSupaUser;
  }

  /// Modifica campi specifici del record SupaUser
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
    supaUser = supaUser.copyWith(
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
      onboardingStep: onboardingStep,
      onboardingComplete: onboardingComplete,
      onboardingData: onboardingData,
    );
  }
}
