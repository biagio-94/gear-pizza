import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_it.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('it')
  ];

  /// Titolo della schermata principale del dashboard.
  ///
  /// In it, this message translates to:
  /// **'DASHBOARD'**
  String get dashboard;

  /// Saluto iniziale.
  ///
  /// In it, this message translates to:
  /// **'Ciao '**
  String get hello;

  /// Messaggio di benvenuto per il primo accesso.
  ///
  /// In it, this message translates to:
  /// **'benvenuto in Sella Personal Credit for Business.'**
  String get welcome;

  /// Messaggio di bentornato per gli utenti già registrati.
  ///
  /// In it, this message translates to:
  /// **'bentornato in Sella Personal Credit for Business.'**
  String get welcome2;

  /// Richiesta su come procedere.
  ///
  /// In it, this message translates to:
  /// **'Come vuoi procedere?'**
  String get action;

  /// Testo per creare un nuovo preventivo.
  ///
  /// In it, this message translates to:
  /// **'Crea nuovo preventivo'**
  String get newEstimate;

  /// Etichetta per la calcolatrice finanziaria.
  ///
  /// In it, this message translates to:
  /// **'Calcolatrice finanziaria'**
  String get financialCalculator;

  /// Titolo per la lista dei preventivi.
  ///
  /// In it, this message translates to:
  /// **'I tuoi preventivi'**
  String get yourEstimates;

  /// Prompt per scegliere un prodotto.
  ///
  /// In it, this message translates to:
  /// **'Scegli il prodotto'**
  String get choose_product;

  /// Domanda per selezionare il prodotto da finanziare.
  ///
  /// In it, this message translates to:
  /// **'Quale prodotto vuoi finanziare?'**
  String get what_product;

  /// Etichetta per il nome dell'azienda.
  ///
  /// In it, this message translates to:
  /// **'Ragione sociale'**
  String get company_name;

  /// Etichetta per il codice dealer.
  ///
  /// In it, this message translates to:
  /// **'Codice dealer'**
  String get dealer_code;

  /// Etichetta per il preventivo.
  ///
  /// In it, this message translates to:
  /// **'PREVENTIVO'**
  String get loan;

  /// Istruzioni per procedere con o modificare il preventivo.
  ///
  /// In it, this message translates to:
  /// **'Procedi con la tua proposta di preventivo o modifica i vari campi'**
  String get loanProceed;

  /// Testo separatore tra alternative.
  ///
  /// In it, this message translates to:
  /// **'Oppure'**
  String get or;

  /// Testo per modificare il preventivo.
  ///
  /// In it, this message translates to:
  /// **'Modifica il preventivo'**
  String get modifyLoan;

  /// Etichetta per la rata mensile.
  ///
  /// In it, this message translates to:
  /// **'Rata mensile'**
  String get monthlyPayment;

  /// Etichetta per il numero di rate.
  ///
  /// In it, this message translates to:
  /// **'N° Rate'**
  String get installmentNumber;

  /// Indicatore del Tasso Annuo Nominale (TAN).
  ///
  /// In it, this message translates to:
  /// **'TAN'**
  String get tan;

  /// Indicatore del Tasso Annuo Effettivo Globale (TAEG).
  ///
  /// In it, this message translates to:
  /// **'TAEG'**
  String get taeg;

  /// Etichetta per l'importo totale richiesto.
  ///
  /// In it, this message translates to:
  /// **'Totale richiesto:'**
  String get totalRequired;

  /// Testo del pulsante per procedere con il preventivo.
  ///
  /// In it, this message translates to:
  /// **'PROCEDI CON IL PREVENTIVO'**
  String get proceedWithLoan;

  /// Etichetta per l'assicurazione.
  ///
  /// In it, this message translates to:
  /// **'ASSICURAZIONE'**
  String get insurance;

  /// Prompt per selezionare la copertura assicurativa.
  ///
  /// In it, this message translates to:
  /// **'Seleziona la copertura assicurativa da finanziare'**
  String get choose_insurance;

  /// Testo del pulsante per procedere con l'assicurazione.
  ///
  /// In it, this message translates to:
  /// **'Procedi con assicurazione'**
  String get calcolculatorButtonText1;

  /// Testo del pulsante per procedere senza l'assicurazione.
  ///
  /// In it, this message translates to:
  /// **'Procedi senza assicurazione'**
  String get calcolculatorButtonText2;

  /// Testo del pulsante per eseguire un nuovo calcolo.
  ///
  /// In it, this message translates to:
  /// **'Esegui nuovo calcolo'**
  String get calcolculatorButtonNewImport;

  /// Messaggio visualizzato quando non ci sono notifiche.
  ///
  /// In it, this message translates to:
  /// **'Nessuna notifica disponibile.'**
  String get noNotifications;

  /// Testo del pulsante per inviare un preventivo in modalità anonima.
  ///
  /// In it, this message translates to:
  /// **'Invia preventivo anonimo'**
  String get sendPDFSecciAnonymus;

  /// Titolo della sezione del preventivo.
  ///
  /// In it, this message translates to:
  /// **'Il tuo preventivo'**
  String get yourLoan;

  /// Descrizione per la schermata di regolazione dell'importo della rata.
  ///
  /// In it, this message translates to:
  /// **'Aumenta o diminuisci l\'importo della rata attraverso gli appositi pulsanti. '**
  String get multiRataScreenDescription;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'it'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'it':
      return AppLocalizationsIt();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
