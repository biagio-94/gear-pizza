String? validateEmail(String? value) {
  final email = value?.trim() ?? '';
  if (email.isEmpty) return 'L\'email è obbligatoria';
  final isValid = RegExp(r"^[\w\.-]+@[\w\.-]+\.\w{2,4}$").hasMatch(email);
  if (!isValid) return 'Inserisci un\'email valida';
  return null;
}

String? validateName(String? value) {
  final name = value?.trim() ?? '';
  if (name.isEmpty) return 'Il nome è obbligatorio';
  // Accetta lettere, spazi, apostrofi, trattini, nomi composti, no numeri
  final isValid = RegExp(r"^[A-Za-zÀ-ÿ\s'-]{2,50}$").hasMatch(name);
  if (!isValid) return 'Inserisci un nome valido';
  return null;
}
