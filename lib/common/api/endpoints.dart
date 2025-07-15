// Funzione per ottenere l'URL completo
class BaseUrl {
  static String getBaseUrl(bool kReleaseMode) {
    return kReleaseMode
        ? 'https://secure.sellapersonalcredit.it/spcapimobile/api/'
        : 'https://sandbox.sellapersonalcredit.it/spcapimobile/api/';
  }
}
