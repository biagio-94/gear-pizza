// Funzione per formattare la data da "YYYYMMDD" a "dd MMMM yyyy"
import 'package:intl/intl.dart';

String formatBirthDate(String? birthDateStr) {
  // Verifico che la stringa sia valida e lunga 8 caratteri
  if (birthDateStr == null || birthDateStr.length != 8) {
    return 'N/A';
  }

  try {
    // Estrai anno, mese e giorno dalla stringa
    final year = int.parse(birthDateStr.substring(0, 4));
    final month = int.parse(birthDateStr.substring(4, 6));
    final day = int.parse(birthDateStr.substring(6, 8));
    // Creo un oggetto DateTime
    final date = DateTime(year, month, day);
    // Formatto la data utilizzando il formato desiderato.
    // Qui uso "it_IT" per far comparire i nomi dei mesi in italiano.
    return DateFormat('dd MMMM yyyy', 'it_IT').format(date);
  } catch (e) {
    // In caso di errore restituisco 'N/A'
    return 'N/A';
  }
}
