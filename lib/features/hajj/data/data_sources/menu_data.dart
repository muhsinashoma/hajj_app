//Provides static data

// 📊 3. STATIC DATA (FOR NOW)

// 📍 features/hajj/data/data_sources/menu_data.dart

import '../models/menu_item_model.dart';

class MenuData {
  static List<MenuItemModel> homeMenu = [
    MenuItemModel(title: "Hajj", icon: "🕋"),
    MenuItemModel(title: "Umrah", icon: "🕌"),
  ];

  static List<MenuItemModel> bottomMenu = [
    MenuItemModel(title: "Safar", icon: "🧳"),
    MenuItemModel(title: "Hajj Preparation", icon: "📿"),
    MenuItemModel(title: "Essentials", icon: "🎒"),
    MenuItemModel(title: "Makkah Activities", icon: "🕋"),
    MenuItemModel(title: "Madinah Activities", icon: "🕌"),
  ];
}