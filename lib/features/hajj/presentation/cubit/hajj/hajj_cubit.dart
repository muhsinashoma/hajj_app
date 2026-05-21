// 📍 features/hajj/presentation/cubit/hajj/hajj_cubit.dart

// ⚙️ 5. CUBIT (CONTROLLER)

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hajj_app/features/hajj/data/data_sources/menu_data.dart';

import 'hajj_state.dart';

class HajjCubit extends Cubit<HajjState> {
  HajjCubit() : super(HajjState.initial()) {
    loadMenus();
  }

  void loadMenus() {
    emit(
      state.copyWith(
        homeItems: MenuData.homeMenu,
        bottomItems: MenuData.bottomMenu,
      ),
    );
  }

  // CHANGE BOTTOM TAB
  void changeBottomIndex(int index) {
    emit(state.copyWith(selectedIndex: index));
  }

  // ⭐ NEW: page control (HOME / HAJJ / UMRAH)
  void changePage(int index) {
    emit(state.copyWith(pageIndex: index));
  }

  void openPage(int index) {
    emit(state.copyWith(pageIndex: index));
  }

  void goHome() {
    emit(state.copyWith(pageIndex: 0));
  }

  // CHANGE LANGUAGE
  void changeLanguage(String lang) {
    emit(state.copyWith(language: lang));
  }
}
