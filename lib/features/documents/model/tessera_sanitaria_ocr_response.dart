import 'package:gearpizza/common/model/dati_tessera_sanitaria.dart';
import 'package:gearpizza/features/documents/documents_utils.dart';

class TesseraSanitariaOcrResponse {
  final String? numeroDocumento;
  final String? nome;
  final String? cognome;
  final String? sesso;
  final String? codiceFiscale;
  final DateTime? dataNascita;
  final String? comuneNascita;
  final String? provinciaNascita;
  final DateTime? dataScadenza;

  TesseraSanitariaOcrResponse({
    this.numeroDocumento,
    this.nome,
    this.cognome,
    this.sesso,
    this.codiceFiscale,
    this.dataNascita,
    this.comuneNascita,
    this.provinciaNascita,
    this.dataScadenza,
  });

  // Metodo per creare l'istanza da una mappa
  factory TesseraSanitariaOcrResponse.fromMap(Map<String, dynamic> map) {
    return TesseraSanitariaOcrResponse(
      numeroDocumento: map['numeroTessera'] as String?,
      nome: map['nome'] as String?,
      cognome: map['cognome'] as String?,
      sesso: map['sesso'] as String?,
      codiceFiscale: map['codice'] as String?,
      dataNascita: map['dataNascita'] != null
          ? DateTime.parse(map['dataNascita'] as String)
          : null,
      comuneNascita: map['comuneNascita']?['nome'] as String?,
      provinciaNascita: map['comuneNascita']?['provincia'] as String?,
      dataScadenza: map['dataScadenza'] != null
          ? DateTime.parse(map['dataScadenza'] as String)
          : null,
    );
  }

  factory TesseraSanitariaOcrResponse.fromOldRequest(
      DatiTesseraSanitaria map, String provinciaNascita) {
    return TesseraSanitariaOcrResponse(
      numeroDocumento: map.numeroTessera?.trim(),
      nome: map.nome?.trim(),
      cognome: map.cognome?.trim(),
      sesso: map.sesso?.trim(),
      codiceFiscale: map.codiceFiscale?.trim(),
      dataNascita:
          map.dataNascita != null ? parseNumericDate(map.dataNascita) : null,
      comuneNascita: map.cittaNascita?.trim(),
      provinciaNascita: provinciaNascita.trim(),
      dataScadenza:
          map.dataScadenza != null ? parseNumericDate(map.dataScadenza) : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'numeroTessera': numeroDocumento,
      'nome': nome,
      'cognome': cognome,
      'sesso': sesso,
      'codiceFiscale': codiceFiscale,
      'dataNascita': dataNascita?.toIso8601String(),
      'comuneNascita': comuneNascita,
      'provinciaNascita': provinciaNascita,
      'dataScadenza': dataScadenza?.toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'TesseraSanitariaOcrResponse( numeroDocumento: $numeroDocumento, nome: $nome, cognome: $cognome, sesso: $sesso, codiceFiscale: $codiceFiscale, dataNascita: $dataNascita, comuneNascita: $comuneNascita, provinciaNascita: $provinciaNascita, dataScadenza: $dataScadenza)';
  }
}
