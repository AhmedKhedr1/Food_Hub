import 'package:flutter/material.dart';
import 'package:food_hub/Features/Card/Presentation/Views/Widgets/Card_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CartViewBody());
  }
}
