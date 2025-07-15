import 'package:gearpizza/common/utils/services_setup.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';
import 'package:gearpizza/features/auth/services/user_role_service.dart';
import 'package:gearpizza/features/onboarding/models/question_model.dart';
import 'package:gearpizza/models/tables/roles.dart';
import 'package:gearpizza/models/tables/users.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class OnboardingRepository {
  final SupabaseClient _supabase;
  static const _userTable = 'users';
  static const _answerTable = 'onboarding_responses';
  static const _questionTable = 'onboarding_questions';
  late final String _onbID;

  OnboardingRepository({SupabaseClient? supabaseClient})
      : _supabase = supabaseClient ?? Supabase.instance.client;

  /// Traduci firebase_uid → user_id (UUID)
  Future<String> _lookupUserId(String firebaseUid) async {
    final resp = await _supabase
        .from(_userTable)
        .select('user_id')
        .eq('firebase_uid', firebaseUid)
        .maybeSingle();
    if (resp == null) {
      throw Exception('Utente non trovato per firebase_uid=$firebaseUid');
    }
    return (resp)['user_id'] as String;
  }

  Future<List<Map<String, dynamic>>> getOnboardinIds(
      {required String internalId}) async {
    // 2) Prendi il ruolo dell'utente
    final userRec = await _supabase
        .from(_userTable)
        .select('ruolo_id')
        .eq('user_id', internalId)
        .maybeSingle();
    if (userRec == null || userRec['ruolo_id'] == null) {
      throw Exception('Ruolo non trovato per utente $internalId');
    }
    final String ruoloId = userRec['ruolo_id'] as String;

    return await _supabase
        .from('onboardings')
        .select('onboarding_id')
        .eq('target_role_id', ruoloId);
  }

  Future<List<Question>> fetchQuestions({
    required String firebaseUid,
  }) async {
    // 1) Traduci firebaseUid → user_id
    final internalId = await _lookupUserId(firebaseUid);

    // 2) Tutti gli onboarding_id per questo ruolo
    final onbRows = await getOnboardinIds(internalId: internalId);

    final onboardingIds =
        (onbRows as List).map((r) => r['onboarding_id'] as String).toList();
    if (onboardingIds.isEmpty) return [];

    _onbID = onbRows.first['onboarding_id'] as String;

    // 3) Tutti i question_id da onboarding_items
    final items =
        await _supabase.from('onboarding_items').select('question_id').filter(
              'onboarding_id',
              'in',
              '(${onboardingIds.map((id) => "$id").join(',')})',
            );
    final questionIds =
        (items as List).map((r) => r['question_id'] as int).toList();
    if (questionIds.isEmpty) return [];

    // 4) Prendi le domande ordinate per step
    final questionsData = await _supabase
        .from(_questionTable)
        .select('id, text, options, step')
        .filter(
          'id',
          'in',
          '(${questionIds.join(",")})',
        )
        .order('step', ascending: true);

    // 5) Mappa al tuo modello Question
    return (questionsData as List).map((e) {
      return Question.fromMap(e as Map<String, dynamic>);
    }).toList();
  }

  Future<void> submitAnswer({
    required String firebaseUid,
    required int questionId,
    required String answer,
  }) async {
    // 1) recupera l'UUID interno
    final internalId = await _lookupUserId(firebaseUid);

    // 4) Inserisci la risposta con l’onboarding_id corretto
    await _supabase.from(_answerTable).insert({
      'user_id': internalId,
      'question_id': questionId,
      'onboarding_id': _onbID,
      'answer': answer,
    });
  }

  /// Aggiorna onboarding_step e onboarding_complete su public.users
  Future<void> updateProgress({
    required String firebaseUid,
    required int step,
    required bool completed,
  }) async {
    await _supabase.from(_userTable).update({
      'onboarding_step': step,
      'onboarding_complete': completed,
    }).eq('firebase_uid', firebaseUid); // qui uso firebase_uid, non user_id
  }

  /// Controlla se onboarding_complete in public.users è true
  Future<bool> isCompleted({required String firebaseUid}) async {
    final rec = await _supabase
        .from(_userTable)
        .select('onboarding_complete')
        .eq('firebase_uid', firebaseUid)
        .maybeSingle();
    if (rec == null) return false;
    return (rec)['onboarding_complete'] == true;
  }

  Future<int> getCurrentStep(String firebaseUid) async {
    final rec = await _supabase
        .from(_userTable)
        .select('onboarding_step')
        .eq('firebase_uid', firebaseUid)
        .maybeSingle();
    if (rec == null) return 1;
    final step = (rec)['onboarding_step'] as int?;
    return (step != null && step > 0) ? step : 1;
  }

  /// Aggiorna il ruolo dell'utente in Supabase e all'interno di AuthGeaPizzaUser
  /// Aggiorna il ruolo dell'utente in Supabase e ricrea l'istanza AuthGeaPizzaUser con il nuovo ruolo
  Future<void> updateUserRole({
    required String firebaseUid,
    required String ruoloName,
  }) async {
    // 1) Recupera l'id del ruolo dal nome
    final roleRec = await _supabase
        .from('roles')
        .select(RolesRow.ruoloIdField)
        .eq(RolesRow.nomeRuoloField, ruoloName)
        .maybeSingle();

    if (roleRec == null || roleRec[RolesRow.ruoloIdField] == null) {
      throw Exception('Ruolo "$ruoloName" non trovato nella tabella roles.');
    }

    final String ruoloId = roleRec[RolesRow.ruoloIdField] as String;

    // 2) Aggiorna il campo ruolo_id nella tabella users
    await _supabase
        .from(_userTable)
        .update({UsersRow.ruoloIdField: ruoloId}).eq(
            UsersRow.firebaseUidField, firebaseUid);

    // 3) Ricostruisci e registra nuovamente AuthGeaPizzaUser
    if (getIt.isRegistered<AuthGeaPizzaUser>()) {
      // 3.1) Recupera il record utente aggiornato
      final freshUserMap = await _supabase
          .from(_userTable)
          .select()
          .eq(UsersRow.firebaseUidField, firebaseUid)
          .maybeSingle();

      if (freshUserMap == null) {
        throw Exception(
            'Impossibile ricaricare l\'utente dopo l\'update per $firebaseUid');
      }
      final newSupaUser = UsersRow.fromJson(freshUserMap);

      // 3.2) Ricava il nome del ruolo (già noto) e mappa al nostro enum
      final userRoleService = UserRoleService();
      final assignedRole = userRoleService.fromRoleName(ruoloName);

      // 3.3) Crea nuova istanza AuthGeaPizzaUser
      final newAuthUser = AuthGeaPizzaUser(
        firebaseUser: getIt<AuthGeaPizzaUser>().firebaseUser,
        supaUser: newSupaUser,
        role: assignedRole,
      );

      // 3.4) Sostituisci il singleton in getIt
      getIt.unregister<AuthGeaPizzaUser>();
      getIt.registerSingleton<AuthGeaPizzaUser>(newAuthUser);
    }
  }
}
