class UserModel {
  final String name, email;
  final String? image, token, visa, address;

  UserModel({
    required this.name,
    required this.email,
    this.image,
    this.token,
    this.visa,
    this.address,
  });

  factory UserModel.fromjson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      image: json['image'] ?? '',
      token: json['token'] ?? '',
      visa: json['Visa'] ?? '',
      address: json['address'] ?? '',
    );
  }
}
