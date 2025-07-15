// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:go_router/go_router.dart';
// import 'package:gearpizza/common/styles/colors_schemes.dart';
// import 'package:gearpizza/common/styles/font_sizes.dart';
// import 'package:gearpizza/features/preventivo/bloc/preventivo_bloc.dart';
// import 'package:gearpizza/features/preventivo/bloc/preventivo_event.dart';
// import 'package:gearpizza/features/preventivo/bloc/preventivo_state.dart';
// import 'package:gearpizza/features/documents/bloc/documents_bloc.dart';
// import 'package:gearpizza/features/documents/bloc/documents_event.dart';
// import 'package:gearpizza/features/documents/bloc/documents_state.dart';
// import 'package:gearpizza/features/notifications/bloc/notification_bloc.dart';
// import 'package:gearpizza/features/notifications/bloc/notification_state.dart';

// class ReferentiCustomAppBar extends StatelessWidget
//     implements PreferredSizeWidget {
//   final bool? hasNotifications;
//   const ReferentiCustomAppBar({super.key, this.hasNotifications});

//   @override
//   Widget build(BuildContext context) {
//     final GoRouter goRouter = GoRouter.of(context);
//     final documentsBloc = BlocProvider.of<DocumentsBloc>(context);
//     final autoBloc = BlocProvider.of<PreventivoBloc>(context);
//     return MultiBlocListener(
//       listeners: [
//         BlocListener<DocumentsBloc, DocumentsState>(
//           listener: (context, state) {
//             if (state is IdCardFormState) {
//               goRouter.go('/referenti/idCardFormReferenti');
//             }
//             if (state is TesseraSanitariaFormState) {
//               goRouter.go('/referenti/tesseraSanitariaFormReferenti');
//             }
//           },
//         )
//       ],
//       child: AppBar(
//         leading: goRouter.canPop()
//             ? IconButton(
//                 icon: SvgPicture.asset(
//                   'assets/backIcon.svg',
//                   height: 24,
//                   width: 24,
//                 ),
//                 onPressed: () {
//                   try {
//                     final docState = documentsBloc.state;
//                     final autoState = autoBloc.state;
//                     if (autoState is CalcRataState) {
//                       context
//                           .read<PreventivoBloc>()
//                           .add(const ForceBackFromCalcRataScreen());
//                       if (goRouter.canPop()) {
//                         goRouter.pop();
//                       }
//                       return;
//                     } else if (autoState is PreventivoFormState) {
//                       context
//                           .read<PreventivoBloc>()
//                           .add(const ForceBackFromAssicurazioni());
//                       if (goRouter.canPop()) {
//                         goRouter.pop();
//                       }
//                       return;
//                     }
//                     if (docState is DocumentStepState) {
//                       if (docState.step == 1) {
//                         context
//                             .read<DocumentsBloc>()
//                             .add(InitializeDatiContatto(uuid: docState.uuid));
//                       } else if (docState.step == 2) {
//                         context
//                             .read<DocumentsBloc>()
//                             .add(ForceBackFromDocStepState(
//                               uuid: docState.uuid,
//                               step: docState.step,
//                               needsCoobbligato: docState.needsCoobbligato,
//                               isCoobbligatoState: docState.isCoobbligatoState,
//                             ));
//                       } else if (docState.step == 3) {
//                         context
//                             .read<DocumentsBloc>()
//                             .add(ForceBackFromDocStepState(
//                               uuid: docState.uuid,
//                               step: docState.step,
//                               needsCoobbligato: docState.needsCoobbligato,
//                               isCoobbligatoState: docState.isCoobbligatoState,
//                             ));
//                       }
//                     } else {
//                       goRouter.go('/dashboard');
//                     }
//                   } catch (e) {
//                     debugPrint(
//                         "Non è stato possibile fare il back da Custom App Bar ${e.toString()}");
//                   }
//                 },
//               )
//             : const SizedBox.shrink(),
//         actions: hasNotifications != false
//             ? [
//                 BlocBuilder<NotificationBloc, NotificationState>(
//                   builder: (context, state) {
//                     final notificationCount = state.unreadCount;

//                     return Stack(
//                       children: [
//                         IconButton(
//                           iconSize: 30,
//                           icon: const Icon(Icons.notifications_none_outlined),
//                           onPressed: () {
//                             context.go('/dashboard/notifications');
//                           },
//                         ),
//                         if (notificationCount > 0)
//                           Positioned(
//                             right: 5,
//                             top: 5,
//                             child: Container(
//                               padding: const EdgeInsets.all(5),
//                               decoration: const BoxDecoration(
//                                 color: AppColors.darkOnError,
//                                 shape: BoxShape.circle,
//                               ),
//                               child: Text(
//                                 '$notificationCount',
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: AppFontSizes.bodyTextSmall,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                       ],
//                     );
//                   },
//                 ),
//               ]
//             : [],
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
