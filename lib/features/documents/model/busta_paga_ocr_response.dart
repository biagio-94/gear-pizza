import 'package:gearpizza/common/model/dati_reddito.dart';

class BustaPagaOcrResponse {
  final double? retribuzioneLorda;
  final String? matricolaInps;
  final String? pivaDatoreLavoro;
  final String? nomeLavoratore;
  final String? cognomeLavoratore;
  final String? codiceFiscale;

  BustaPagaOcrResponse({
    this.retribuzioneLorda,
    this.matricolaInps,
    this.pivaDatoreLavoro,
    this.nomeLavoratore,
    this.cognomeLavoratore,
    this.codiceFiscale,
  });

  factory BustaPagaOcrResponse.fromMap(Map<String, dynamic> map) {
    return BustaPagaOcrResponse(
      retribuzioneLorda:
          map['reddito'] != null ? (map['reddito'] as num).toDouble() : null,
      matricolaInps: map['matricolaInps'] as String?,
      pivaDatoreLavoro: map['pivaDatoreLavoro'] as String?,
      nomeLavoratore: map['nome'] as String?,
      cognomeLavoratore: map['cognome'] as String?,
      codiceFiscale: map['codiceFiscale'] as String?,
    );
  }

  factory BustaPagaOcrResponse.fromOldRequest(DatiReddito map) {
    return BustaPagaOcrResponse(
      retribuzioneLorda: map.reddito?.toDouble(),
      matricolaInps: "",
      pivaDatoreLavoro: map.cfAzienda,
      nomeLavoratore: "",
      cognomeLavoratore: "",
      codiceFiscale: "",
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'retribuzioneLorda': retribuzioneLorda,
      'matricolaInps': matricolaInps,
      'pivaDatoreLavoro': pivaDatoreLavoro,
      'nomeLavoratore': nomeLavoratore,
      'cognomeLavoratore': cognomeLavoratore,
      'codiceFiscale': codiceFiscale,
    };
  }

  @override
  String toString() {
    return 'BustaPagaOcrResponse(retribuzioneLorda: $retribuzioneLorda, matricolaInps: $matricolaInps, pivaDatoreLavoro: $pivaDatoreLavoro, nomeLavoratore: $nomeLavoratore, cognomeLavoratore: $cognomeLavoratore, codiceFiscale: $codiceFiscale)';
  }
}
