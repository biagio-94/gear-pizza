import 'package:go_router/go_router.dart';
import 'package:gearpizza/features/documents/screens/bustapaga_form_screen.dart';
import 'package:gearpizza/features/documents/screens/dati_contatto_screen.dart';
import 'package:gearpizza/features/documents/screens/id_card_form_screen.dart';
import 'package:gearpizza/features/documents/screens/tessera_sanitaria_form_screen.dart';
import 'package:gearpizza/features/documents/screens/upload_photo_screen.dart';

final List<GoRoute> documentRoutes = [
  GoRoute(
    path: '/datiContatto',
    pageBuilder: (context, state) {
      final idPreventivo = state.extra as String;
      return NoTransitionPage(
        child: DatiContattoScreen(idPreventivo: int.tryParse(idPreventivo)!),
      );
    },
  ),
  GoRoute(
    path: '/uploadDoc',
    pageBuilder: (context, state) {
      return const NoTransitionPage(child: UploadPhotoScreen());
    },
  ),
  GoRoute(
    path: '/idCardForm',
    pageBuilder: (context, state) {
      return const NoTransitionPage(child: IdCardFormScreen());
    },
  ),
  GoRoute(
    path: '/tesseraSanitariaForm',
    pageBuilder: (context, state) {
      return const NoTransitionPage(child: TesseraSanitariaFormScreen());
    },
  ),
  GoRoute(
    path: '/bustaPagaForm',
    pageBuilder: (context, state) {
      return const NoTransitionPage(child: BustapagaFormScreen());
    },
  ),
];
