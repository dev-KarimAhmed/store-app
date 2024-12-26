import 'package:flutter_store_app_with_graphql/core/services/shared_prefs/shareed_pref.dart';

class FontFamilyHelper {
  static const String arabicFont = 'Cairo';
  static const String englishFont = 'Poppins';

  static String getFontFamily() {
    //TODO: Shared prefs
    final currentLanguage = SharedPref().getString('lang');
    if (currentLanguage == 'ar') {
      return arabicFont;
    } else {
      return englishFont;
    }
  }
}
