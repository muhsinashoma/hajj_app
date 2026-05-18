//2. MODEL (DATA STRUCTURE)

//features/hajj/data/models/hajj_package_model.dart

class HajjPackageModel {
  final String title;
  final String description;

  HajjPackageModel({
    required this.title,
    required this.description,
  });

  factory HajjPackageModel.fromJson(Map<String, dynamic> json) {
    return HajjPackageModel(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
    );
  }
}
