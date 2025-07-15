import 'package:gearpizza/features/documents/documents_utils.dart';

String? validateFieldWithExpected(
  String? value,
  String fieldName,
  String? expectedValue,
) {
  if (value == null || value.isEmpty) {
    return 'Campo obbligatorio';
  }
  if (expectedValue != null && expectedValue.trim() != value) {
    return 'Non corrisponde a dello step precedente';
  }
  // Regex per accettare solo lettere
  if (!RegExp(r'^[a-zA-ZÀ-ÿ\s]+$').hasMatch(value)) {
    return 'Il campo può contenere solo lettere';
  }

  return null;
}

String? validateDate(DateTime? date, String fieldName, DateTime? expectedDate) {
  if (date == null) {
    return 'Campo obbligatorio';
  }
  final dateFromatted = formatDate(date);
  final expectedDateFormatted = formatDate(expectedDate);

  if (expectedDate != null && dateFromatted != expectedDateFormatted) {
    return 'Non corrisponde a quella dello step precedente';
  }

  // Calcolare l'età
  final today = DateTime.now();
  final age = today.year - date.year;

  // Controllo per meno di 18 anni
  if (age < 18 ||
      (age == 18 && today.month < date.month) ||
      (age == 18 && today.month == date.month && today.day < date.day)) {
    return 'Richiesti più di 18 anni';
  }

  // Controllo per più di 70 anni
  if (age > 70 ||
      (age == 70 && today.month > date.month) ||
      (age == 70 && today.month == date.month && today.day > date.day)) {
    return 'Richiesti meno di 70 anni';
  }
  return null;
}

String? validateField(String? value, String fieldName) {
  if (value == null || value.trim().isEmpty) {
    return 'Il campo è obbligatorio';
  }

  // Regex per accettare solo lettere e numeri
  if (!RegExp(r'^[a-zA-ZÀ-ÿ0-9]+$').hasMatch(value)) {
    return 'Il campo può contenere solo lettere e numeri';
  }

  return null;
}

String? validateSearchInput(
  String? value,
) {
  if (value == null || value.trim().isEmpty) {
    return 'Il campo è obbligatorio';
  }

  return null;
}

String? validateFieldOnlyLetters(String? value, String fieldName) {
  if (value == null || value.trim().isEmpty) {
    return 'Il campo è obbligatorio';
  }

  // Regex per accettare solo lettere
  if (!RegExp(r'^[a-zA-ZÀ-ÿ\s]+$').hasMatch(value)) {
    return 'Il campo può contenere solo lettere';
  }

  return null;
}

String? validateFieldOnlyNumbers(String? value, String fieldName) {
  if (value == null || value.trim().isEmpty) {
    return 'Il campo è obbligatorio';
  }

  // Regex per accettare solo numeri (spazi opzionali se necessario)
  if (!RegExp(r'^\d+$').hasMatch(value)) {
    return 'Il campo  può contenere solo numeri';
  }

  return null;
}

String? validateTesseraNumber(String? value, String fieldName) {
  if (value == null || value.trim().isEmpty) {
    return 'Il campo è obbligatorio';
  }

  // Regex per accettare solo numeri (spazi opzionali se necessario)
  if (!RegExp(r'^\d+$').hasMatch(value)) {
    return 'Il campo  può contenere solo numeri';
  }

  if (value.length != 20) {
    return 'Il campo  deve contenere 20 caratteri';
  }

  return null;
}

String? validateOnlyReddito(String? value, String fieldName) {
  if (value == null || value.trim().isEmpty) {
    return 'Il campo $fieldName è obbligatorio';
  }
  if (value.trim() == "0.0") {
    return 'Inserisci un importo valido';
  }

  // Regex: accetta numeri con '.' come separatore migliaia e ',' o '.' come separatore decimale
  if (!RegExp(r'^\d{1,3}(\.\d{3})*(,?\d+)?$|^\d{1,3}(,\d{3})*(\.?\d+)?$')
      .hasMatch(value.trim())) {
    return 'Deve essere un numero valido (es: 1.234,56 o 1234.56)';
  }

  return null;
}

String? validateFieldIndirizzo(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'Il campo è obbligatorio';
  }

  // Regex per accettare solo lettere, numeri e spazi
  if (!RegExp(r'^[a-zA-ZÀ-ÿ0-9\s]+$').hasMatch(value)) {
    return 'Il campo può contenere solo lettere, numeri e spazi';
  }

  return null;
}

String? validateScadenza(DateTime? date, String fieldName) {
  if (date == null) {
    return 'Campo obbligatorio';
  }

  final today = DateTime.now();
  if (date.isBefore(today)) {
    return 'Data scadenza non valida';
  }

  return null;
}

String? validateBirthDate(DateTime? date, String fieldName) {
  if (date == null) {
    return 'Campo obbligatorio';
  }
  if (date.isAfter(DateTime.now())) {
    return 'Data di nascita non valida';
  }
  if (date.isAfter(DateTime(DateTime.now().year - 18))) {
    return 'Richiesti più di 18 anni';
  }
  return null;
}

String? validateReleaseDate(DateTime? date, String fieldName) {
  if (date == null) {
    return 'Campo obbligatorio';
  }
  if (date.isAfter(DateTime.now())) {
    return 'Data superiore ad oggi non valida';
  }
  return null;
}

String? validateItalianCAP(String? cap) {
  if (cap == null || cap.trim().isEmpty) {
    return 'Il campo è obbligatorio';
  }
  // Accetta cinque cifre decimali (0–9), compresa la possibilità che inizi con lo 0
  if (!RegExp(r'^[0-9]{5}$').hasMatch(cap)) {
    return 'Il CAP deve essere composto da 5 cifre';
  }
  return null;
}

String? validateItalianPhoneNumber(String? phoneNumber) {
  if (phoneNumber == null || phoneNumber.trim().isEmpty) {
    return 'Il campo è obbligatorio';
  }
  if (!RegExp(r'^\d{10}$').hasMatch(phoneNumber)) {
    return 'Deve contenere 10 cifre senza caratteri speciali';
  }
  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Inserisci un\'email valida.';
  }
  // Regex per validare l'email
  final emailRegex =
      RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
  if (!emailRegex.hasMatch(value)) {
    return 'Inserisci un\'email con formato valido.';
  }
  return null;
}
