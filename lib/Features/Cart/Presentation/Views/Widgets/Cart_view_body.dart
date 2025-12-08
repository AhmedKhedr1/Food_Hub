import 'package:flutter/material.dart';
import 'package:food_hub/Features/Cart/Presentation/Views/Widgets/cart_item_card.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(4, (index) {
          return CartItemCard();
        }),
      ),
    );
  }
}
