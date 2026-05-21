//lib/core/constants/app_strings.dart
class HajjTexts {
  static String appTitle(String lang) {
    switch (lang) {
      case "bn":
        return "হজ্জ অ্যাপ";
      case "ar":
        return "تطبيق الحج";
      default:
        return "Hajj App";
    }
  }

  static String welcomeTitle(String lang) {
    switch (lang) {
      case "bn":
        return "আসসালামু আলাইকুম 🌙";
      case "ar":
        return "السلام عليكم 🌙";
      default:
        return "Assalamu Alaikum 🌙";
    }
  }

  static String welcomeSubtitle(String lang) {
    switch (lang) {
      case "bn":
        return "আপনার হজ্জ ও উমরাহ যাত্রায় স্বাগতম";
      case "ar":
        return "مرحبًا بكم في رحلة الحج والعمرة";
      default:
        return "Welcome to your Hajj & Umrah journey";
    }
  }

  static String subtitle(String lang) {
    switch (lang) {
      case "bn":
        return "বিস্তারিত দেখতে ক্লিক করুন";
      case "ar":
        return "اضغط لاستكشاف التفاصيل";
      default:
        return "Tap to explore details";
    }
  }

// ================= LANGUAGE LABELS =================

  static String languageBangla(String lang) {
    switch (lang) {
      case "ar":
        return "البنغالية";
      case "en":
        return "Bangla";
      default:
        return "বাংলা";
    }
  }

  static String languageEnglish(String lang) {
    switch (lang) {
      case "ar":
        return "الإنجليزية";
      case "bn":
        return "ইংরেজি";
      default:
        return "English";
    }
  }

  static String languageArabic(String lang) {
    switch (lang) {
      case "bn":
        return "আরবি";
      case "en":
        return "Arabic";
      default:
        return "العربية";
    }
  }
}
