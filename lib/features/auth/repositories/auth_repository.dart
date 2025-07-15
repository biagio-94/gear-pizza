import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/common/utils/services_setup.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';
import 'package:gearpizza/features/auth/services/auth_service_exception.dart';
import 'package:gearpizza/features/auth/services/user_role_service.dart';
import 'package:gearpizza/models/tables/roles.dart';
import 'package:gearpizza/models/tables/users.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

class AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final SecureStorageService _secureStorage;
  final SupabaseClient _supabase;

  static const _tokenKey = 'firebase_token';
  static const _biometricKey = 'biometric_enabled';
  static const _emailKey = 'user_email';

  AuthRepository({
    FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
    required SecureStorageService secureStorage,
    SupabaseClient? supabaseClient,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn(),
        _secureStorage = secureStorage,
        _supabase = supabaseClient ?? Supabase.instance.client;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  User? get currentUser => _firebaseAuth.currentUser;

  Future<UserCredential> registerWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final cred = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await cred.user!.sendEmailVerification();
      return cred;
    } on FirebaseAuthException catch (e) {
      throw AuthServiceException(e.message ?? 'Registration failed');
    }
  }

  Future<UserCredential> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final cred = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      await _afterFirebaseLogin(email);
      return cred;
    } on FirebaseAuthException catch (e) {
      throw AuthServiceException(e.message ?? 'Login failed');
    }
  }

  Future<void> sendPasswordResetEmail({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw AuthServiceException(e.message ?? 'Reset email failed');
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) throw AuthServiceException('Sign-in aborted');
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final cred = await _firebaseAuth.signInWithCredential(credential);
      await _afterFirebaseLogin(cred.user?.email ?? '');
      return cred;
    } on FirebaseAuthException catch (e) {
      throw AuthServiceException(e.message ?? 'Google sign-in failed');
    }
  }

  Future<UserCredential> signInWithFacebook() async {
    try {
      final result = await FacebookAuth.instance.login();
      if (result.status != LoginStatus.success) {
        if (result.status == LoginStatus.cancelled) {
          throw AuthServiceException('Facebook sign-in cancelled');
        } else {
          throw AuthServiceException(
              result.message ?? 'Facebook sign-in failed');
        }
      }

      final cred = await _firebaseAuth.signInWithCredential(
        FacebookAuthProvider.credential(result.accessToken!.tokenString),
      );
      await _afterFirebaseLogin(cred.user?.email ?? '');
      return cred;
    } on FirebaseAuthException catch (e) {
      throw AuthServiceException(e.message ?? 'Facebook sign-in failed');
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
      await _googleSignIn.signOut();
      await clearSavedToken();
      await clearSavedEmail();
    } catch (e) {
      throw AuthServiceException(e.toString());
    }
  }

  Future<void> setBiometricEnabled(bool enabled) =>
      _secureStorage.writeSecureData(_biometricKey, enabled.toString());

  Future<bool> isBiometricEnabled() async {
    final val = await _secureStorage.readSecureData(_biometricKey);
    return val?.toLowerCase() == 'true';
  }

  Future<String?> getSavedToken() => _secureStorage.readSecureData(_tokenKey);
  Future<String?> getSavedEmail() => _secureStorage.readSecureData(_emailKey);

  Future<void> clearSavedToken() => _secureStorage.deleteSecureData(_tokenKey);
  Future<void> clearSavedEmail() => _secureStorage.deleteSecureData(_emailKey);

  Future<UsersRow?> _fetchSupabaseUserRecord(String uid) => _supabase
      .from('users')
      .select()
      .eq('firebase_uid', uid)
      .maybeSingle()
      .then((m) => m == null ? null : UsersRow.fromJson(m));

  Future<bool> isOnboardingCompleted(String uid) async {
    final user = await _fetchSupabaseUserRecord(uid);
    return user?.onboardingComplete ?? false;
  }

  Future<bool> isRoleChosen(String uid) async {
    final user = await _fetchSupabaseUserRecord(uid);
    return user?.ruoloId != null;
  }

  Future<void> _afterFirebaseLogin(String email) async {
    await _secureStorage.writeSecureData(_emailKey, email);
    await _syncSupabaseUser(_firebaseAuth.currentUser!);
  }

  Future<void> _syncSupabaseUser(User firebaseUser) async {
    final uid = firebaseUser.uid;

    final record = await _supabase
        .from('users')
        .select()
        .eq('firebase_uid', uid)
        .maybeSingle();

    if (record == null) {
      final parts = firebaseUser.displayName?.split(' ') ?? [];
      final nome = parts.isNotEmpty ? parts.first : '';
      final cognome = parts.length > 1 ? parts.sublist(1).join(' ') : '';

      final newUser = UsersRow(
        firebaseUid: uid,
        email: firebaseUser.email ?? '',
        nome: nome,
        cognome: cognome,
        dataCreazione: DateTime.now().toUtc(),
      );
      await _supabase.from('users').insert(newUser.toJson());

      await getAuthUser(firebaseUUID: uid);
    }
  }

  Future<AuthGeaPizzaUser> getAuthUser({
    required String firebaseUUID,
  }) async {
    // 1) Recupera tutto il record utente da Supabase
    final userMap = await _supabase
        .from('users')
        .select()
        .eq(UsersRow.firebaseUidField, firebaseUUID)
        .maybeSingle();

    if (userMap == null) {
      throw Exception('Utente non trovato su Supabase per $firebaseUUID');
    }

    // 2) Convertilo in UsersRow
    final supaUser = UsersRow.fromJson(userMap);

    Roles? assignedRole;

    // 3) Se ruoloId è valorizzato, recupera il nome del ruolo e mappalo
    if (supaUser.ruoloId != null) {
      final roleMap = await _supabase
          .from('roles')
          .select(RolesRow.nomeRuoloField)
          .eq(RolesRow.ruoloIdField, supaUser.ruoloId!)
          .maybeSingle();

      if (roleMap != null && roleMap.containsKey(RolesRow.nomeRuoloField)) {
        final roleName = roleMap[RolesRow.nomeRuoloField] as String;
        assignedRole = UserRoleService().fromRoleName(roleName);
      }
    }

    // 4) Crea e registra AuthGeaPizzaUser **una sola volta**
    final authUser = AuthGeaPizzaUser(
      firebaseUser: _firebaseAuth.currentUser!,
      supaUser: supaUser,
      role: assignedRole,
    );

    if (getIt.isRegistered<AuthGeaPizzaUser>()) {
      getIt.unregister<AuthGeaPizzaUser>();
    }
    getIt.registerSingleton<AuthGeaPizzaUser>(authUser);

    return authUser;
  }
}
