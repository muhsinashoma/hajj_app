//lib/core/constants/app_strings.dart

class AppPages {
  static const int home = 0;
  static const int hajj = 1;
  static const int umrah = 2;
  static const int tenDays = 3;
  static const int hajjDay = 4;
  static const int safar = 5;
  static const int hajjPreparation = 6;
  static const int essentials = 7;
  static const int makkahActivities = 8;
  static const int madinahActivities = 9;
}

class HajjTexts {
  static const String bn = "bn";
  static const String ar = "ar";
  static const String en = "en";

  // ================= APP TITLE =================

  static String hajjTitle(String lang) {
    switch (lang) {
      case bn:
        return "হজ্জ";
      case ar:
        return "الحج";
      default:
        return "Hajj";
    }
  }

  static String umrahTitle(String lang) {
    switch (lang) {
      case bn:
        return "উমরাহ";
      case ar:
        return "العمرة";
      default:
        return "Umrah";
    }
  }

  static String tenDaysTitle(String lang) {
    switch (lang) {
      case bn:
        return "যিলহজ্জের প্রথম ১০ দিন";
      case ar:
        return "العشر الأوائل من ذي الحجة";
      default:
        return "First 10 Days of Dhul Hijjah";
    }
  }

  static String getAppTitleByPage(String lang, int pageIndex) {
    switch (pageIndex) {
      case AppPages.hajj:
        return hajjTitle(lang);

      case AppPages.umrah:
        return umrahTitle(lang);

      case AppPages.tenDays:
        return tenDaysTitle(lang);

      case AppPages.hajjDay:
        return hajjGuideTitle(lang);

      default:
        return "";
    }
  }

  // ================= WELCOME TITLE =================
  static String welcomeTitle(String lang) {
    switch (lang) {
      case bn:
        return "আসসালামু আলাইকুম 🌙";
      case ar:
        return "السلام عليكم 🌙";
      default:
        return "Assalamu Alaikum 🌙";
    }
  }

  // ================= WELCOME SUBTITLE =================
  static String welcomeSubtitle(String lang) {
    switch (lang) {
      case bn:
        return "আপনার হজ্জ ও উমরাহ যাত্রায় স্বাগতম";
      case ar:
        return "مرحبًا بكم في رحلة الحج والعمرة";
      default:
        return "Welcome to your Hajj & Umrah journey";
    }
  }

  // ================= SUBTITLE =================
  static String subtitle(String lang) {
    switch (lang) {
      case bn:
        return "বিস্তারিত দেখতে ক্লিক করুন";
      case ar:
        return "اضغط لاستكشاف التفاصيل";
      default:
        return "Tap to explore details";
    }
  }

  // ================= TAP FOR DETAILS =================
  static String tapForDetails(String lang) {
    switch (lang) {
      case bn:
        return "বিস্তারিত দেখুন";
      case ar:
        return "اضغط للتفاصيل";
      default:
        return "Tap for details";
    }
  }

  // ================= HAJJ GUIDE TITLE =================
  static String hajjGuideTitle(String lang) {
    switch (lang) {
      case bn:
        return "হজ্জের দিনওয়ারী কার্যক্রম";
      case ar:
        return "أنشطة الحج اليومية";
      default:
        return "Day-wise Hajj Activities";
    }
  }

