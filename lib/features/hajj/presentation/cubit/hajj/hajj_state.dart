// 📍 features/hajj/presentation/cubit/hajj/hajj_state.dart

// ⚙️ 5. CUBIT (CONTROLLER)

// Stores current UI state

import 'package:hajj_app/features/hajj/data/models/menu_item_model.dart';

class HajjState {
  final List<MenuItemModel> homeItems;
  final List<MenuItemModel> bottomItems;
  final int selectedIndex;
  final int pageIndex; // ⭐ NEW
  final String language;

  // NEW
  final int selectedDay;

  HajjState({
    required this.homeItems,
    required this.bottomItems,
    required this.selectedIndex,
    required this.pageIndex,
    required this.language,
    required this.selectedDay,
  });

  factory HajjState.initial() {
    return HajjState(
      homeItems: [],
      bottomItems: [],
      selectedIndex: 0,
      pageIndex: 0, // ⭐ HOME DEFAULT
      language: "bn",
      selectedDay: 8,
    );
  }

  HajjState copyWith({
    List<MenuItemModel>? homeItems,
    List<MenuItemModel>? bottomItems,
    int? selectedIndex,
    int? pageIndex,
    String? language,
    int? selectedDay,
  }) {
    return HajjState(
      homeItems: homeItems ?? this.homeItems,
      bottomItems: bottomItems ?? this.bottomItems,
      selectedIndex: selectedIndex ?? this.selectedIndex,
      pageIndex: pageIndex ?? this.pageIndex,
      language: language ?? this.language,
      selectedDay: selectedDay ?? this.selectedDay,
    );
  }
}
