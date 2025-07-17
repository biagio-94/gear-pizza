import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:gearpizza/common/services/api_service_exception.dart';
import 'package:gearpizza/common/utils/exception_handler.dart';
import 'package:gearpizza/features/auth/models/login_refresh_request.dart';
import 'package:gearpizza/features/auth/services/user_role_service.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'package:gearpizza/common/models/login200_response_data.dart';
import 'package:gearpizza/common/services/api_service.dart';
import 'package:gearpizza/common/services/secure_storage_service.dart';
import 'package:gearpizza/common/utils/directus_query_builder.dart';
import 'package:gearpizza/common/utils/serializers.dart';
import 'package:gearpizza/features/auth/api/auth_endpoints.dart';
import 'package:gearpizza/features/auth/models/auth_gear_pizza_user.dart';
import 'package:gearpizza/features/auth/services/auth_service_exception.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final SecureStorageService _secureStorage;
  final ApiService _apiService;

  static const _tokenKey = 'firebase_token';
  static const _refreshTokenKey = 'refreshToken';
  static const _refreshTokenExpiryKey = 'refreshTokenExpiry';
  static const _isAdminKey = 'isAdmin';

  AuthRepository({
    FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
    required SecureStorageService secureStorage,
    ApiService? apiService,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn(),
        _apiService = apiService ?? GetIt.I<ApiService>(),
        _secureStorage = secureStorage;

  // ────────────────────────────────────────────────────────────────
  // 1) STORAGE: Salvataggio e recupero token + scadenza
  // ────────────────────────────────────────────────────────────────

  Future<void> saveToken(String token) async {
    await _secureStorage.writeSecureData(_tokenKey, token);
  }

  Future<void> saveRefreshToken(String refreshToken) async {
    await _secureStorage.writeSecureData(_refreshTokenKey, refreshToken);
  }

  Future<void> saveRefreshExpiry(String isoExpiryDate) async {
    await _secureStorage.writeSecureData(_refreshTokenExpiryKey, isoExpiryDate);
  }

  Future<void> saveIsAdmin({required bool isAdmin}) async {
    await _secureStorage.writeSecureData(_isAdminKey, isAdmin.toString());
  }

  Future<String?> getSavedToken() => _secureStorage.readSecureData(_tokenKey);

  Future<String?> getSavedRefreshToken() =>
      _secureStorage.readSecureData(_refreshTokenKey);

  Future<String?> getSavedRefreshExpiry() =>
      _secureStorage.readSecureData(_refreshTokenExpiryKey);

  Future<String?> getIsAdmin() => _secureStorage.readSecureData(_isAdminKey);

  Future<void> deleteSecureStorage() async {
    await _secureStorage.deleteAllSecureData();
  }

  Future<void> clearRefreshData() async {
    await _secureStorage.deleteSecureData(_refreshTokenKey);
    await _secureStorage.deleteSecureData(_refreshTokenExpiryKey);
  }

  // ────────────────────────────────────────────────────────────────
  // 2) VALIDAZIONE: Controllo validità dei token
  // ────────────────────────────────────────────────────────────────

  bool isJwtValid(String token) {
    try {
      return !JwtDecoder.isExpired(token);
    } on FormatException {
      return false;
    }
  }

  Future<bool> isRefreshValid() async {
    final isoExpiry = await getSavedRefreshExpiry();
    if (isoExpiry == null) return false;
    final expiryDate = DateTime.tryParse(isoExpiry);
    if (expiryDate == null) return false;
    return DateTime.now().isBefore(expiryDate);
  }

  // ────────────────────────────────────────────────────────────────
  // 3) INITIALIZATION: onStart all’avvio dell’app
  // ────────────────────────────────────────────────────────────────

  /// Inizializza l'autenticazione all'avvio dell'app.
  /// Controlla se esiste un token valido e, in caso affermativo,
  /// recupera l'utente autenticato.
  /// Se il token non è valido o non esiste, ritorna null.
  /// Se l'utente è autenticato, verifica se ha in precedenza effettuato un acesso con credenziali admin e ritorna l'utente
  /// con il ruolo specidfico consentendo una persistenza con ruolo esatto anche se l'app viene chiusa.
  Future<AuthGeaPizzaUser?> onStart() async {
    try {
      final savedRefresh = await getSavedRefreshToken();
      if (savedRefresh == null || !await isRefreshValid()) {
        await deleteSecureStorage();
        return null;
      }

      final refreshRequest =
          LoginRefreshRequest((b) => b..refresh = savedRefresh);
      final serializedRequest = standardSerializers.serializeWith(
        LoginRefreshRequest.serializer,
        refreshRequest,
      );

      final response = await _apiService.post(
        AuthEndpoints.refreshToken,
        data: serializedRequest,
      );

      if (response.statusCode != 200) return null;

      final raw = response.data;
      final Map<String, dynamic> json =
          raw is String ? jsonDecode(raw) : Map<String, dynamic>.from(raw);
      final dataJson = Map<String, dynamic>.from(json['data'] as Map);

      final Login200ResponseData data = standardSerializers.deserializeWith(
        Login200ResponseData.serializer,
        dataJson,
      )!;

      final newAccess = data.accessToken;
      final newRefresh = data.refreshToken;
      final expiresMs = data.expires;

      if (newAccess == null || newRefresh == null || expiresMs == null) {
        throw AuthServiceException('Refresh token: risposta incompleta');
      }

      setAccessToken(newAccess);
      setRefreshToken(newRefresh);
      await saveToken(newAccess);
      await saveRefreshToken(newRefresh);

      final newExpiry = DateTime.now().add(Duration(milliseconds: expiresMs));
      await saveRefreshExpiry(newExpiry.toIso8601String());

      return await getAuthUser();
    } on DioException catch (e) {
      // mappo l'errore Dio in un'eccezione custom
      throw mapDioExceptionToCustomException(e);
    } on AuthServiceException {
      rethrow;
    } catch (e) {
      // generica
      throw GenericAuthException(e.toString());
    }
  }

  // ────────────────────────────────────────────────────────────────
  // 4) POST‑LOGIN: Dopo login Firebase → Directus + salvataggio token
  // ────────────────────────────────────────────────────────────────

  /// Sincronizziamo Directus con i provider dopo il login.
  /// Recupero quindi i token di accesso e refresh da Directus
  /// e li salvo in secure storage.
  /// Questo permette di avere un accesso diretto a Directus
  /// L'apiService in automatico utilizzerà questi token
  /// per le chiamate successive. e ne gestirà il refresh.
  Future<void> _afterFirebaseLogin({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _apiService.post(
        AuthEndpoints.login,
        data: {'email': email, 'password': password},
      );

      if (response.statusCode != 200) {
        await _firebaseAuth.signOut();
        throw UnauthorizedException();
      }

      final raw = response.data;
      final Map<String, dynamic> json =
          raw is String ? jsonDecode(raw) : Map<String, dynamic>.from(raw);
      final dataJson = Map<String, dynamic>.from(json['data'] as Map);

      final Login200ResponseData data = standardSerializers.deserializeWith(
        Login200ResponseData.serializer,
        dataJson,
      )!;

      final accessToken = data.accessToken;
      final refreshToken = data.refreshToken;
      final expiresMs = data.expires;

      if (accessToken == null || refreshToken == null || expiresMs == null) {
        await _firebaseAuth.signOut();
        throw AuthServiceException('Login Directus: token mancanti');
      }
      // Salvo i token in secure storage
      // e li setto nell'apiService per le chiamate successive.
      // Api service gestirà il refresh automatico
      await saveToken(accessToken);
      await saveRefreshToken(refreshToken);
      setAccessToken(accessToken);
      setRefreshToken(refreshToken);

      final expiryDate = DateTime.now().add(Duration(milliseconds: expiresMs));
      await saveRefreshExpiry(expiryDate.toIso8601String());
    } on DioException catch (e) {
      await _firebaseAuth.signOut();
      throw mapDioExceptionToCustomException(e);
    } on FirebaseAuthException catch (e) {
      await _firebaseAuth.signOut();
      // mappo la FirebaseAuthException in un'eccezione custom
      throw mapFirebaseExceptionToCustomException(e);
    } on AuthServiceException {
      rethrow;
    } catch (e) {
      await _firebaseAuth.signOut();
      throw GenericAuthException(e.toString());
    }
  }

  // ────────────────────────────────────────────────────────────────
  // 5) METODI DI AUTENTICAZIONE
  // ────────────────────────────────────────────────────────────────

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  User? get currentUser => _firebaseAuth.currentUser;

// Metodo per verificare se l’email dell’utente esiste già su Directus.
// Utile per:
  /// - evitare doppie registrazioni (es. stessa email usata da più provider)
  /// - sincronizzare utenti Firebase <-> Directus in fase di registrazione
  /// - decidere se mostrare UI per selezione ruolo o login diretto
  Future<bool> emailAlreadyExists({required String email}) async {
    try {
      // Costruisco una query Directus per cercare un utente con email esatta
      final query = DirectusQueryBuilder().fields(['id']).filter({
        'email': {'_eq': email}
      }).limit(1);

      final resp = await _apiService.get(
        AuthEndpoints.getUserByEmail(queryBuilder: query),
      );

      if (resp.statusCode != 200) {
        throw BadRequestException('Errore verifica email: ${resp.statusCode}');
      }

      final data = (resp.data as Map<String, dynamic>)['data'] as List;

      // Se Directus ha già un utente con quell’email, ritorno true
      return data.isNotEmpty;
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    }
  }

// Metodo per registrare un nuovo utente in Firebase con email/password.
// In futuro questo può essere esteso per:
  /// 1. Creare anche un utente associato su Directus.
  /// 2. Consentire la selezione del ruolo (guest, admin, ristoratore, ecc.)
  /// 3. Inviare i dati supplementari (es. nome, preferenze, ristorante associato)
  ///    a Directus tramite un POST a /users o una collezione estesa.
  Future<UserCredential> registerWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      // Ad esmpio qui potremmo:
      // 1. Controllare se l’email esiste già su Directus
      // 2. Creare l’utente su Firebase
      // 3. Inviare i dati a Directus per creare un record utente
      // 4. Salvare i token in secure storage e continuare il flusso di login
      // Logiche molto simili per registrazione con altri provider google/facebook ecc quindi non mi ripeterò sotto
      // Firebase crea l’utente
      final cred = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Invio email di verifica – consigliato in ogni onboarding
      await cred.user!.sendEmailVerification();

      // FUTURO:
      // Dopo la registrazione Firebase, potremmo:
      // - chiedere all’utente di scegliere un ruolo o inserire più dati
      // - inviare questi dati a Directus creando un record utente
      // - salvare access token Directus con ruolo corretto (admin/guest ecc.)

      return cred;
    } on FirebaseAuthException catch (e) {
      throw mapFirebaseExceptionToCustomException(e);
    }
  }

  Future<AuthGeaPizzaUser> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      // Questo è l’unico login “reale” che supportiamo in questa
      // versione iniziale dell’app: autenticazione email/password
      // Ovvero chiamo Directus con le credenziali passate da form
      //
      // Per gli altri metodi di accesso (Google, Facebook, FirebaseAuth etc.),
      // in questa fase **simuleremo** un accesso come admin Directus
      // di default, in modo da poter testare le funzionalità
      // privileged senza dover integrare subito il flow completo
      // dei provider esterni.
      //
      // In una futura release:
      // 1. Collegheremo realmente ciascun provider (Google, Facebook, Firebase…)
      //    a Directus, utilizzando un endpoint custom in Directus
      //    che confermi l’utente Firebase attuale (es. /auth/verify-firebase).
      // 2. Gestiremo ruoli e permessi reali basati sulle credenziali
      //    dell’utente Firebase, Google o Facebook ecc.
      // 3. Implementeremo un flusso di onboarding per scegliere il ruolo

      // Credenziali forzate per accesso firebase (in quanto non abbiamo effettuato una vera fadse di registrazone e collegamento
      // con Directus, ma solo una simulazione per testare il login):
      final cred = await _firebaseAuth.signInWithEmailAndPassword(
        email: "ferro.biagio@gmail.com",
        password: "Testspc1",
      );
      //Non utilizzate per quanto spiegato sopra ovviamente

      // se è il primo accesso da admin, recupero access + refresh token
      // e li salvo in secure storage.
      // Se invece è un guest, _afterFirebaseLogin può riconoscerlo e
      // fare il flow guest (token service‑account) dietro le quinte.
      await _afterFirebaseLogin(email: email, password: password);

      //Tutti i login tramite provider esterni (Google, Facebook, ecc.) verranno considerati come admin
      // per questa versione iniziale, quindi passiamo true di default
      // Solo "SignAsguest" non lo farà facendo entrare l'utente come guest
      saveIsAdmin(isAdmin: true);
      return await getAuthUser();
    } on FirebaseAuthException catch (e) {
      // Mappo l’errore Firebase su un’eccezione interna più comprensibile
      throw mapFirebaseExceptionToCustomException(e);
    }
  }

  Future<AuthGeaPizzaUser> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        throw LoginException('Login Google annullato dall’utente');
      }
      final googleAuth = await googleUser.authentication;
      final cred = await _firebaseAuth.signInWithCredential(
        GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        ),
      );
      // Simulo avvenuta sincronizzazione con Directus leggere metodo signWithEmail e _afterFirebaseLogin per spiegazioni
      await _afterFirebaseLogin(
          email: "biagio@gearpizza.it", password: 'Q]T%;mG1)R58');
      //Tutti i login tramite provider esterni (Google, Facebook, ecc.) verranno considerati come admin
      // per questa versione iniziale, quindi passiamo true di default
      // Solo "SignAsguest" non lo farà facendo entrare l'utente come guest
      saveIsAdmin(isAdmin: true);
      return await getAuthUser();
    } on FirebaseAuthException catch (e) {
      throw mapFirebaseExceptionToCustomException(e);
    }
  }

  Future<AuthGeaPizzaUser> signInWithFacebook() async {
    try {
      final result = await FacebookAuth.instance.login();
      if (result.status != LoginStatus.success) {
        throw LoginException('Login Facebook annullato o fallito');
      }
      final cred = await _firebaseAuth.signInWithCredential(
        FacebookAuthProvider.credential(result.accessToken!.tokenString),
      );
      // Simulo avvenuta sincronizzazione con Directus leggere metodo signWithEmail e _afterFirebaseLogin per spiegazioni
      await _afterFirebaseLogin(
          email: "biagio@gearpizza.it", password: 'Q]T%;mG1)R58');
      //Tutti i login tramite provider esterni (Google, Facebook, ecc.) verranno considerati come admin
      // per questa versione iniziale, quindi passiamo true di default
      // Solo "SignAsguest" non lo farà facendo entrare l'utente come guest
      saveIsAdmin(isAdmin: true);
      return await getAuthUser();
    } on FirebaseAuthException catch (e) {
      throw mapFirebaseExceptionToCustomException(e);
    }
  }

  Future<AuthGeaPizzaUser> signAsGuest() async {
    try {
      // Simulo un accesso come guest con un utente di test
      // Non asegno quindi il Ruolo Admin alla sua utenza ( VEDI getAuthUser )
      // Simulo avvenuta sincronizzazione con Directus leggere metodo signWithEmail e _afterFirebaseLogin per spiegazioni
      await _afterFirebaseLogin(
          email: "biagio@gearpizza.it", password: 'Q]T%;mG1)R58');
      return await getAuthUser();
    } on FirebaseAuthException catch (e) {
      throw mapFirebaseExceptionToCustomException(e);
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
      await _googleSignIn.signOut();
      await deleteSecureStorage();
    } on DioException catch (e) {
      throw mapDioExceptionToCustomException(e);
    } on FirebaseAuthException catch (e) {
      throw mapFirebaseExceptionToCustomException(e);
    }
  }

  // Qui vado registrare suGetIt l'utente autenticato
  /// e ritorno l'oggetto AuthGeaPizzaUser con i dati dell'utente
  /// e il ruolo (admin o guest) in base al secure storage.
  /// Questo permette di avere un singleton AuthGeaPizzaUser
  /// che può essere usato in tutta l'app per accedere ai dati utente
  /// potendo variare UI e permessi in base al ruolo.
  Future<AuthGeaPizzaUser> getAuthUser() async {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser == null) {
      throw NotFoundException('Nessun utente autenticato');
    }
    // Simulo un DirectusUser per il momento
    // In un'app reale dovremmo fare una chiamata a Directus per recuperare
    // i dettagli dell'utente autenticato
    final directusUser = DirectusUser(
      id: 'id-demo',
      nome: 'Demo',
      cognome: 'User',
      email: firebaseUser.email!,
      dataCreazione: DateTime.now(),
      dataAggiornamento: DateTime.now(),
    );
    // Ha mai fatto un login con le credenziali ?
    // controllo sul secure scorage se è oresente un isAdmin
    // ovviamente in un flusso reale questo verrebbe gestito in tuttaltro modo chiamando directus per recuperare il ruolo
    // ma per il momento lo simulo con un secure storage non avendo accesso in create a table users e roles in fase di registrazione
    // con i cari provider di registrazione ( firebase, google, facebook )
    final storedIsAdmin = await getIsAdmin();
    final isAdmin = storedIsAdmin?.toLowerCase() == 'true';

    final authUser = AuthGeaPizzaUser(
      firebaseUser: firebaseUser,
      directusUser: directusUser,
      role: isAdmin ? Roles.admin : Roles.user,
    );

    if (GetIt.I.isRegistered<AuthGeaPizzaUser>()) {
      GetIt.I.unregister<AuthGeaPizzaUser>();
    }
    GetIt.I.registerSingleton<AuthGeaPizzaUser>(authUser);

    return authUser;
  }

  void setAccessToken(String token) => _apiService.setAccessToken(token);
  void setRefreshToken(String token) => _apiService.setRefreshToken(token);
}
