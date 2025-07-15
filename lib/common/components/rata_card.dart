// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:gearpizza/common/components/custom_icon_button.dart';
// import 'package:gearpizza/common/styles/colors_schemes.dart';
// import 'package:gearpizza/common/styles/font_sizes.dart';
// import 'package:gearpizza/common/styles/text_styles.dart';
// import 'package:gearpizza/common/utils/number_formatter.dart';
// import 'package:gearpizza/features/preventivo/bloc/preventivo_bloc.dart';
// import 'package:gearpizza/features/preventivo/bloc/preventivo_event.dart';
// import 'package:gearpizza/src/generated/l10n/app_localizations.dart';

// class RataCard extends StatelessWidget {
//   final num rataMensile;
//   final num tan;
//   final num taeg;
//   final num totaleRichiesto;
//   final num numeroRate;
//   final bool isLoading;
//   final bool hasButton;

//   const RataCard({
//     super.key,
//     required this.rataMensile,
//     required this.tan,
//     required this.taeg,
//     required this.totaleRichiesto,
//     required this.numeroRate,
//     this.isLoading = false,
//     required this.hasButton,
//   });

//   @override
//   Widget build(BuildContext context) {
//     // Contenuto principale della carta
//     final cardContent = Column(
//       children: [
//         Container(
//           decoration: const BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(12),
//               topRight: Radius.circular(12),
//             ),
//           ),
//           padding: const EdgeInsets.all(30),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 AppLocalizations.of(context)!.monthlyPayment,
//                 style: AppTextStyles.mediumGreyText,
//               ),
//               Text(
//                 '$rataMensile €',
//                 style: TextStyle(
//                   color: AppColors.primary,
//                   fontWeight: FontWeight.bold,
//                   fontSize: AppFontSizes.bigTitle,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         ClipRRect(
//           borderRadius: const BorderRadius.all(Radius.circular(12)),
//           child: Container(
//             decoration: BoxDecoration(
//               color: AppColors.lightGrey,
//               border: Border.all(color: Colors.grey.shade300, width: 1),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     _buildInfoColumn(
//                       AppLocalizations.of(context)!.installmentNumber,
//                       numeroRate.toString(),
//                     ),
//                     _buildInfoColumn(
//                       AppLocalizations.of(context)!.tan,
//                       '${tan.toStringAsFixed(2).replaceAll('.', ',')}%',
//                     ),
//                     _buildInfoColumn(
//                       AppLocalizations.of(context)!.taeg,
//                       '${taeg.toStringAsFixed(2).replaceAll('.', ',')}%',
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 22),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       AppLocalizations.of(context)!.totalRequired,
//                       style: AppTextStyles.smallGreyText,
//                     ),
//                     Text(
//                       ' ${formatNumber(totaleRichiesto)} €',
//                       style: AppTextStyles.smallBlueText,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );

//     return Stack(
//       clipBehavior: Clip.none,
//       children: [
//         // Sfondo della carta
//         Positioned.fill(
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               border: Border.all(color: Colors.grey.shade300, width: 1),
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.2),
//                   offset: const Offset(0, 6),
//                   blurRadius: 12,
//                   spreadRadius: 2,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         cardContent,
//         // Overlay di caricamento (blur + spinner)
//         if (isLoading)
//           Positioned.fill(
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(12),
//               child: BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//                 child: Container(
//                   color: Colors.white.withOpacity(0.3),
//                   child: Center(
//                     child: CircularProgressIndicator(
//                       valueColor:
//                           AlwaysStoppedAnimation<Color>(AppColors.primary),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         // Mostra i bottoni solo se hasButton è true
//         if (hasButton) ...[
//           // Pulsante di decremento
//           Positioned(
//             left: -20,
//             top: 0,
//             bottom: 0,
//             child: Align(
//               alignment: Alignment.centerLeft,
//               child: CustomIconButton(
//                 onPressed: () {
//                   context
//                       .read<PreventivoBloc>()
//                       .add(UpdateRataEvend(isAddButton: false));
//                 },
//                 icon: Icons.remove,
//               ),
//             ),
//           ),
//           // Pulsante di incremento
//           Positioned(
//             right: -20,
//             top: 0,
//             bottom: 0,
//             child: Align(
//               alignment: Alignment.centerRight,
//               child: CustomIconButton(
//                 onPressed: () {
//                   context
//                       .read<PreventivoBloc>()
//                       .add(UpdateRataEvend(isAddButton: true));
//                 },
//                 icon: Icons.add,
//               ),
//             ),
//           ),
//         ],
//       ],
//     );
//   }

//   Widget _buildInfoColumn(String title, String value) {
//     return Flexible(
//       flex: 1,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: AppTextStyles.smallGreyText,
//           ),
//           const SizedBox(height: 4),
//           Text(value, style: AppTextStyles.mediumBlueText),
//         ],
//       ),
//     );
//   }
// }
