
//TODO سويج بين لغة العربية والانكليزية
import 'package:wed_for_weddings/core/service/shared_pref/pref_keys.dart';

class FontFamilyHelper {
  const FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';

  static const String poppinsEnglish = 'Poppins';

  static String geLocalozedFontFamily() {
    final currentLanguage = 'ar';
    if (currentLanguage == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}
