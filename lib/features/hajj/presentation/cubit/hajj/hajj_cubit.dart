// ⚙️ 5. CUBIT (CONTROLLER)

// 📍 features/hajj/presentation/cubit/hajj/hajj_cubit.dart

// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:hajj_app/features/hajj/data/data_sources/menu_data.dart';

// import 'hajj_state.dart';

// class HajjCubit extends Cubit<HajjState> {
//   HajjCubit() : super(HajjState.initial()) {
//     loadMenus(); //STEP 3 : LOAD DATA INTO CUBIT WHEN IT'S CREATED
//   }

//   void loadMenus() {
//     emit(
//       state.copyWith(
//         homeItems: MenuData.homeMenu,
//         bottomItems: MenuData.bottomMenu,
//       ),
//     );
//   }

//   void changeBottomIndex(int index) {
//     emit(state.copyWith(selectedIndex: index)); //STEP 4: CHANGE INDEX IN CUBIT
//   }
// }






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

  // CHANGE LANGUAGE
  void changeLanguage(String lang) {
    emit(state.copyWith(language: lang));
  }
}
