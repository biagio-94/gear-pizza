class DashboardEndpoints {
  static String getPreventivi({required String? idRef}) {
    const basePath = '/secure/spc4bs/preventivi/elenco';
    if (idRef != null && idRef.isNotEmpty) {
      return '$basePath?referente=$idRef';
    }
    return basePath;
  }

  static String getProfileData() {
    return '/secure/spc4bs/intermediari';
  }

  static String getFunzionalita() {
    return '/secure/spc4bs/funzionalita';
  }

  static String getEliminaPreventivo(id) {
    return '/secure/spc4bs/preventivi/elimina/$id';
  }
}
