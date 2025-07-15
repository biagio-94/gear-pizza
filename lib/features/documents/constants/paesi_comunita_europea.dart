const paesiComunitari = [
  "AUT", // Austria
  "BEL", // Belgio
  "BGR", // Bulgaria
  "HRV", // Croazia
  "CYP", // Cipro
  "CZE", // Repubblica Ceca
  "DNK", // Danimarca
  "EST", // Estonia
  "FIN", // Finlandia
  "FRA", // Francia
  "DEU", // Germania
  "GRC", // Grecia
  "HUN", // Ungheria
  "IRL", // Irlanda
  "ITA", // Italia
  "LVA", // Lettonia
  "LTU", // Lituania
  "LUX", // Lussemburgo
  "MLT", // Malta
  "NLD", // Paesi Bassi
  "POL", // Polonia
  "PRT", // Portogallo
  "ROU", // Romania
  "SVK", // Slovacchia
  "SVN", // Slovenia
  "ESP", // Spagna
  "SWE" // Svezia
];

String? mapFromOcrToTipoDoc(String? ocrValue) {
  switch (ocrValue) {
    case "CartaIdentita":
      return "CAR";
    case "Passaporto":
      return "PAS";
    case "Patente":
      return "PAT";
    default:
      return null;
  }
}

String? mapFromTipoDocToOCR(String? doctype) {
  switch (doctype) {
    case "CAR":
      return "CartaIdentita";
    case "PAS":
      return "Passaporto";
    case "PAT":
      return "Patente";
    default:
      return null;
  }
}

String? getTipoCittadinanza(String? cittadinanza) {
  const paesi = paesiComunitari;
  if (cittadinanza == "ITA") {
    return "I";
  } else if (paesi.contains(cittadinanza)) {
    return "C";
  } else {
    return "E";
  }
}

String? mapFromTipoCittadinanzaToOCR(String? tipo) {
  switch (tipo) {
    case "I":
      return "ITA";
    case "C":
      return paesiComunitari[0];
    case "E":
      return "notComunitary";
    default:
      return null;
  }
}
