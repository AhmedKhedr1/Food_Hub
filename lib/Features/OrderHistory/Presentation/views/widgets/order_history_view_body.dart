import 'package:flutter/material.dart';
import 'package:food_hub/Features/OrderHistory/Presentation/views/widgets/order_card.dart';

class OrderHistoryViewBody extends StatelessWidget {
  const OrderHistoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsGeometry.only(top: 60),
        child: Column(
          children: List.generate(4, (index) {
            return OrderCard();
          }),
        ),
      ),
    );
  }
}
