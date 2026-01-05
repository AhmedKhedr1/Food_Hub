class CategoryModel {
  final int id;
  final String name;

  CategoryModel({required this.id, required this.name});

  factory CategoryModel.fromjson(Map<String, dynamic> json) {
    return CategoryModel(id: json['id'], name: json['name']);
  }
}
