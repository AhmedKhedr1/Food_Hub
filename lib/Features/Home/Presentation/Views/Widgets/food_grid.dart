import 'package:flutter/material.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/food_item_card.dart';
import 'package:food_hub/Features/Home/Presentation/Views/product_details_view.dart';
import 'package:food_hub/Features/Home/data/product_model.dart';

class FoodGrid extends StatelessWidget {
  const FoodGrid({super.key, required this.products});
  final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .78,
        mainAxisSpacing: 15,
        crossAxisSpacing: 16,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => ProductDetailsView())),
          child: FoodItemCard(productModel: products[index]),
        );
      },
    );
  }
}
