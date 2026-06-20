//lib/core/constants/app_strings.dart

class AppPages {
  static const int home = 0;
  static const int hajj = 1;
  static const int umrah = 2;
  static const int tenDays = 3;
  static const int hajjDay = 4;
}

class HajjTexts {
  static const String bn = "bn";
  static const String ar = "ar";
  static const String en = "en";

  // ================= APP TITLE =================
  // static String appTitle(String lang) {
  //   switch (lang) {
  //     case bn:
  //       return "হজ্জের দিনওয়ারী কার্যক্রম";
  //     case ar:
  //       return "أنشطة الحج اليومية";
  //     default:
  //       return "Day-wise Hajj Activities";
  //   }
  // }

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
      case 8:
        switch (lang) {
          case bn:
            return "১. ইহরাম অবস্থায় মক্কা বা হারাম এলাকার নিজ অবস্থান থেকে মিনার উদ্দেশ্যে রওনা হওয়া। ২. মিনায় গমন ও অবস্থান।";
          case ar:
            return "١. في حالة الإحرام، توجه إلى منى من موقعك داخل مكة المكرمة أو منطقة الحرم. ٢. سافر إلى منى وأقم هناك.";
          default:
            return "1. In the state of Ihram, proceed towards Mina from your location within Makkah or the Haram area. 2.Travel to Mina and stay there.";
        }

      case 9:
        switch (lang) {
          case bn:
            return "৯ই জিলহজ্জ: আরাফাতে গমন ও সূর্যাস্ত পর্যন্ত অবস্থান (সূরা বাকারা ২: ১৯৮-১৯৯)।\n"
                "৯ই জিলহজ্জ দিবাগত রাত (১০ই জিলহজ্জ): মুযদালিফায় আগমন ও অবস্থান (সূরা বাকারা ২: ১৯৮-১৯৯)।";

          case ar:
            return "٩ ذو الحجة: الوقوف بعرفة والإقامة فيها حتى غروب الشمس (سورة البقرة ٢: ١٩٨-١٩٩).\n"
                "ليلة ٩ ذو الحجة (١٠ ذو الحجة): المبيت في مزدلفة.";

          default:
            return "9th Dhul Hijjah: Standing at Arafah and staying until sunset (Surah Al-Baqarah 2: 198–199).\n"
                "Night of 9th Dhul Hijjah (10th Dhul Hijjah): Arrival and stay at Muzdalifah.";
        }

      case 10:
        switch (lang) {
          case bn:
            return "সকালে মিনায় আগমন এবং মিনার কার্যক্রম (১.রমি, ২.হাদিয়া (কুরবানী) ৩.হলক/কসর ৪.ফরয তাওয়াফ/তাওয়াফে ইফাদাহ ৫.সাফা-মারওয়া সা'য়ী করা ৬.মিনাতে ফিরে অবস্থান ও আল্লাহর যিকির/স্মরণের মাধ্যমে হজ্জের সফলতা লাভের প্রচেষ্টা করা) (সূরা বাকারা ২: ২০০)।";

          case ar:
            return "الوصول إلى منى صباحًا وأعمال منى: رمي الجمرات، الهدي، الحلق/التقصير، طواف الإفاضة (سورة البقرة ٢: ٢٠٠).";

          default:
            return "Arrival at Mina in the morning and rituals of Mina: Rami (stoning), Hadi (sacrifice), Halq/Qasar (shaving/cutting hair), Tawaf-e-Ifadah (Surah Al-Baqarah 2: 200).";
        }

      case 11:
        switch (lang) {
          case bn:
            return "মিনায় অবস্থান, আল্লাহর যিকিরে মশগুল থাকা এবং ছোট জামারাহ রমি করা (সূরা আল-বাকারা ২: ২০৩)";

          case ar:
            return "الإقامة في منى، والاشتغال بذكر الله، ورمي الجمرة الصغرى (سورة البقرة ٢: ٢٠٣)";

          default:
            return "Staying in Mina, engaging in the remembrance of Allah, and performing Rami at the Small Jamarah (Surah Al-Baqarah 2: 203)";
        }

      case 12:
        switch (lang) {
          case bn:
            return "মিনায় অবস্থান, আল্লাহর যিকিরে মশগুল থাকা এবং মাঝারি জামারাহ রমি করা (সূরা আল-বাকারা ২: ২০৩)";

          case ar:
            return "الإقامة في منى، والاشتغال بذكر الله، ورمي الجمرة الوسطى (سورة البقرة ٢: ٢٠٣)";

          default:
            return "Staying in Mina, engaging in the remembrance of Allah, and performing Rami at the Middle Jamarah (Surah Al-Baqarah 2: 203)";
        }

      case 13:
        switch (lang) {
          case bn:
            return "মিনায় অবস্থান, আল্লাহর যিকিরে মশগুল থাকা এবং বড় জামারাহ রমি করা (সূরা আল-বাকারা ২: ২০৩)";

          case ar:
            return "الإقامة في منى، والاشتغال بذكر الله، ورمي الجمرة الكبرى (نهاية أيام منى) (سورة البقرة ٢: ٢٠٣)";

          default:
            return "Staying in Mina, engaging in the remembrance of Allah, and performing Rami at the Big Jamarah (end of days in Mina) (Surah Al-Baqarah 2: 203)";
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
