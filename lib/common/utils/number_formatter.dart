import 'package:flutter/services.dart';

String formatNumber(num number) {
  String numberString = number.toStringAsFixed(2);
  List<String> parts = numberString.split('.');
  String integerPart = parts[0];
  String decimalPart = parts[1];

  String formattedInteger = '';
  for (int i = 0; i < integerPart.length; i++) {
    if (i > 0 && (integerPart.length - i) % 3 == 0) {
      formattedInteger += '.';
    }
    formattedInteger += integerPart[i];
  }

  return '$formattedInteger,$decimalPart';
}

class CustomDecimalInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text;

    // Impedisci più di una virgola
    if (newText.split(',').length > 2) {
      return oldValue;
    }

    // Rimuove tutti i punti (per riformattarli)
    newText = newText.replaceAll('.', '');

    // Gestisci separazione delle migliaia
    final parts = newText.split(',');
    final integerPart = parts[0];
    final formattedIntegerPart = _addThousandsSeparator(integerPart);

    if (parts.length > 1) {
      String decimalPart = parts[1];
      if (decimalPart.length > 2) {
        decimalPart = decimalPart.substring(0, 2);
      }
      newText = '$formattedIntegerPart,$decimalPart';
    } else {
      newText = formattedIntegerPart;
    }

    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }

  String _addThousandsSeparator(String input) {
    final buffer = StringBuffer();
    for (int i = 0; i < input.length; i++) {
      if (i > 0 && (input.length - i) % 3 == 0) {
        buffer.write('.');
      }
      buffer.write(input[i]);
    }
    return buffer.toString();
  }

  /// Metodo per ottenere un valore "grezzo" dal testo formattato
  static String getRawValue(String formattedText) {
    return formattedText.replaceAll('.', '').replaceAll(',', '.');
  }
}
