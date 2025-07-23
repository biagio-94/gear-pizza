// Funzione per ottenere l'URL completo in base al contesto ( per ora uguale per pre e prod )
class BaseUrl {
  static String getBaseUrl(bool kReleaseMode) {
    return kReleaseMode
        ? 'https://gearpizza.revod.services/'
        : 'https://gearpizza.revod.services/';
  }
}
