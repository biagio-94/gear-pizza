// Funzione per ottenere l'URL completo
class BaseUrl {
  static String getBaseUrl(bool kReleaseMode) {
    return kReleaseMode
        ? 'https://gearpizza.revod.services/'
        : 'https://gearpizza.revod.services/';
  }
}
