import 'package:flutter/material.dart';
import 'package:food_hub/Features/Checkout/presentation/views/success_dailog.dart';
import 'package:food_hub/Features/Checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/bottom_bar.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: CheckoutViewBody(),
      bottomNavigationBar: BottomBar(
        total: 18.19,
        onPressed: () {
          showAdaptiveDialog(context: context, builder:(context) {
            return SuccessDailog();
          }, );
        },
        BottonTitle: 'Pay Now',
      ),
    );
  }
}
