import 'package:flutter/material.dart';
import 'package:food_hub/Features/Cart/Presentation/Views/Widgets/Cart_view_body.dart';
import 'package:food_hub/Features/Checkout/presentation/views/checkout_view.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/bottom_bar.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: CartViewBody(),
      bottomNavigationBar: BottomBar(
        total: 99.19,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return CheckoutView();
              },
            ),
          );
        },
        BottonTitle: 'Checkout',
      ),
    );
  }
}
