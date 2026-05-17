//cubit/hajj/hajj_state.dart( STEP 5 — CUBIT STATE)

import '../../../models/hajj_package_model.dart';

// abstract class HajjState {}

// class HajjInitial extends HajjState {}

// class HajjLoading extends HajjState {}

// class HajjLoaded extends HajjState {
//   final List<HajjPackageModel> packages;

//   HajjLoaded(this.packages);
// }

// class HajjError extends HajjState {
//   final String message;

//   HajjError(this.message);
// }


abstract class HajjState {}

class HajjInitial extends HajjState {}

class HajjLoading extends HajjState {}

class HajjLoaded extends HajjState {
  final dynamic data;

  HajjLoaded(this.data);
}

class HajjError extends HajjState {
  final String message;

  HajjError(this.message);
}
