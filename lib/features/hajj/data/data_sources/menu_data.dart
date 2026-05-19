//Provides static data

// 📊 3. STATIC DATA (FOR NOW)

// 📍 features/hajj/data/data_sources/menu_data.dart

// import '../models/menu_item_model.dart';

// class MenuData {
//   static List<MenuItemModel> homeMenu = [
//     MenuItemModel(title: "Hajj", icon: "🕋"),
//     MenuItemModel(title: "Umrah", icon: "🕌"),
//   ];

//   static List<MenuItemModel> bottomMenu = [
//     MenuItemModel(title: "Safar", icon: "🧳"),
//     MenuItemModel(title: "Hajj Preparation", icon: "📿"),
//     MenuItemModel(title: "Essentials", icon: "🎒"),
//     MenuItemModel(title: "Makkah Activities", icon: "🕋"),
//     MenuItemModel(title: "Madinah Activities", icon: "🕌"),
//   ];
// }



import '../models/menu_item_model.dart';

class MenuData {
  // HOME MENU
  static List<MenuItemModel> homeMenu = [
    MenuItemModel(
      titleEn: "Hajj",
      titleBn: "হজ্জ",
      icon: "🕋",
    ),
    MenuItemModel(
      titleEn: "Umrah",
      titleBn: "উমরাহ",
      icon: "🕌",
    ),
  ];

  // BOTTOM MENU
  static List<MenuItemModel> bottomMenu = [
    MenuItemModel(
      titleEn: "Safar",
      titleBn: "সফর",
      icon: "🧳",
    ),
    MenuItemModel(
      titleEn: "Hajj Preparation",
      titleBn: "হজ্জ প্রস্তুতি",
      icon: "📿",
    ),
    MenuItemModel(
      titleEn: "Essentials",
      titleBn: "প্রয়োজনীয় জিনিস",
      icon: "🎒",
    ),
    MenuItemModel(
      titleEn: "Makkah Activities",
      titleBn: "মক্কার কার্যক্রম",
      icon: "🕋",
    ),
    MenuItemModel(
      titleEn: "Madinah Activities",
      titleBn: "মদিনার কার্যক্রম",
      icon: "🕌",
    ),
  ];
}