  static String localizedDayNumber(String lang, int day) {
    switch (lang) {
      case bn:
        const bnNums = ['০', '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯'];

        return day.toString().split('').map((e) => bnNums[int.parse(e)]).join();

      case ar:
        const arNums = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];

        return day.toString().split('').map((e) => arNums[int.parse(e)]).join();

      default:
        return day.toString();
    }
  }

  // ================= DAY TITLE =================

  static String dayActivitiesTitle(String lang, int day) {
    final dayNumber = localizedDayNumber(lang, day);

    switch (lang) {
      case bn:
        return "$dayNumber নম্বর দিনের কার্যক্রম";

      case ar:
        return "أنشطة يوم $dayNumber";

      default:
        return "Day $dayNumber Activities";
    }
  }

  // ================= DAY SUMMARY =================
  static String hajjDaySummary(String lang, int day) {
    switch (day) {
      // case 8:
      //   switch (lang) {
      //     case bn:
      //       return "১. ইহরাম অবস্থায় মক্কা বা হারাম এলাকার নিজ অবস্থান থেকে মিনার উদ্দেশ্যে রওনা হওয়া। ২. মিনায় গমন ও অবস্থান।";
      //     case ar:
      //       return "١. في حالة الإحرام، توجه إلى منى من موقعك داخل مكة المكرمة أو منطقة الحرم. ٢. سافر إلى منى وأقم هناك.";
      //     default:
      //       return "1. In the state of Ihram, proceed towards Mina from your location within Makkah or the Haram area. 2.Travel to Mina and stay there.";
      //   }

      case 8:
        switch (lang) {
          case bn:
            return "ইয়াওমুত তারবিয়াহ (يوم التروية) — আভিধানিক অর্থ: পানি সংগ্রহ করা; মিনার উদ্দেশ্যে যাত্রার প্রস্তুতির দিন।";

          case ar:
            return "يوم التروية — المعنى اللغوي: التزوّد بالماء، وهو يوم الاستعداد للانطلاق إلى منى.";

          default:
            return "Day of Tarwiyah — Literal Meaning: Provisioning Water; the day of preparation for the journey to Mina.";
        }

      case 9:
        switch (lang) {
          case bn:
            return "ইয়াওমু আরাফাহ (يوم عرفة) — আভিধানিক অর্থ: জানা, চিনতে পারা ও উপলব্ধি করা; এটি হজ্জের সর্বাধিক গুরুত্বপূর্ণ দিন।";
          case ar:
            return "يوم عرفة — المعنى اللغوي: المعرفة والإدراك، وهو أعظم أيام الحج.";
          default:
            return "Day of Arafah — Literal Meaning: Knowing, Recognizing, and Realizing; it is the most important day of Hajj.";
        }

      case 10:
        switch (lang) {
          case bn:
            return "ইয়াওমুন নহর (يوم النحر) — আভিধানিক অর্থ: কুরবানি বা জবাইয়ের দিন; এ দিন ঈদুল আযহার প্রধান কার্যক্রম সম্পন্ন করা হয়।";
          case ar:
            return "يوم النحر — المعنى اللغوي: يوم الذبح والتضحية، وهو يوم عيد الأضحى.";
          default:
            return "Day of Sacrifice (Yawm al-Nahr) — Literal Meaning: The Day of Slaughter and Sacrifice; it is the day of Eid al-Adha.";
        }

      case 11:
        switch (lang) {
          case bn:
            return "আইয়্যামুত তাশরীক (أيام التشريق) — আভিধানিক অর্থ: রোদে শুকানো; কুরবানির মাংস রোদে শুকিয়ে সংরক্ষণের দিনসমূহ।";

          case ar:
            return "أيام التشريق — المعنى اللغوي: تجفيف اللحم في الشمس، وهي الأيام التي كان يُجفف فيها لحم الأضاحي ويُحفظ.";

          default:
            return "Ayyam al-Tashreeq (Days of Tashreeq) — Literal Meaning: Drying meat in the sun; the days when sacrificial meat was dried and preserved.";
        }

      case 12:
        switch (lang) {
          case bn:
            return "আইয়্যামুত তাশরীক (أيام التشريق) — আভিধানিক অর্থ: রোদে শুকানো; কুরবানির মাংস রোদে শুকিয়ে সংরক্ষণের দিনসমূহ।";

          case ar:
            return "أيام التشريق — المعنى اللغوي: تجفيف اللحم في الشمس، وهي الأيام التي كان يُجفف فيها لحم الأضاحي ويُحفظ.";

          default:
            return "Ayyam al-Tashreeq (Days of Tashreeq) — Literal Meaning: Drying meat in the sun; the days when sacrificial meat was dried and preserved.";
        }

      case 13:
        switch (lang) {
          case bn:
            return "আইয়্যামুত তাশরীক (أيام التشريق) — আভিধানিক অর্থ: রোদে শুকানো; কুরবানির মাংস রোদে শুকিয়ে সংরক্ষণের দিনসমূহ।";

          case ar:
            return "أيام التشريق — المعنى اللغوي: تجفيف اللحم في الشمس، وهي الأيام التي كان يُجفف فيها لحم الأضاحي ويُحفظ.";

          default:
            return "Ayyam al-Tashreeq (Days of Tashreeq) — Literal Meaning: Drying meat in the sun; the days when sacrificial meat was dried and preserved.";
        }

      default:
        return "";
    }
  }

  // ================= LANGUAGE LABELS =================
  static String languageBangla(String lang) {
    switch (lang) {
      case ar:
        return "البنغالية";
      case en:
        return "Bangla";
      default:
        return "বাংলা";
    }
  }

  static String languageEnglish(String lang) {
    switch (lang) {
      case ar:
        return "الإنجليزية";
      case bn:
        return "ইংরেজি";
      default:
        return "English";
    }
  }

  static String languageArabic(String lang) {
    switch (lang) {
      case bn:
        return "আরবি";
      case en:
        return "Arabic";
      default:
        return "العربية";
    }
  }
}
