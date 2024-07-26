import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi', 'fr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
    String? frText = '',
  }) =>
      [enText, hiText, frText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // SplashScreen
  {
    'qef27p0e': {
      'en': 'Learn Car',
      'fr': 'Apprendre la voiture',
      'hi': 'कार सीखें',
    },
    'asvy7gzc': {
      'en': 'Learn and Practice rules and regulation ofr\nCar Driving',
      'fr':
          'Apprenez et pratiquez les règles et réglementations de la conduite automobile',
      'hi': 'कार ड्राइविंग के नियम और विनियमन सीखें और उनका अभ्यास करें',
    },
    'gjfx8qws': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // UserAccess
  {
    '9qij8b4u': {
      'en': 'Learn Car',
      'fr': 'Apprendre la voiture',
      'hi': 'कार सीखें',
    },
    'pc7wjjyz': {
      'en': 'Learn and Practice rules and regulation for\nCar Driving',
      'fr':
          'Apprenez et pratiquez les règles et réglementations relatives à la\nconduite automobile',
      'hi': 'कार ड्राइविंग के लिए नियम और विनियमन सीखें और अभ्यास करें',
    },
    '8pjsmffv': {
      'en': 'Login',
      'fr': 'Se connecter',
      'hi': 'लॉग इन करें',
    },
    'dodp8sux': {
      'en': 'REGISTER',
      'fr': 'REGISTRE',
      'hi': 'पंजीकरण करवाना',
    },
    'xkqcl2nh': {
      'en': 'I\'ve read and accept the ',
      'fr': 'J\'ai lu et j\'accepte les',
      'hi': 'मैंने पढ़ लिया है और स्वीकार करता हूँ',
    },
    'l7zwnn4e': {
      'en': 'terms & conditions',
      'fr': 'termes et conditions',
      'hi': 'नियम एवं शर्तें',
    },
    'gjfx8qws': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // SignUp
  {
    '9fsm1qjl': {
      'en': 'Phone number',
      'fr': 'Numéro de téléphone',
      'hi': 'फ़ोन नंबर',
    },
    '88fktxja': {
      'en': 'GET OTP',
      'fr': 'OBTENIR OTP',
      'hi': 'ओटीपी प्राप्त करें',
    },
    'm9y0eipp': {
      'en': 'Already have an account? ',
      'fr': 'Vous avez déjà un compte?',
      'hi': 'क्या आपके पास पहले से एक खाता मौजूद है?',
    },
    'bno2yceg': {
      'en': 'click here',
      'fr': 'Cliquez ici',
      'hi': 'यहाँ क्लिक करें',
    },
    '0nc5sz6h': {
      'en': 'Sign Up',
      'fr': 'S\'inscrire',
      'hi': 'साइन अप करें',
    },
    '3gxn46vg': {
      'en': 'Please enter your details to \nsign up and create an account',
      'fr':
          'Veuillez saisir vos coordonnées pour\nvous inscrire et créer un compte',
      'hi': 'कृपया साइन अप करने और खाता बनाने के लिए अपना विवरण दर्ज करें',
    },
    'gjfx8qws': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // Login
  {
    'zuhkabk0': {
      'en': 'Phone number',
      'fr': 'Numéro de téléphone',
      'hi': 'फ़ोन नंबर',
    },
    'ua2dt0bp': {
      'en': 'GET OTP',
      'fr': 'OBTENIR OTP',
      'hi': 'ओटीपी प्राप्त करें',
    },
    'aspry26x': {
      'en': 'Don\'t have an account? ',
      'fr': 'Vous n\'avez pas de compte ?',
      'hi': 'क्या आपके पास खाता नहीं है?',
    },
    'rbtmembi': {
      'en': 'Signup',
      'fr': 'S\'inscrire',
      'hi': 'साइन अप करें',
    },
    'd0v2nbmh': {
      'en': 'Log In',
      'fr': 'Se connecter',
      'hi': 'लॉग इन करें',
    },
    'kudzaham': {
      'en': 'Please enter your details to\n log into your account',
      'fr':
          'Veuillez saisir vos coordonnées pour\nvous connecter à votre compte',
      'hi': 'कृपया अपने खाते में लॉग इन करने के लिए अपना विवरण दर्ज करें',
    },
    'jtwvdhrx': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // OtpVerification
  {
    'j645zux2': {
      'en': 'Verification',
      'fr': 'Vérification',
      'hi': 'सत्यापन',
    },
    'kndxzbw3': {
      'en': 'Verification Code',
      'fr': 'Le code de vérification',
      'hi': 'सत्यापन कोड',
    },
    '3irdcb5i': {
      'en': 'Resend OTP',
      'fr': 'Renvoyer l\'OTP',
      'hi': 'ओटीपी पुनः भेजें',
    },
    'iiw6lil6': {
      'en': 'Verify',
      'fr': 'Vérifier',
      'hi': 'सत्यापित करें',
    },
    'gjfx8qws': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // ProfileDetails
  {
    'z9hjenke': {
      'en': 'Full Name',
      'fr': 'Nom et prénom',
      'hi': 'पूरा नाम',
    },
    '2z6z61uw': {
      'en': 'Male',
      'fr': 'Mâle',
      'hi': 'पुरुष',
    },
    'e6n6lpdw': {
      'en': 'Male',
      'fr': 'Mâle',
      'hi': 'पुरुष',
    },
    '2w5qqnlw': {
      'en': 'Female',
      'fr': 'Femelle',
      'hi': 'महिला',
    },
    'o5few77p': {
      'en': 'Other',
      'fr': 'Autre',
      'hi': 'अन्य',
    },
    'blnqf0bt': {
      'en': 'Gender',
      'fr': 'Genre',
      'hi': 'लिंग',
    },
    '33pqwz1t': {
      'en': 'Search for an item...',
      'fr': 'Rechercher un article...',
      'hi': 'किसी आइटम की खोज करें...',
    },
    'x4o0z3sb': {
      'en': 'Gender',
      'fr': 'Genre',
      'hi': 'लिंग',
    },
    'm2m6zo8c': {
      'en': 'Email',
      'fr': 'E-mail',
      'hi': 'ईमेल',
    },
    'px6hyb2b': {
      'en': 'Address',
      'fr': 'Adresse',
      'hi': 'पता',
    },
    '0ehn7ayw': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    '2p9qobk2': {
      'en': 'Select RTO...',
      'fr': 'Sélectionnez RTO...',
      'hi': 'आरटीओ चुनें...',
    },
    '5lhz4up4': {
      'en': 'Search for an item...',
      'fr': 'Rechercher un article...',
      'hi': 'किसी आइटम की खोज करें...',
    },
    '7pkcu8v3': {
      'en': 'RTO',
      'fr': 'RTO',
      'hi': 'आरटीओ',
    },
    'b8ynli2u': {
      'en': 'Select DOB',
      'fr': 'Sélectionnez la date de naissance',
      'hi': 'DOB चुनें',
    },
    '1eccnym6': {
      'en': 'SAVE',
      'fr': 'SAUVEGARDER',
      'hi': 'बचाना',
    },
    'sr5xwgpg': {
      'en': 'Field is required',
      'fr': 'Champ requis',
      'hi': 'ये स्थान भरा जाना है',
    },
    'jvxnnfwg': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
    },
    'nryqgv4o': {
      'en': 'Field is required',
      'fr': 'Champ requis',
      'hi': 'ये स्थान भरा जाना है',
    },
    '5hxj0l6i': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
    },
    'igb20yed': {
      'en': 'Field is required',
      'fr': 'Champ requis',
      'hi': 'ये स्थान भरा जाना है',
    },
    'n5lrf8im': {
      'en': 'Please choose an option from the dropdown',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
    },
    '33g9lsch': {
      'en': 'Setup your profile',
      'fr': 'Configurez votre profil',
      'hi': 'अपना प्रोफ़ाइल सेट करें',
    },
    'aannzg49': {
      'en': 'Please enter your details',
      'fr': 'Veuillez entrer vos coordonnées',
      'hi': 'कृपया अपना विवरण दर्ज करें',
    },
    'loi7u4j1': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // Home
  {
    'dqkibbsu': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
    'qegbpa3s': {
      'en': 'Practice Questions',
      'fr': 'Questions pratiques',
      'hi': 'अभ्यास प्रश्न',
    },
    '55oid4nz': {
      'en': 'Test',
      'fr': 'Test',
      'hi': 'परीक्षा',
    },
    '0i8c142f': {
      'en': 'Road Signs',
      'fr': 'Panneaux routiers',
      'hi': 'सड़क के संकेत',
    },
    'talc3os0': {
      'en': 'Study',
      'fr': 'Étude',
      'hi': 'अध्ययन',
    },
    'y6fizwsy': {
      'en': 'Test History',
      'fr': 'Historique des tests',
      'hi': 'टेस्ट इतिहास',
    },
    'gjfx8qws': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // PracticeQuestions
  {
    'q2rknp69': {
      'en': 'Practice Questions',
      'fr': 'Questions pratiques',
      'hi': 'अभ्यास प्रश्न',
    },
    '96cknqhh': {
      'en': 'Answer',
      'fr': 'Répondre',
      'hi': 'उत्तर',
    },
    'gjfx8qws': {
      'en': 'Home',
      'fr': 'Maison',
      'hi': 'घर',
    },
  },
  // TestQuestions
  {
    'dvfk200y': {
      'en': 'Test',
      'fr': 'Test',
      'hi': 'परीक्षा',
    },
    'fo84dm7s': {
      'en': 'Finish the test ',
      'fr': 'Terminer le test',
      'hi': 'परीक्षण समाप्त करें',
    },
    'i0acdmwj': {
      'en': 'Home',
      'fr': '',
      'hi': '',
    },
  },
  // Test
  {
    '48zk088a': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'qwb84ece': {
      'en': 'Select RTO...',
      'fr': 'Sélectionnez RTO...',
      'hi': 'आरटीओ चुनें...',
    },
    'e42vk1nx': {
      'en': 'Search for an item...',
      'fr': 'Rechercher un article...',
      'hi': 'किसी आइटम की खोज करें...',
    },
    '58uag5bt': {
      'en': 'RTO',
      'fr': 'RTO',
      'hi': 'आरटीओ',
    },
  },
  // Miscellaneous
  {
    'k1zbgl4h': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'cp8helvx': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'wwkp5ytk': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'yhi0b329': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    '2e2hfali': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'aqtflcg0': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'ptq5381q': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'xkjgeixu': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    '43rzcluc': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    '1lu9rmnp': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'fh3uateg': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    '0qlyjm7d': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'lbzfyi7u': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'tzen4fzt': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'ycx0g3in': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    '0w3bjqpu': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'w54c5wea': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    '31qz874m': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'muujbyqo': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'ijz2bl9g': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    '6n96dst7': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'vk7ma4q3': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    '675vr0tn': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'z5sxrrgm': {
      'en': '',
      'fr': '',
      'hi': '',
    },
    'littppmb': {
      'en': '',
      'fr': '',
      'hi': '',
    },
  },
].reduce((a, b) => a..addAll(b));
