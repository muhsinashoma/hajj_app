//models/hajj_package_model.dart(STEP 3 — MODEL)
class HajjPackageModel {
  final int id;
  final String title;

  HajjPackageModel({
    required this.id,
    required this.title,
  });

  factory HajjPackageModel.fromJson(Map<String, dynamic> json) {
    return HajjPackageModel(
      id: json['id'],
      title: json['title'],
    );
  }
}
