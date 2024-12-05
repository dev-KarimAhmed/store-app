class FontFamilyHelper {
  static const String arabicFont = 'Cairo';
  static const String englishFont = 'Poppins';

  

  static String getFontFamily() {
    //TODO: Shared prefs
    const currentLanguage = 'ar';
    if (currentLanguage == 'ar') {
      return arabicFont;
    } else {
      return englishFont;
    }
  }
}
