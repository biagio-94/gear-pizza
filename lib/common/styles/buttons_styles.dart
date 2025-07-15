// import 'package:flutter/material.dart';
// import 'package:gearpizza/common/components/custom_button.dart';
// import 'colors_schemes.dart';

// class ButtonsStyles {
//   // Stili per il bottone blu
//   static final blueFilled = FilledButton.styleFrom(
//     backgroundColor: AppColors.primary,
//     foregroundColor: AppColors.onPrimary,
//     padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//   ).copyWith(
//     textStyle: WidgetStateProperty.all(
//         const TextStyle(fontSize: 16)), // Imposta il font size di base
//   );

//   static final blueFilledRounded = FilledButton.styleFrom(
//     backgroundColor: AppColors.primary,
//     foregroundColor: AppColors.onPrimary,
//     padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
//   ).copyWith(
//     textStyle: WidgetStateProperty.all(
//         const TextStyle(fontSize: 16)), // Imposta il font size di base
//   );

//   // Stili per il bottone bianco
//   static final whiteFilled = FilledButton.styleFrom(
//     backgroundColor: AppColors.background,
//     foregroundColor: AppColors.primary,
//     padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//   ).copyWith(
//     textStyle: WidgetStateProperty.all(
//         const TextStyle(fontSize: 16)), // Imposta il font size di base
//   );

//   static final whiteFilledRounded = OutlinedButton.styleFrom(
//     backgroundColor: AppColors.background,
//     foregroundColor: AppColors.primary,
//     padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
//   ).copyWith(
//     textStyle: WidgetStateProperty.all(
//         const TextStyle(fontSize: 16)), // Imposta il font size di base
//   );

//   // Stili per il bottone outlined
//   static final outlined = OutlinedButton.styleFrom(
//     backgroundColor: Colors.transparent,
//     foregroundColor: AppColors.primary,
//     side: const BorderSide(color: AppColors.primary),
//     padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//   ).copyWith(
//     textStyle: WidgetStateProperty.all(
//         const TextStyle(fontSize: 16)), // Imposta il font size di base
//   );

//   // Metodo per ottenere lo stile in base al tipo di bottone
//   static ButtonStyle? getButtonStyle(ButtonType type) {
//     switch (type) {
//       case ButtonType.greenFilled:
//         return blueFilled;
//       // case ButtonType.blueFilledRounded:
//       //   return blueFilledRounded;
//       case ButtonType.yellowFilled:
//         return whiteFilled;
//       // case ButtonType.whiteFilledRounded:
//       //   return whiteFilledRounded;
//       case ButtonType.outlined:
//         return outlined;
//     }
//   }
// }
