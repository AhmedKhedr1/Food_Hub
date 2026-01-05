class ToopingModel {
  final String name, image;
  final int id;

  ToopingModel({required this.name, required this.image, required this.id});

  factory ToopingModel.fromjson(Map<String, dynamic> json) {
    return ToopingModel(
      name: json['name'],
      image: json['image'],
      id: json['id'],
    );
  }
}
