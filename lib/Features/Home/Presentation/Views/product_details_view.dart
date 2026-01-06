import 'package:flutter/material.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/bottom_bar.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/product_details_view_body.dart';
import 'package:food_hub/Features/Home/data/Models/product_model.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key, required this.product});
  final ProductModel product;

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ProductDetailsViewBody(product: widget.product),
      bottomNavigationBar: BottomBar(
        total: double.parse(widget.product.Price),
        onPressed: () {},
        BottonTitle: 'Add To Cart',
      ),
    );
  }
}
