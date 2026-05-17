//repositories/hajj_repository.dart(STEP 4 — REPOSITORY)
// import '../models/hajj_package_model.dart';
// import '../services/api_service.dart';

// class HajjRepository {
//   final ApiService apiService;

//   HajjRepository(this.apiService);

//   Future<List<HajjPackageModel>> getPackages() async {
//     final response = await apiService.getData('posts');

//     return (response.data as List)
//         .map((e) => HajjPackageModel.fromJson(e))
//         .toList();
//   }
// }


import '../services/api_service.dart';

class HajjRepository {
  final ApiService apiService;

  HajjRepository(this.apiService);

  Future<dynamic> fetchApiData() async {
    final response = await apiService.getData('connect_api.php');

    return response.data;
  }
}
