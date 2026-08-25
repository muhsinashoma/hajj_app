//Defines menu item structure

// 🏗️ 2. CREATE MODEL (STATIC OR API READY)

// 📍 features/hajj/data/models/menu_item_model.dart

class MenuItemModel {
  final String titleEn;
  final String titleBn;
  final String titleAr;
  final String icon;
  final int pageIndex; // NEW — which AppPages.* this item opens


  MenuItemModel({
    required this.titleEn,
    required this.titleBn,
    required this.titleAr,
    required this.icon,
    required this.pageIndex, // NEW
  });
}
