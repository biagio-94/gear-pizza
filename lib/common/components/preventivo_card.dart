// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
// import 'package:gearpizza/features/dashboard/bloc/dashboard_bloc.dart';
// import 'package:gearpizza/features/dashboard/bloc/dashboard_event.dart';
// import 'package:gearpizza/features/dashboard/bloc/dashboard_state.dart';
// import 'package:gearpizza/features/documents/bloc/documents_bloc.dart';
// import 'package:gearpizza/features/documents/bloc/documents_event.dart';
// import '../model/preventivo_elenco_item.dart';
// import '../styles/colors_schemes.dart';

// class PreventivoCard extends StatelessWidget {
//   final PreventivoElencoItem preventivo;

//   const PreventivoCard({
//     super.key,
//     required this.preventivo,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<DashboardBloc, DashboardState>(
//       builder: (context, state) {
//         // Verifico se 'nome' e 'congnome' sono valorizzati in maniera valida.
//         final bool hasNome = (preventivo.nome?.trim().isNotEmpty ?? false);
//         final bool hasCongnome =
//             (preventivo.congnome?.trim().isNotEmpty ?? false);

//         // Determino il testo da mostrare in base alla validità dei dati.
//         final String displayText = (hasNome && hasCongnome)
//             ? '${preventivo.nome!.trim().toUpperCase()} ${preventivo.congnome!.trim().toUpperCase()} - n° ${preventivo.id}'
//             : 'Preventivo n° ${preventivo.id}';
//         return Container(
//           margin: const EdgeInsets.symmetric(vertical: 8.0),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(12.0),
//             boxShadow: [
//               BoxShadow(
//                 color: Color.fromRGBO(
//                   Colors.grey.r.toInt(),
//                   Colors.grey.g.toInt(),
//                   Colors.grey.b.toInt(),
//                   0.2,
//                 ),
//                 blurRadius: 6.0,
//                 offset: const Offset(0, 3),
//               ),
//             ],
//           ),
//           child: IntrinsicHeight(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.all(21.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           displayText,
//                           style: const TextStyle(
//                             fontSize: 16.0,
//                             fontWeight: FontWeight.bold,
//                             color: AppColors.primary,
//                           ),
//                         ),
//                         const SizedBox(height: 8.0),
//                         Text(
//                           '${preventivo.finanziato} € - ${preventivo.rata} €/mese',
//                           style: const TextStyle(
//                             fontSize: 14.0,
//                             color: Colors.black87,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 50,
//                   decoration: const BoxDecoration(
//                     color: AppColors.surface,
//                     borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(12.0),
//                       bottomRight: Radius.circular(12.0),
//                     ),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       IconButton(
//                         icon: const Icon(Icons.delete,
//                             color: AppColors.primaryContainer),
//                         onPressed: () async {
//                           final confirm = await showDialog<bool>(
//                             context: context,
//                             builder: (context) {
//                               return AlertDialog(
//                                 title: const Text('Conferma eliminazione'),
//                                 content: const Text(
//                                     'Sei sicuro di voler eliminare questo preventivo?'),
//                                 actions: [
//                                   TextButton(
//                                     onPressed: () =>
//                                         Navigator.pop(context, false),
//                                     child: const Text('Annulla'),
//                                   ),
//                                   TextButton(
//                                     onPressed: () =>
//                                         Navigator.pop(context, true),
//                                     child: const Text('Conferma'),
//                                   ),
//                                 ],
//                               );
//                             },
//                           );

//                           if (confirm == true && preventivo.id != null) {
//                             if (!context.mounted) return;
//                             context
//                                 .read<DashboardBloc>()
//                                 .add(EliminaPreventivoEvent(
//                                   idPreventivo: preventivo.id!,
//                                 ));
//                           }
//                         },
//                         iconSize: 16,
//                       ),
//                       IconButton(
//                         icon: Icon(
//                             preventivo.flagInvioDol != true
//                                 ? Icons.arrow_forward_ios
//                                 : Icons.remove_red_eye_rounded,
//                             color: AppColors.primary),
//                         onPressed: () {
//                           // 1. Se il preventivo ha già inviato il documento (flagInvioDol true),
//                           //    navigo alla pagina di dettaglio del preventivo.
//                           if (preventivo.flagInvioDol == true) {
//                             context.go(
//                               '/dashboard/dettaglioPreventivo',
//                               extra: preventivo,
//                             );
//                             return;
//                           }

//                           // flagConsenso=true,
//                           // flagInvioDol=false,
//                           // flagCoobbligato=false,
//                           // step=3,
//                           // stepCoobbligato=false,
//                           // 2. Se il consenso è stato dato e l'id del preventivo è valido,
//                           //    procedo con il caricamento dei documenti.
//                           if (preventivo.flagConsenso == true &&
//                               preventivo.id != null) {
//                             // Determino lo stato per la parte "coobbligato" utilizzando dei mock.
//                             final int step = preventivo.step ?? 1;
//                             // In entrambe le condizioni, per ora isCoobligatoState è impostato a true.
//                             // In futuro, si potrà modificare in base al valore di preventivo.stepCoobligato.
//                             final bool isCoobligatoState =
//                                 preventivo.stepCoobbligato ?? false;
//                             // Il flag needCoobligato viene impostato in base a flagCoobbligato:
//                             // se true allora è necessario, altrimenti non lo è.
//                             final bool needCoobligato =
//                                 preventivo.flagCoobbligato ?? false;

//                             // Inizializzo lo stato del DocumentsBloc con i parametri definiti.
//                             context.read<DocumentsBloc>().add(
//                                   InitializeDocumentsEvent(
//                                     uuid: preventivo.id!.toString(),
//                                     step: step,
//                                     isCoobbligatoState: isCoobligatoState,
//                                     needCoobbligato: needCoobligato,
//                                   ),
//                                 );
//                             context.go('/preventivo/uploadDoc');
//                             return;
//                           }

//                           // 3. Se nessuna delle condizioni precedenti è soddisfatta,
//                           //    navigo alla pagina per l'inserimento dei dati di contatto.
//                           context.go(
//                             '/preventivo/datiContatto',
//                             extra: preventivo.id.toString(),
//                           );
//                         },
//                         iconSize: 18,
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
