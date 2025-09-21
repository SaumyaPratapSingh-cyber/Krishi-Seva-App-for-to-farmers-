import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi'];

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
  }) =>
      [enText, hiText][languageIndex] ?? '';

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

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

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

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'aljpon8c': {
      'en': 'Page Title',
      'hi': 'पृष्ठ शीर्षक',
    },
    'iy9rw9ft': {
      'en': 'Farming made Easy with Krishi Seva',
      'hi': 'कृषि सेवा से खेती आसान हुई',
    },
    'glpc4dce': {
      'en': 'Instant Disease Detection ',
      'hi': 'तत्काल रोग का पता लगाना',
    },
    'rqttdzsi': {
      'en': '------------------------------------------------------------',
      'hi': '----------------------------------------------------------------',
    },
    '2bezq74d': {
      'en': 'Farmer\'s Literacy Guide',
      'hi': 'किसान साक्षरता मार्गदर्शिका',
    },
    'cphzkh7n': {
      'en': 'Government schemes',
      'hi': 'सरकारी योजनाएँ',
    },
    'bwlx7lcc': {
      'en': 'Crop  Recommendation  System',
      'hi': 'फसल अनुशंसा प्रणाली',
    },
    '3tanwlsb': {
      'en': '------------------------------------------------------------',
      'hi': '----------------------------------------------------------------',
    },
    'l7khyup9': {
      'en': '------------------------------------------------------------',
      'hi': '----------------------------------------------------------------',
    },
    '17qd318v': {
      'en': '------------------------------------------------------------',
      'hi': '----------------------------------------------------------------',
    },
    '8wa1erp8': {
      'en': '------------------------------------------------------------',
      'hi': '----------------------------------------------------------------',
    },
    'i2aok4nf': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // languagepage
  {
    'uw69d1nv': {
      'en': 'Namaste!\n',
      'hi': 'नमस्ते!',
    },
    'c16up39w': {
      'en': 'Select Your Krishi Seva Language',
      'hi': 'अपनी कृषि सेवा भाषा चुनें',
    },
    's90no16b': {
      'en': 'English',
      'hi': 'अंग्रेज़ी',
    },
    'l7yb8n34': {
      'en': 'Hindi',
      'hi': 'हिन्दी',
    },
    'i6fk2eb6': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // LoginPage
  {
    'km0hpzis': {
      'en': 'Page Title',
      'hi': 'पृष्ठ शीर्षक',
    },
    'qr6gr1ab': {
      'en': 'Be Part of Krishi Seva',
      'hi': 'कृषि सेवा का हिस्सा बनें',
    },
    'z9vkhbc6': {
      'en': 'Enter Your Name',
      'hi': 'अपना नाम दर्ज करें',
    },
    'r70d3fih': {
      'en': 'Enter Your Name',
      'hi': 'अपना नाम दर्ज करें',
    },
    'pct8zfg7': {
      'en': 'Enter your mail',
      'hi': 'अपना मेल दर्ज करें',
    },
    'swjwbsza': {
      'en': 'Enter your mail',
      'hi': 'अपना मेल दर्ज करें',
    },
    '8j1ants9': {
      'en': 'Enter your password',
      'hi': 'अपना कूटशब्द भरें',
    },
    'qccfhq6i': {
      'en': 'Enter your password',
      'hi': 'अपना कूटशब्द भरें',
    },
    'yztnz1bz': {
      'en': 'Confirm Password',
      'hi': 'पासवर्ड की पुष्टि कीजिये',
    },
    'p4a1jz4g': {
      'en': 'Confirm Your Password',
      'hi': 'अपने पासवर्ड की पुष्टि करें',
    },
    '6tpni570': {
      'en': 'OR',
      'hi': 'या',
    },
    '3znnx7gx': {
      'en': 'Create Account',
      'hi': 'खाता बनाएं',
    },
    'edyrn1ns': {
      'en': 'Login',
      'hi': 'लॉग इन करें',
    },
    '4x2eegi6': {
      'en': 'Continue Anonymous',
      'hi': 'जारी रखें अनाम',
    },
    '750hxi5s': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // StartDisplayPage
  {
    'mtmnu4mx': {
      'en': '',
      'hi': '->',
    },
    '2bdpbhsm': {
      'en': 'Page Title',
      'hi': 'पृष्ठ शीर्षक',
    },
    'scij6o7m': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // CropRecommendationSystem
  {
    'odi5m2y2': {
      'en': '',
      'hi': 'गलती करना',
    },
    '6bd0k48s': {
      'en': 'Search...',
      'hi': 'खोज...',
    },
    'avzkxt8d': {
      'en':
          'Recommend me Best Crop to Produce based on given provided farming type, soil , season and temperature range, in shor, make sure avoid unncessary text, just point wise or list wise crops suitable for it.',
      'hi':
          'मुझे दिए गए कृषि प्रकार, मिट्टी, मौसम और तापमान सीमा के आधार पर सर्वोत्तम फसल की सिफारिश करें, संक्षेप में, अनावश्यक पाठ से बचें, केवल बिंदुवार या सूचीवार फसलों के लिए उपयुक्त फसलों की सिफारिश करें।',
    },
    'il8avyad': {
      'en': 'Select Temperature Type',
      'hi': 'तापमान प्रकार चुनें',
    },
    '367blylk': {
      'en': 'Search...',
      'hi': 'खोज...',
    },
    '0ocntw37': {
      'en': '10-15',
      'hi': '10-15',
    },
    'bglc2yal': {
      'en': '15-20',
      'hi': '15-20',
    },
    'x26z5785': {
      'en': '20-25',
      'hi': '20-25',
    },
    'xw21c7ia': {
      'en': '25-30',
      'hi': '25-30',
    },
    '5ve3pzqa': {
      'en': '30-35',
      'hi': '30-35',
    },
    '8rbzts4o': {
      'en': '35-40',
      'hi': '35-40',
    },
    'nneqscfs': {
      'en': '40-45',
      'hi': '40-45',
    },
    'qkctup4x': {
      'en': '45-50',
      'hi': '45-50',
    },
    '9o27guxs': {
      'en': '50-55',
      'hi': '50-55',
    },
    'vgo43plq': {
      'en': 'Select Season',
      'hi': 'सीज़न चुनें',
    },
    'bnxxrvlw': {
      'en': 'Search...',
      'hi': 'खोज...',
    },
    '9s0c2nlt': {
      'en': 'Winter',
      'hi': 'सर्दी',
    },
    'aswhfjj2': {
      'en': 'Summer',
      'hi': 'गर्मी',
    },
    'hsrcoozz': {
      'en': 'Spring',
      'hi': 'वसंत',
    },
    'uudytzs0': {
      'en': 'Rainy',
      'hi': 'बरसाती',
    },
    '3pz5x6f3': {
      'en': 'Recommend ',
      'hi': 'अनुशंसा करना',
    },
    '5ncj36r4': {
      'en': 'Select Types of Soil',
      'hi': 'मिट्टी के प्रकार का चयन करें',
    },
    'gegwi9ga': {
      'en': 'Search...',
      'hi': 'खोज...',
    },
    'h8ehgfjq': {
      'en': 'Alluvial Soil',
      'hi': 'जलोढ़ मिट्टी',
    },
    'xz6w5eoh': {
      'en': 'Red Soil',
      'hi': 'लाल मिट्टी',
    },
    'oci4zqdr': {
      'en': 'Black Soil',
      'hi': 'काली मिट्टी',
    },
    '232t5wv7': {
      'en': 'Desert Soil',
      'hi': 'रेगिस्तानी मिट्टी',
    },
    'd6ekggtc': {
      'en': 'Laterite Soil',
      'hi': 'लैटेराइट मिट्टी',
    },
    'omx3yqzd': {
      'en': 'Mountain Soil',
      'hi': 'पहाड़ी मिट्टी',
    },
    'ao0ljwnn': {
      'en': 'Alkaline Soil',
      'hi': 'क्षारीय मिट्टी',
    },
    'g8zvx71c': {
      'en': 'Peaty and Marshy Soil',
      'hi': 'पीट और दलदली मिट्टी',
    },
    't3tp2zla': {
      'en': 'Select Farming Type',
      'hi': 'खेती का प्रकार चुनें',
    },
    '7c762ye7': {
      'en': 'Search...',
      'hi': 'खोज...',
    },
    'j4j9pnzg': {
      'en': 'Oraganic Farming',
      'hi': 'जैविक खेती',
    },
    'yp3umtyd': {
      'en': 'Inorganic Farming',
      'hi': 'अकार्बनिक खेती',
    },
    'dnmhbp7u': {
      'en': 'Crop  Recommendation  System',
      'hi': 'फसल अनुशंसा प्रणाली',
    },
    '0y8szgqj': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // GovermentSchemes
  {
    '8ong09q9': {
      'en': 'Kisan Goverment Scheme',
      'hi': 'किसान सरकारी योजना',
    },
    'ticn92dw': {
      'en': 'The Pradhan Mantri Fasal Bima Yojana (PMFBY)',
      'hi': 'प्रधानमंत्री फसल बीमा योजना (पीएमएफबीवाई)',
    },
    '7kslfaf0': {
      'en': 'The National Beekeeping and Honey Mission (NBHM).',
      'hi': 'राष्ट्रीय मधुमक्खी पालन और शहद मिशन (एनबीएचएम)।',
    },
    'z4rikdwc': {
      'en': 'The Organic Farming Incentive Scheme.',
      'hi': 'जैविक खेती प्रोत्साहन योजना.',
    },
    'qbu0j4r4': {
      'en': 'Drones for precision farming.',
      'hi': 'सटीक खेती के लिए ड्रोन।',
    },
    'u3tl0cok': {
      'en': 'The Seed Village Scheme',
      'hi': 'बीज ग्राम योजना',
    },
    'omptx7yy': {
      'en': 'The Kisan Credit Card (KCC) Scheme',
      'hi': 'किसान क्रेडिट कार्ड (केसीसी) योजना',
    },
    'bat5kyv0': {
      'en': 'The Pradhan Mantri Krishi Sinchayee Yojana (PMKSY).',
      'hi': 'प्रधानमंत्री कृषि सिंचाई योजना (पीएमकेएसवाई)।',
    },
    'i7yvlx0i': {
      'en': 'The Pradhan Mantri Matsya Sampada Yojana (PMMSY)',
      'hi': 'प्रधानमंत्री मत्स्य सम्पदा योजना (PMMSY)',
    },
    'acf9gh84': {
      'en': 'krishi udan scheme',
      'hi': 'कृषि उड़ान योजना',
    },
    '9mr26lyx': {
      'en':
          'The Pradhan Mantri Kisan Urja Suraksha evam Utthaan Mahabhiyan (PM-KUSUM).',
      'hi':
          'प्रधानमंत्री किसान ऊर्जा सुरक्षा एवं उत्थान महाभियान (पीएम-कुसुम)।',
    },
    'hx9tda9p': {
      'en': 'Agriculture Infrastructure Fund (AIF) Scheme',
      'hi': 'कृषि अवसंरचना निधि (एआईएफ) योजना',
    },
    'dd0tnsdw': {
      'en': 'The National Agriculture Market (eNAM).',
      'hi': 'राष्ट्रीय कृषि बाज़ार (ई-नाम)।',
    },
    'x502chu8': {
      'en': 'The Soil Health Card (SHC) Scheme.',
      'hi': 'मृदा स्वास्थ्य कार्ड (एसएचसी) योजना।',
    },
    'xha2gj7m': {
      'en': 'The National Agriculture Market (eNAM).',
      'hi': 'राष्ट्रीय कृषि बाज़ार (ई-नाम)।',
    },
    '2v0fpddp': {
      'en': 'The Sub-Mission on Agricultural Mechanization (SMAM).',
      'hi': 'कृषि मशीनीकरण उप-मिशन (एसएमएएम)।',
    },
    'c9ozxmt4': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // FarmersVideosandBlogs
  {
    'igyyde2o': {
      'en': 'Agriculture Tricks and Tips',
      'hi': 'कृषि संबंधी तरकीबें और सुझाव',
    },
    'ycoeasuk': {
      'en': 'How to prevent Crops from Hot air and Extreme Temperature.',
      'hi': 'फसलों को गर्म हवा और अत्यधिक तापमान से कैसे बचाएं।',
    },
    'ixc72wok': {
      'en': 'The correct way to give fertilizers is Band Placement.',
      'hi': 'उर्वरक देने का सही तरीका बैंड प्लेसमेंट है।',
    },
    'm8o98zwo': {
      'en':
          'How much benefit is there in dissolving DAP or Phospjorus fertilizers in water',
      'hi': 'डीएपी या फॉस्फोरस उर्वरक को पानी में घोलने से कितना लाभ होता है',
    },
    '3g9khk46': {
      'en': 'Subtitle',
      'hi': 'उपशीर्षक',
    },
    '3r54tctx': {
      'en': 'What are the reasons for weevil infestiation in wheat',
      'hi': 'गेहूं में घुन लगने के क्या कारण हैं?',
    },
    't6vfuwcf': {
      'en': 'Subtitle',
      'hi': 'उपशीर्षक',
    },
    'u7q6fhm7': {
      'en':
          'Should urea, zinc, NPK, boron and other fertilizers be mixed in spraying?',
      'hi':
          'क्या छिड़काव में यूरिया, जिंक, एनपीके, बोरोन एवं अन्य उर्वरकों को मिलाया जाना चाहिए?',
    },
    't10i2eyc': {
      'en': 'Subtitle',
      'hi': 'उपशीर्षक',
    },
    '4wivu0qr': {
      'en': 'Kisan Farmer\'s Guide Video',
      'hi': 'किसान किसान गाइड वीडियो',
    },
    'iz3fli11': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // DiseaseDetection
  {
    'cs1bslxb': {
      'en': 'Predict',
      'hi': '',
    },
    't7cgkdxc': {
      'en': '',
      'hi': '',
    },
    '5qtes5ik': {
      'en': 'Search...',
      'hi': '',
    },
    'g28os662': {
      'en':
          'Prompt:\nBased on the plant image(upoaded image) ,analyze and predict the disease affecting the plant. The response must strictly contain:\n- Disease Name – The identified plant disease.\n- Precaution – A brief recommendation for prevention or treatment.\n-Ensure accuracy and keep the response concise, without additional remarks or disclaimers—just direct results.\n',
      'hi': '',
    },
    '8kbxx0a6': {
      'en': 'Page Title',
      'hi': 'पृष्ठ शीर्षक',
    },
    'vvx3nvl1': {
      'en': 'Scan Disease -Get Precaution',
      'hi': '',
    },
    '5qn59665': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // Miscellaneous
  {
    'sx5e99jy': {
      'en': '',
      'hi': '',
    },
    'bodmmglp': {
      'en': '',
      'hi': '',
    },
    'faqmaxbd': {
      'en': '',
      'hi': '',
    },
    'jjosrrti': {
      'en': '',
      'hi': '',
    },
    '74n4qc7k': {
      'en': '',
      'hi': '',
    },
    'dkis086e': {
      'en': '',
      'hi': '',
    },
    '0xkjquix': {
      'en': '',
      'hi': '',
    },
    'z1fxzx5q': {
      'en': '',
      'hi': '',
    },
    'hnyzfj9g': {
      'en': '',
      'hi': '',
    },
    '6gu84tio': {
      'en': '',
      'hi': '',
    },
    'k83wl4pq': {
      'en': '',
      'hi': '',
    },
    '5lfhkdl2': {
      'en': '',
      'hi': '',
    },
    'bcpxgqc0': {
      'en': '',
      'hi': '',
    },
    'j8os7j4z': {
      'en': '',
      'hi': '',
    },
    'j4vshzld': {
      'en': '',
      'hi': '',
    },
    'eiv05ila': {
      'en': '',
      'hi': '',
    },
    'ommo7mqy': {
      'en': '',
      'hi': '',
    },
    'nlmy6qts': {
      'en': '',
      'hi': '',
    },
    't631r6d3': {
      'en': '',
      'hi': '',
    },
    'vrax7hd2': {
      'en': '',
      'hi': '',
    },
    'qe2vkade': {
      'en': '',
      'hi': '',
    },
    'wa05yjs6': {
      'en': '',
      'hi': '',
    },
    'rlbun0ga': {
      'en': '',
      'hi': '',
    },
    '9s1tk89t': {
      'en': '',
      'hi': '',
    },
    'hdlph7h2': {
      'en': '',
      'hi': '',
    },
    'qew9goxl': {
      'en': '',
      'hi': '',
    },
    'g81s65we': {
      'en': '',
      'hi': '',
    },
  },
].reduce((a, b) => a..addAll(b));
