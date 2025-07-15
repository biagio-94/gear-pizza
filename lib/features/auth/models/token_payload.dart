/// Modello principale che rappresenta il payload JWT
class TokenPayload {
  final List<int> userDelegations;
  final Anagrafica anagrafica;
  final String tipoItermediario;
  final int giorniUltimoCambioPassword;
  final bool abilitazioneFirmaDigitale;
  final bool abilitazioneLiquidazione;
  final bool abilitazioneSimplypay;
  final bool abilitazioneSalvaPratica;
  final bool abilitazioneFirmaRemota;
  final bool abilitazioneIvass;
  final bool checkAbilLuogoFirma;
  final bool isIrregolare;
  final bool isConvenzionato;
  final bool isAttivo;
  final List<String> ruoliComunicazioni;
  final bool abilitazioneSecondiAcquisti;
  final bool flagMailCell;
  final bool sospesiDaDeliberare;
  final String tipologiaItermediario;
  final int codiceCapoCatena;
  final String username;
  final List<Authority> authorities;
  final String spc4bs;
  final String sub;
  final int exp;

  TokenPayload({
    required this.userDelegations,
    required this.anagrafica,
    required this.tipoItermediario,
    required this.giorniUltimoCambioPassword,
    required this.abilitazioneFirmaDigitale,
    required this.abilitazioneLiquidazione,
    required this.abilitazioneSimplypay,
    required this.abilitazioneSalvaPratica,
    required this.abilitazioneFirmaRemota,
    required this.abilitazioneIvass,
    required this.checkAbilLuogoFirma,
    required this.isIrregolare,
    required this.isConvenzionato,
    required this.isAttivo,
    required this.ruoliComunicazioni,
    required this.abilitazioneSecondiAcquisti,
    required this.flagMailCell,
    required this.sospesiDaDeliberare,
    required this.tipologiaItermediario,
    required this.codiceCapoCatena,
    required this.username,
    required this.authorities,
    required this.spc4bs,
    required this.sub,
    required this.exp,
  });

