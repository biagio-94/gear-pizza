String? validateEmail(String? value) {
  final email = value?.trim() ?? '';
  if (email.isEmpty) return 'L\'email è obbligatoria';
  final isValid = RegExp(r"^[\w\.-]+@[\w\.-]+\.\w{2,4}$").hasMatch(email);
  if (!isValid) return 'Inserisci un\'email valida';
  return null;
}
