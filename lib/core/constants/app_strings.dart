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

  // ✅ ADD THIS METHOD
  static String tapForDetails(String lang) {
    switch (lang) {
      case "bn":
        return "বিস্তারিত দেখুন";
      case "ar":
        return "اضغط للتفاصيل";
      default:
        return "Tap for details";
    }
  }

// ✅ ADD HERE
  static String hajjGuideTitle(String lang) {
    switch (lang) {
      case "bn":
        return "হজের দিনগুলো";
      case "ar":
        return "أيام الحج";
      default:
        return "The days of Hajj ";
    }
  }

  // static String dayActivitiesTitle(String lang, int day) {
  //   switch (lang) {
  //     case "bn":
  //       return "$day নম্বর দিনের কার্যক্রম";
  //     case "ar":
  //       return "أنشطة يوم $day";
  //     default:
  //       return "Day $day Activities";
  //   }
  // }

  static String dayActivitiesTitle(String lang, int day) {
    switch (lang) {
      case "bn":
        return "$day নম্বর দিনের কার্যক্রম";
      case "ar":
        return "أنشطة يوم $day";
      default:
        return "Day $day Activities";
    }
  }

  static String hajjDaySummary(String lang, int day) {
    switch (day) {
      case 8:
        return lang == "bn"
            ? "ইহরাম ও তালবিয়া (মিনা থেকে শুরু)"
            : lang == "ar"
                ? "الإحرام والتلبية (البداية من منى)"
                : "Ihram Preparation with Talbiah (Start from Mina)";

      case 9:
        return lang == "bn"
            ? "আরাফার দিন"
            : lang == "ar"
                ? "يوم عرفة"
                : "Arafah Day";

      case 10:
        return lang == "bn"
            ? "রামি, কোরবানি, হলক/কসর, তাওয়াফে ইফাদাহ"
            : lang == "ar"
                ? "رمي الجمرات، الهدي، الحلق/التقصير، طواف الإفاضة"
                : "Rami, Hadi, Halq/Qasar, Tawaf-e-Ifadah";

      case 11:
        return lang == "bn"
            ? "ছোট জামারাহ"
            : lang == "ar"
                ? "الجمرات الصغرى"
                : "Small Jamarah";

      case 12:
        return lang == "bn"
            ? "মাঝারি জামারাহ"
            : lang == "ar"
                ? "الجمرات الوسطى"
                : "Middle Jamarah";

      case 13:
        return lang == "bn"
            ? "বড় জামারাহ (মিনা থেকে সমাপ্তি)"
            : lang == "ar"
                ? "الجمرات الكبرى (نهاية من منى)"
                : "Big Jamarah (End from Mina)";

      default:
        return "";
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
