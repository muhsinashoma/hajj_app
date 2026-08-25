// // 📍 features/hajj/presentation/cubit/hajj/hajj_cubit.dart

// // ⚙️ 5. CUBIT (CONTROLLER)

// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:hajj_app/features/hajj/data/data_sources/menu_data.dart';

// import 'hajj_state.dart';

// lib/features/hajj/presentation/cubit/hajj/hajj_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hajj_app/core/constants/app_strings.dart';
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

  /// Called when a bottom-nav tab is tapped.
  /// Updates the highlighted tab AND the page that should render.
  void selectBottomTab(int index) {
    final item = state.bottomItems[index];
    emit(
      state.copyWith(
        selectedIndex: index,
        pageIndex: item.pageIndex,
      ),
    );
  }

  void changePage(int index) {
    emit(state.copyWith(pageIndex: index));
  }

  void openPage(int index) {
    emit(state.copyWith(pageIndex: index));
  }

  void goHome() {
    emit(state.copyWith(pageIndex: AppPages.home, selectedIndex: 0));
  }

  void changeLanguage(String lang) {
    emit(state.copyWith(language: lang));
  }

  void openHajjDay(int day) {
    emit(
      state.copyWith(
        selectedDay: day,
        pageIndex: AppPages.hajjDay,
      ),
    );
  }
}
