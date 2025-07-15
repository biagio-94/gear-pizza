import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart' as fb_auth;
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuthService {
  static final SupabaseAuthService _instance = SupabaseAuthService._();
  factory SupabaseAuthService() => _instance;
  SupabaseAuthService._();

  StreamSubscription<fb_auth.User?>? _authWatcher;

  /// Chiama questa init **una sola volta** (idealmente in main.dart)
  Future<void> init() async {
    _authWatcher ??=
        fb_auth.FirebaseAuth.instance.userChanges().listen(_onAuthChange);
  }

  Future<void> _onAuthChange(fb_auth.User? user) async {
    if (user == null) {
      // Utente Firebase uscito → esci anche da Supabase
      await Supabase.instance.client.auth.signOut();
      debugPrint(
          '[SupabaseAuth] Firebase user signed out; Supabase signed out.');
    } else {
      await fetchAndSetSupabaseToken(user);
    }
  }

  Future<void> fetchAndSetSupabaseToken(fb_auth.User user) async {
    try {
      // Forza la generazione di un token nuovo, non dalla cache
      final fbToken = await user.getIdToken(false);

      final callable = FirebaseFunctions.instanceFor(region: 'us-central1')
          .httpsCallable('mintSupabaseToken');

      // Invoca la onCall function, passando il token
      final res = await callable.call(<String, dynamic>{
        'token': fbToken,
      });

      // La onCall restituisce direttamente { access_token: "..." }
      final map = res.data as Map<String, dynamic>;
      final supaToken = map['access_token'] as String?;

      debugPrint('supaToken $supaToken');

      if (supaToken == null) {
        throw Exception('No access_token in CF response');
      }

      // Imposta l’header Authorization per tutte le chiamate REST a Supabase
      await Supabase.instance.client.rest.setAuth(supaToken);
      debugPrint('[SupabaseAuth] Supabase token refreshed.');
    } catch (e) {
      debugPrint('[SupabaseAuth] Error fetching Supabase token: $e');
    }
  }

  Future<void> dispose() async {
    await _authWatcher?.cancel();
  }
}
