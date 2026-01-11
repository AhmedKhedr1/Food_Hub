class CartModel {
  final int productID, quantity;
  final double spicy;
  final List<int> toppings, sideOptions;

  CartModel({
    required this.productID,
    required this.quantity,
    required this.spicy,
    required this.toppings,
    required this.sideOptions,
  });
  Map<String, dynamic> toJson() => {
    'product_id': productID,
    'quantity': quantity,
    'spicy': spicy,
    'toppings': toppings,
    'side_options': sideOptions,
  };
}