  factory TokenPayload.fromJson(Map<String, dynamic> json) {
    return TokenPayload(
      userDelegations: (json['userDelegations'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      anagrafica:
          Anagrafica.fromJson(json['anagrafica'] as Map<String, dynamic>),
      tipoItermediario: json['tipoItermediario'] as String,
      giorniUltimoCambioPassword: json['giorniUltimoCambioPassword'] as int,
      abilitazioneFirmaDigitale: json['abilitazioneFirmaDigitale'] as bool,
      abilitazioneLiquidazione: json['abilitazioneLiquidazione'] as bool,
      abilitazioneSimplypay: json['abilitazioneSimplypay'] as bool,
      abilitazioneSalvaPratica: json['abilitazioneSalvaPratica'] as bool,
      abilitazioneFirmaRemota: json['abilitazioneFirmaRemota'] as bool,
      abilitazioneIvass: json['abilitazioneIvass'] as bool,
      checkAbilLuogoFirma: json['checkAbilLuogoFirma'] as bool,
      isIrregolare: json['isIrregolare'] as bool,
      isConvenzionato: json['isConvenzionato'] as bool,
      isAttivo: json['isAttivo'] as bool,
      ruoliComunicazioni: (json['ruoliComunicazioni'] as List<dynamic>)
          .map((e) => (e as String).trim())
          .toList(),
      abilitazioneSecondiAcquisti: json['abilitazioneSecondiAcquisti'] as bool,
      flagMailCell: json['flagMailCell'] as bool,
      sospesiDaDeliberare: json['sospesiDaDeliberare'] as bool,
      tipologiaItermediario: json['tipologiaItermediario'] as String,
      codiceCapoCatena: json['codiceCapoCatena'] as int,
      username: json['username'] as String,
      authorities: (json['authorities'] as List<dynamic>)
          .map((e) => Authority.fromJson(e as Map<String, dynamic>))
          .toList(),
      spc4bs: json['spc4bs'] as String,
      sub: json['sub'] as String,
      exp: json['exp'] as int,
    );
  }
}

/// Modello per il campo 'anagrafica'
class Anagrafica {
  final int codice;
  final int abi;
  final String anagraficaDiGruppo;
  final String ateco;
  final int capitaleSociale;
  final String causaleAnnullo;
  final String ragioneSociale1;
  final String ragioneSociale2;
  final String codiceFiscale;
  final String partitaIva;
  final String tipoAnagrafica;
  final String email;
  final String nome;
  final String cognome;
  final String cellulare;
  final int dataNascita;
  final String sesso;
  final String indirizzo1;
  final String indirizzo2;
  final String provincia;
  final String comune;
  final int cap;
  final String fax;
  final String telefono;
  final String numeroDocumento;
  final String comuneDocumento;
  final String provinciaDocumento;
  final int dataRilascioDocumento;
  final int dataScadenzaDocumento;
  final String tipoDocumento;
  final String cittadinanza;
  final int dataScadenzaPermessoSoggiorno;
  final String denominazioneDatoreLavoro;
  final String telefonoDatoreLavoro;
  final String indirizzoDatoreLavoro;
  final String provinciaDatoreLavoro;
  final String localitaDatoreLavoro;
  final int capDatoreLavoro;
  final String partitaIvaDatoreLavoro;
  final int residenteDal;
  final int dataInizioRapportoDiLavoro;
  final int pin;
  final String nazioneNascita;
  final String provinciaNascita;
  final String comuneNascita;
  final String consensoCommerciale;
  final String formaGiuridica;
  final String numCameraCommercio;
  final String clienteBanca;
  final String ramogruppo;
  final String sottogruppo;
  final String provinciaCamercaCommercio;
  final int capSedeLegale;
  final String indirizzoSedeLegale1;
  final String indirizzoSedeLegale2;
  final String comuneSedeLegale;
  final String provinciaSedeLegale;
  final String convenzionato;
  final String legaleRappresentante;
  final String flagDatiPersonali;
  final String consensoCreditizie;
  final int dataVariazione;
  final String ragioneSociale;
  final String indirizzo;
  final String recapitoTelefonico;
  final String indirizzoSedeLegale;
  final String ragione;

  Anagrafica({
    required this.codice,
    required this.abi,
    required this.anagraficaDiGruppo,
    required this.ateco,
    required this.capitaleSociale,
    required this.causaleAnnullo,
    required this.ragioneSociale1,
    required this.ragioneSociale2,
    required this.codiceFiscale,
    required this.partitaIva,
    required this.tipoAnagrafica,
    required this.email,
    required this.nome,
    required this.cognome,
    required this.cellulare,
    required this.dataNascita,
    required this.sesso,
    required this.indirizzo1,
    required this.indirizzo2,
    required this.provincia,
    required this.comune,
    required this.cap,
    required this.fax,
    required this.telefono,
    required this.numeroDocumento,
    required this.comuneDocumento,
    required this.provinciaDocumento,
    required this.dataRilascioDocumento,
    required this.dataScadenzaDocumento,
    required this.tipoDocumento,
    required this.cittadinanza,
    required this.dataScadenzaPermessoSoggiorno,
    required this.denominazioneDatoreLavoro,
    required this.telefonoDatoreLavoro,
    required this.indirizzoDatoreLavoro,
    required this.provinciaDatoreLavoro,
    required this.localitaDatoreLavoro,
    required this.capDatoreLavoro,
    required this.partitaIvaDatoreLavoro,
    required this.residenteDal,
    required this.dataInizioRapportoDiLavoro,
    required this.pin,
    required this.nazioneNascita,
    required this.provinciaNascita,
    required this.comuneNascita,
    required this.consensoCommerciale,
    required this.formaGiuridica,
    required this.numCameraCommercio,
    required this.clienteBanca,
    required this.ramogruppo,
    required this.sottogruppo,
    required this.provinciaCamercaCommercio,
    required this.capSedeLegale,
    required this.indirizzoSedeLegale1,
    required this.indirizzoSedeLegale2,
    required this.comuneSedeLegale,
    required this.provinciaSedeLegale,
    required this.convenzionato,
    required this.legaleRappresentante,
    required this.flagDatiPersonali,
    required this.consensoCreditizie,
    required this.dataVariazione,
    required this.ragioneSociale,
    required this.indirizzo,
    required this.recapitoTelefonico,
    required this.indirizzoSedeLegale,
    required this.ragione,
  });

  factory Anagrafica.fromJson(Map<String, dynamic> json) {
    return Anagrafica(
      codice: json['codice'] as int,
      abi: json['abi'] as int,
      anagraficaDiGruppo: json['anagraficaDiGruppo'] as String,
      ateco: json['ateco'] as String,
      capitaleSociale: json['capitaleSociale'] as int,
      causaleAnnullo: json['causaleAnnullo'] as String,
      ragioneSociale1: json['ragioneSociale1'] as String,
      ragioneSociale2: json['ragioneSociale2'] as String,
      codiceFiscale: json['codiceFiscale'] as String,
      partitaIva: json['partitaIva'] as String,
      tipoAnagrafica: json['tipoAnagrafica'] as String,
      email: json['email'] as String,
      nome: json['nome'] as String,
      cognome: json['cognome'] as String,
      cellulare: json['cellulare'] as String,
      dataNascita: json['dataNascita'] as int,
      sesso: json['sesso'] as String,
      indirizzo1: json['indirizzo1'] as String,
      indirizzo2: json['indirizzo2'] as String,
      provincia: json['provincia'] as String,
      comune: json['comune'] as String,
      cap: json['cap'] as int,
      fax: json['fax'] as String,
      telefono: json['telefono'] as String,
      numeroDocumento: json['numeroDocumento'] as String,
      comuneDocumento: json['comuneDocumento'] as String,
      provinciaDocumento: json['provinciaDocumento'] as String,
      dataRilascioDocumento: json['dataRilascioDocumento'] as int,
      dataScadenzaDocumento: json['dataScadenzaDocumento'] as int,
      tipoDocumento: json['tipoDocumento'] as String,
      cittadinanza: json['cittadinanza'] as String,
      dataScadenzaPermessoSoggiorno:
          json['dataScadenzaPermessoSoggiorno'] as int,
      denominazioneDatoreLavoro: json['denominazioneDatoreLavoro'] as String,
      telefonoDatoreLavoro: json['telefonoDatoreLavoro'] as String,
      indirizzoDatoreLavoro: json['indirizzoDatoreLavoro'] as String,
      provinciaDatoreLavoro: json['provinciaDatoreLavoro'] as String,
      localitaDatoreLavoro: json['localitaDatoreLavoro'] as String,
      capDatoreLavoro: json['capDatoreLavoro'] as int,
      partitaIvaDatoreLavoro: json['partitaIvaDatoreLavoro'] as String,
      residenteDal: json['residenteDal'] as int,
      dataInizioRapportoDiLavoro: json['dataInizioRapportoDiLavoro'] as int,
      pin: json['pin'] as int,
      nazioneNascita: json['nazioneNascita'] as String,
      provinciaNascita: json['provinciaNascita'] as String,
      comuneNascita: json['comuneNascita'] as String,
      consensoCommerciale: json['consensoCommerciale'] as String,
      formaGiuridica: json['formaGiuridica'] as String,
      numCameraCommercio: json['numCameraCommercio'] as String,
      clienteBanca: json['clienteBanca'] as String,
      ramogruppo: json['ramogruppo'] as String,
      sottogruppo: json['sottogruppo'] as String,
      provinciaCamercaCommercio: json['provinciaCamercaCommercio'] as String,
      capSedeLegale: json['capSedeLegale'] as int,
      indirizzoSedeLegale1: json['indirizzoSedeLegale1'] as String,
      indirizzoSedeLegale2: json['indirizzoSedeLegale2'] as String,
      comuneSedeLegale: json['comuneSedeLegale'] as String,
      provinciaSedeLegale: json['provinciaSedeLegale'] as String,
      convenzionato: json['convenzionato'] as String,
      legaleRappresentante: json['legaleRappresentante'] as String,
      flagDatiPersonali: json['flagDatiPersonali'] as String,
      consensoCreditizie: json['consensoCreditizie'] as String,
      dataVariazione: json['dataVariazione'] as int,
      ragioneSociale: json['ragioneSociale'] as String,
      indirizzo: json['indirizzo'] as String,
      recapitoTelefonico: json['recapitoTelefonico'] as String,
      indirizzoSedeLegale: json['indirizzoSedeLegale'] as String,
      ragione: json['ragione'] as String,
    );
  }
}

/// Modello per gli oggetti contenuti nell’array 'authorities'
class Authority {
  final String authority;

  Authority({
    required this.authority,
  });

  factory Authority.fromJson(Map<String, dynamic> json) {
    return Authority(
      authority: json['authority'] as String,
    );
  }
}
