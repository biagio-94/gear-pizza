import 'package:gearpizza/common/model/dati_persona.dart';
import 'package:gearpizza/features/documents/constants/paesi_comunita_europea.dart';
import 'package:gearpizza/features/documents/documents_utils.dart';

class DocumentsOcrResponse {
  final String? tipologia;
  final String? numeroDocumento;
  final String? nome;
  final String? cognome;
  final DateTime? dataNascita;
  final String? comuneNascita;
  final String? provinciaNascita;
  final String? cittadinanza;
  final DateTime? dataRilascio;
  final DateTime? dataScadenza;
  final String? comuneResidenza;
  final String? provinciaResidenza;
  final String? indirizzoResidenza;
  final String? comuneRilascio;
  final String? provinciaRilascio;
  final int? capResidenza;
  final int? capDomicilio;
  final String? indirizzoDomicilio;
  final String? comuneDomicilio;
  final String? provinciaDomicilio;

  DocumentsOcrResponse({
    this.tipologia,
    this.numeroDocumento,
    this.nome,
    this.cognome,
    this.dataNascita,
    this.comuneNascita,
    this.provinciaNascita,
    this.cittadinanza,
    this.dataRilascio,
    this.dataScadenza,
    this.comuneResidenza,
    this.provinciaResidenza,
    this.indirizzoResidenza,
    this.comuneRilascio,
    this.provinciaRilascio,
    this.capResidenza,
    this.capDomicilio,
    this.indirizzoDomicilio,
    this.provinciaDomicilio,
    this.comuneDomicilio,
  });

  /// Crea l'istanza da una mappa flat dal payload.
  factory DocumentsOcrResponse.fromMap(Map<String, dynamic> map) {
    DateTime? parseIt(String? s) {
      if (s == null) return null;
      try {
        final parts = s.split('.');
        if (parts.length == 3) {
          final d = int.parse(parts[0]);
          final m = int.parse(parts[1]);
          final y = int.parse(parts[2]);
          return DateTime(y, m, d);
        }
      } catch (_) {}
      return null;
    }

    return DocumentsOcrResponse(
      tipologia: map['tipologia'] as String?,
      numeroDocumento: map['numero'] as String?,
      nome: map['nome'] as String?,
      cognome: map['cognome'] as String?,
      dataNascita: parseIt(map['dataNascita'] as String?),
      comuneNascita: map['comuneNascita'] as String?,
      comuneRilascio: map['comuneRilascio'] as String?,
      provinciaNascita: map['provinciaNascita'] as String?,
      cittadinanza:
          map['cittadinanza'] as String? ?? map['nazionalita'] as String?,
      dataRilascio: parseIt(map['dataRilascio'] as String?),
      dataScadenza: parseIt(map['dataScadenza'] as String?),
      comuneResidenza: map['comuneResidenza'] as String?,
      provinciaResidenza: map['provinciaResidenza'] as String?,
      indirizzoResidenza: map['indirizzoResidenza'] as String?,
    );
  }

  factory DocumentsOcrResponse.fromOldRequest(DatiPersona map) {
    return DocumentsOcrResponse(
      tipologia: mapFromTipoDocToOCR(map.tipoDocumento?.trim()),
      numeroDocumento: map.numeroDocumento?.trim(),
      nome: map.nome?.trim(),
      cognome: map.cognome?.trim(),
      dataNascita:
          map.dataNascita != null ? parseNumericDate(map.dataNascita) : null,
      comuneNascita: map.comuneNascita?.trim(),
      provinciaNascita: map.provinciaNascita?.trim(),
      cittadinanza: mapFromTipoCittadinanzaToOCR(map.nazionalita?.trim()),
      dataRilascio: map.dataRilascioDocumento != null
          ? parseNumericDate(map.dataRilascioDocumento)
          : null,
      dataScadenza: map.dataScadenzaDocumento != null
          ? parseNumericDate(map.dataScadenzaDocumento)
          : null,
      comuneResidenza: map.comuneResidenza?.trim(),
      provinciaResidenza: map.provinciaDiResidenza?.trim(),
      indirizzoResidenza: map.indirizzoResidenza?.trim(),
      comuneRilascio: map.comuneRilascioDocumento?.trim(),
      capResidenza: map.capResidenza,
      capDomicilio: map.capDomicilio,
      indirizzoDomicilio: map.indirizzoDomicilio?.trim(),
      comuneDomicilio: map.comuneDomicilio?.trim(),
      provinciaDomicilio: map.provinciaDomicilio?.trim(),
    );
  }

  Map<String, dynamic> toMap() {
    String fmt(DateTime? dt) => dt?.toIso8601String() ?? '';
    return {
      'tipologia': tipologia,
      'numero': numeroDocumento,
      'nome': nome,
      'cognome': cognome,
      'dataNascita': fmt(dataNascita),
      'comuneNascita': comuneNascita,
      'provinciaNascita': provinciaNascita,
      'cittadinanza': cittadinanza,
      'dataRilascio': fmt(dataRilascio),
      'dataScadenza': fmt(dataScadenza),
      'indirizzoResidenza': indirizzoResidenza,
    };
  }

  @override
  String toString() {
    return 'DocumentsOcrResponse(tipologia: $tipologia, numeroDocumento: $numeroDocumento, nome: $nome, cognome: $cognome, dataNascita: $dataNascita, comuneNascita: $comuneNascita, provinciaNascita: $provinciaNascita, cittadinanza: $cittadinanza, dataRilascio: $dataRilascio, dataScadenza: $dataScadenza, comuneResidenza: $comuneResidenza, provinciaResidenza: $provinciaResidenza, indirizzoResidenza: $indirizzoResidenza, comuneRilascio: $comuneRilascio, provinciaRilascio: $provinciaRilascio)';
  }
}
