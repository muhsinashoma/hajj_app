//Provides static data

// 📊 3. STATIC DATA (FOR NOW)

// 📍 features/hajj/data/data_sources/menu_data.dart

import '../models/menu_item_model.dart';

class MenuData {
  // HOME MENU
  static List<MenuItemModel> homeMenu = [
    MenuItemModel(
      titleEn: "Hajj",
      titleBn: "হজ্জ",
      titleAr: "الحج",
      icon: "🕋",
    ),
    MenuItemModel(
      titleEn: "Umrah",
      titleBn: "উমরাহ",
      titleAr: "العمرة",
      icon: "🕌",
    ),
  ];

  // BOTTOM MENU
  static List<MenuItemModel> bottomMenu = [
    MenuItemModel(
      titleEn: "Safar",
      titleBn: "সফর",
      titleAr: "السفر",
      icon: "🧳",
    ),
    MenuItemModel(
      titleEn: "Hajj Preparation",
      titleBn: "হজ্জ প্রস্তুতি",
      titleAr: "التحضير للحج",
      icon: "📿",
    ),
    MenuItemModel(
      titleEn: "Essentials",
      titleBn: "প্রয়োজনীয় জিনিস",
      titleAr: "الضروريات",
      icon: "🎒",
    ),
    MenuItemModel(
      titleEn: "Makkah Activities",
      titleBn: "মক্কার কার্যক্রম",
      titleAr: "أنشطة مكة",
      icon: "🕋",
    ),
    MenuItemModel(
      titleEn: "Madinah Activities",
      titleBn: "মদিনার কার্যক্রম",
      titleAr: "أنشطة المدينة",
      icon: "🕌",
    ),
  ];
}
