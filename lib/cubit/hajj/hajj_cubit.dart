//cubit/hajj/hajj_cubit.dart(STEP 6 — CUBIT)

// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../repositories/hajj_repository.dart';
// import 'hajj_state.dart';

// class HajjCubit extends Cubit<HajjState> {
//   final HajjRepository repository;

//   HajjCubit(this.repository) : super(HajjInitial());

//   Future<void> fetchPackages() async {
//     try {
//       emit(HajjLoading());

//       final data = await repository.getPackages();

//       emit(HajjLoaded(data));
//     } catch (e) {
//       emit(HajjError(e.toString()));
//     }
//   }
// }


import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repositories/hajj_repository.dart';
import 'hajj_state.dart';

class HajjCubit extends Cubit<HajjState> {
  final HajjRepository repository;

  HajjCubit(this.repository) : super(HajjInitial());

  Future<void> fetchPackages() async {
    try {
      emit(HajjLoading());

      final data = await repository.fetchApiData();

      emit(HajjLoaded(data));
    } catch (e) {
      emit(HajjError(e.toString()));
    }
  }
}
