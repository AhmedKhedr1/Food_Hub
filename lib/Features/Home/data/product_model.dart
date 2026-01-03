class ProductModel {
  final String Name, Description, Image, Rating, Price;
  final int productId;

  ProductModel({
    required this.Name,
    required this.Description,
    required this.Image,
    required this.Rating,
    required this.Price,
    required this.productId,
  });

  factory ProductModel.frojson(Map<String, dynamic> json) {
    return ProductModel(
      Name: json['name'],
      Description: json['description'],
      Image: json['image'],
      Rating: json['rating'],
      Price: json['price'],
      productId: json['id'],
    );
  }
}
