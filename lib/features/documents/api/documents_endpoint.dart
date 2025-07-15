class DocumentEndpoints {
  static const String _baseOcrEndpoint =
      '/secure/spc4bs/preventivi/documenti/ocr';
  static const String _baseReferentiOcrEndpoint =
      '/secure/spc4bs/referenti/documenti/ocr';
  static const String _baseBustaPagaOcr =
      '/secure/spc4bs/preventivi/reddito/ocr';
  static const String provinceEndpoint = '/secure/spc4bs/province';
  static const String tipiDocumenti = '/secure/spc4bs/preventivi/tipiDocumento';
  static const String tipiOccupazione = '/secure/spc4bs/occupazioni';
  static const String _baseSaveDoc = '/secure/spc4bs/preventivi/datianagrafici';
  static const String _baseReferentiSaveDoc =
      '/secure/spc4bs/referenti/datianagrafici';
  static const String _baseSaveTessera = '/secure/spc4bs/preventivi/ts';
  static const String _baseReferentiSaveTessera = '/secure/spc4bs/referenti/ts';
  static const String _baseSaveBusta = '/secure/spc4bs/preventivi/reddito';

  static const String saveDatiContatto =
      '/secure/spc4bs/preventivi/dati-contatto';
  static const String sendAnonymusSecci =
      '/secure/spc4bs/preventivi/invio-secci';

  static String getOcrDocUrl(TipoSoggetto tipoSoggetto, DocType tipoDocumento) {
    return '$_baseOcrEndpoint/${_tipoSoggettoToString(tipoSoggetto)}/${_docTypeToString(tipoDocumento)}';
  }

  static String getReferentiOcrDocUrl(DocType tipoDocumento) {
    return '$_baseReferentiOcrEndpoint/${_docTypeToString(tipoDocumento)}';
  }

  static String getOcrBustaPagaUrl(
    TipoSoggetto tipoSoggetto,
  ) {
    return '$_baseBustaPagaOcr/${_tipoSoggettoToString(tipoSoggetto)}';
  }

  static String getStatoPrivacy(int id) {
    return '/secure/spc4bs/preventivi/stato-privacy/$id';
  }

  static String sendEmailAndSMS(int id) {
    return '/secure/spc4bs/preventivi/invio-privacy/$id';
  }

  static String getSaveDocPersona(String id, TipoSoggetto tipoSoggetto) {
    return '$_baseSaveDoc/$id/${_tipoSoggettoToString(tipoSoggetto)}';
  }

  static String getReferentiSaveDocPersona(String id) {
    return '$_baseReferentiSaveDoc/$id';
  }

  static String getIdCardFormData(int id) {
    return '$_baseSaveDoc/$id/${_tipoSoggettoToString(TipoSoggetto.cliente)}';
  }

  static String getSaveTessera(String id, TipoSoggetto tipoSoggetto) {
    return '$_baseSaveTessera/$id/${_tipoSoggettoToString(tipoSoggetto)}';
  }

  static String getReferentiSaveTessera(String id) {
    return '$_baseReferentiSaveTessera/$id';
  }

  static String getSaveBustaPaga(String id, TipoSoggetto tipoSoggetto) {
    return '$_baseSaveBusta/$id/${_tipoSoggettoToString(tipoSoggetto)}';
  }

  static String getReferentiSaveBustaPaga(
      String id, TipoSoggetto tipoSoggetto) {
    return '$_baseSaveBusta/$id/${_tipoSoggettoToString(tipoSoggetto)}';
  }

  static String getTesseraFormData(int id) {
    return '$_baseSaveTessera/$id/${_tipoSoggettoToString(TipoSoggetto.cliente)}';
  }

  /// Metodo per convertire `DocType` in stringa
  static String _docTypeToString(DocType docType) {
    switch (docType) {
      case DocType.idCard:
        return 'cdi';
      case DocType.tesseraSanitaria:
        return 'ts';
      case DocType.bustaPaga:
        return 'bustapaga';
    }
  }

  /// Metodo per convertire `TipoSoggetto` in stringa
  static String _tipoSoggettoToString(TipoSoggetto tipoSoggetto) {
    switch (tipoSoggetto) {
      case TipoSoggetto.cliente:
        return 'cl';
      case TipoSoggetto.coobbligato:
        return 'co';
      case TipoSoggetto.referente:
        return 'rf';
    }
  }
}

/// Enumerazione per il tipo di documento
enum DocType { idCard, tesseraSanitaria, bustaPaga }

/// Enumerazione per il tipo di soggetto
enum TipoSoggetto { cliente, coobbligato, referente }
