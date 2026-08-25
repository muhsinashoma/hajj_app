//Provides static data

// 📊 3. STATIC DATA (FOR NOW)

// 📍 features/hajj/data/data_sources/menu_data.dart



// lib/features/hajj/data/data_sources/menu_data.dart

import 'package:hajj_app/core/constants/app_strings.dart';
import '../models/menu_item_model.dart';

class MenuData {
  // HOME MENU
  static List<MenuItemModel> homeMenu = [
    MenuItemModel(
      titleEn:
          "Hajj (Al-Hajj) — Literal Meaning: Intention, Resolution, or Purpose",
      titleBn: "হজ্জ (الحج) — আভিধানিক অর্থ: সংকল্প, ইচ্ছা বা উদ্দেশ্য",
      titleAr: "الحج — المعنى اللغوي: القصد أو النية",
      icon: "🕋",
      pageIndex: AppPages.hajj,
    ),
    MenuItemModel(
      titleEn: "Umrah (Al-Umrah) — Literal Meaning: Visit or Pilgrimage",
      titleBn:
          "উমরাহ (العمرة) — উমরাহ শব্দের আভিধানিক অর্থ: পরিদর্শন করা বা জিয়ারত করা",
      titleAr: "العمرة — المعنى اللغوي: الزيارة",
      icon: "🕌",
      pageIndex: AppPages.umrah,
    ),
    MenuItemModel(
      titleEn: "Ibadah in the First 10 Days of Dhul-Hijjah",
      titleBn: "জিলহজ্জের প্রথম ১০ দিনের ইবাদত",
      titleAr: "العبادات في الأيام العشر الأولى من ذي الحجة",
      icon: "🌙",
      pageIndex: AppPages.tenDays,
    ),
  ];

  // BOTTOM MENU
  static List<MenuItemModel> bottomMenu = [
    MenuItemModel(
      titleEn: "Safar",
      titleBn: "সফর",
      titleAr: "السفر",
      icon: "🧳",
      pageIndex: AppPages.safar,
    ),
    MenuItemModel(
      titleEn: "Hajj Preparation",
      titleBn: "হজ্জ প্রস্তুতি",
      titleAr: "التحضير للحج",
      icon: "📿",
      pageIndex: AppPages.hajjPreparation,
    ),
    MenuItemModel(
      titleEn: "Essentials",
      titleBn: "প্রয়োজনীয় জিনিস",
      titleAr: "الضروريات",
      icon: "🎒",
      pageIndex: AppPages.essentials,
    ),
    MenuItemModel(
      titleEn: "Makkah Activities",
      titleBn: "মক্কার কার্যক্রম",
      titleAr: "أنشطة مكة",
      icon: "🕋",
      pageIndex: AppPages.makkahActivities,
    ),
    MenuItemModel(
      titleEn: "Madinah Activities",
      titleBn: "মদিনার কার্যক্রম",
      titleAr: "أنشطة المدينة",
      icon: "🕌",
      pageIndex: AppPages.madinahActivities,
    ),
  ];
}

// import '../models/menu_item_model.dart';

// class MenuData {
//   // HOME MENU
//   static List<MenuItemModel> homeMenu = [
//     MenuItemModel(
//       titleEn:
//           "Hajj (Al-Hajj) — Literal Meaning: Intention, Resolution, or Purpose",
//       titleBn: "হজ্জ (الحج) — আভিধানিক অর্থ: সংকল্প, ইচ্ছা বা উদ্দেশ্য",
//       titleAr: "الحج — المعنى اللغوي: القصد أو النية",
//       icon: "🕋",
//     ),
//     MenuItemModel(
//       titleEn: "Umrah (Al-Umrah) — Literal Meaning: Visit or Pilgrimage",
//       titleBn:
//           "উমরাহ (العمرة) — উমরাহ শব্দের আভিধানিক অর্থ: পরিদর্শন করা বা জিয়ারত করা",
//       titleAr: "العمرة — المعنى اللغوي: الزيارة",
//       icon: "🕌",
//     ),

//     // ✅ ADD THIS
//     MenuItemModel(
//       titleEn: "Ibadah in the First 10 Days of Dhul-Hijjah",
//       titleBn: "জিলহজ্জের প্রথম ১০ দিনের ইবাদত",
//       titleAr: "العبادات في الأيام العشر الأولى من ذي الحجة",
//       icon: "🌙",
//     ),
//   ];

//   // BOTTOM MENU
//   static List<MenuItemModel> bottomMenu = [
//     MenuItemModel(
//       titleEn: "Safar",
//       titleBn: "সফর",
//       titleAr: "السفر",
//       icon: "🧳",
//     ),
//     MenuItemModel(
//       titleEn: "Hajj Preparation",
//       titleBn: "হজ্জ প্রস্তুতি",
//       titleAr: "التحضير للحج",
//       icon: "📿",
//     ),
//     MenuItemModel(
//       titleEn: "Essentials",
//       titleBn: "প্রয়োজনীয় জিনিস",
//       titleAr: "الضروريات",
//       icon: "🎒",
//     ),
//     MenuItemModel(
//       titleEn: "Makkah Activities",
//       titleBn: "মক্কার কার্যক্রম",
//       titleAr: "أنشطة مكة",
//       icon: "🕋",
//     ),
//     MenuItemModel(
//       titleEn: "Madinah Activities",
//       titleBn: "মদিনার কার্যক্রম",
//       titleAr: "أنشطة المدينة",
//       icon: "🕌",
//     ),
//   ];
// }










//Provides static data(backup 2026-07-04)

// 📊 3. STATIC DATA (FOR NOW)

// 📍 features/hajj/data/data_sources/menu_data.dart

// import '../models/menu_item_model.dart';

// class MenuData {
//   // HOME MENU
//   static List<MenuItemModel> homeMenu = [
//     MenuItemModel(
//       titleEn: "Hajj",
//       titleBn: "হজ্জ",
//       titleAr: "الحج",
//       icon: "🕋",
//     ),
//     MenuItemModel(
//       titleEn: "Umrah",
//       titleBn: "উমরাহ",
//       titleAr: "العمرة",
//       icon: "🕌",
//     ),
//      // ✅ ADD THIS
//     MenuItemModel(
//       titleEn: "Ibadah in the First 10 Days of Dhul-Hijjah",
//       titleBn: "জিলহজ্জের প্রথম ১০ দিনের ইবাদত",
//       titleAr: "العبادات في الأيام العشر الأولى من ذي الحجة",
//       icon: "🌙",
//     ),
//   ];

//   // BOTTOM MENU
//   static List<MenuItemModel> bottomMenu = [
//     MenuItemModel(
//       titleEn: "Safar",
//       titleBn: "সফর",
//       titleAr: "السفر",
//       icon: "🧳",
//     ),
//     MenuItemModel(
//       titleEn: "Hajj Preparation",
//       titleBn: "হজ্জ প্রস্তুতি",
//       titleAr: "التحضير للحج",
//       icon: "📿",
//     ),
//     MenuItemModel(
//       titleEn: "Essentials",
//       titleBn: "প্রয়োজনীয় জিনিস",
//       titleAr: "الضروريات",
//       icon: "🎒",
//     ),
//     MenuItemModel(
//       titleEn: "Makkah Activities",
//       titleBn: "মক্কার কার্যক্রম",
//       titleAr: "أنشطة مكة",
//       icon: "🕋",
//     ),
//     MenuItemModel(
//       titleEn: "Madinah Activities",
//       titleBn: "মদিনার কার্যক্রম",
//       titleAr: "أنشطة المدينة",
//       icon: "🕌",
//     ),
//   ];
// }
