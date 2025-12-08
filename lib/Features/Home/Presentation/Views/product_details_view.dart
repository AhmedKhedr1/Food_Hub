import 'package:flutter/material.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/bottom_bar.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/product_details_view_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

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
      body: ProductDetailsViewBody(),
      bottomNavigationBar: BottomBar(
        total: 18.19,
        onPressed: () {},
        BottonTitle: 'Add To Cart',
      ),
    );
  }
}
