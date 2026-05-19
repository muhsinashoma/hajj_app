// ⚙️ 5. CUBIT (CONTROLLER)

// Stores current UI state

// 📍 presentation/cubit/hajj/hajj_state.dart

// 📍 features/hajj/presentation/cubit/hajj/hajj_state.dart

// import 'package:hajj_app/features/hajj/data/models/menu_item_model.dart';

// class HajjState {
//   final List<MenuItemModel> homeItems;
//   final List<MenuItemModel> bottomItems;
//   final int selectedIndex;

//   HajjState({
//     required this.homeItems,
//     required this.bottomItems,
//     required this.selectedIndex,
//   });

//   factory HajjState.initial() {
//     return HajjState(
//       homeItems: [],
//       bottomItems: [],
//       selectedIndex: 0,
//     );
//   }

//   HajjState copyWith({
//     List<MenuItemModel>? homeItems,
//     List<MenuItemModel>? bottomItems,
//     int? selectedIndex,
//   }) {
//     return HajjState(
//       homeItems: homeItems ?? this.homeItems,
//       bottomItems: bottomItems ?? this.bottomItems,
//       selectedIndex: selectedIndex ?? this.selectedIndex,
//     );
//   }
// }



import 'package:hajj_app/features/hajj/data/models/menu_item_model.dart';

class HajjState {
  final List<MenuItemModel> homeItems;
  final List<MenuItemModel> bottomItems;
  final int selectedIndex;
  final String language;

  HajjState({
    required this.homeItems,
    required this.bottomItems,
    required this.selectedIndex,
    required this.language,
  });

  factory HajjState.initial() {
    return HajjState(
      homeItems: [],
      bottomItems: [],
      selectedIndex: 0,

      // DEFAULT LANGUAGE
      language: "bn",
    );
  }

  HajjState copyWith({
    List<MenuItemModel>? homeItems,
    List<MenuItemModel>? bottomItems,
    int? selectedIndex,
    String? language,
  }) {
    return HajjState(
      homeItems: homeItems ?? this.homeItems,
      bottomItems: bottomItems ?? this.bottomItems,
      selectedIndex: selectedIndex ?? this.selectedIndex,
      language: language ?? this.language,
    );
  }
}
