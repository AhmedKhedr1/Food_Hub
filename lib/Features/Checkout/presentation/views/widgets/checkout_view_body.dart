import 'package:flutter/material.dart';
import 'package:food_hub/Features/Checkout/presentation/views/widgets/order_summary_section.dart';
import 'package:food_hub/Features/Checkout/presentation/views/widgets/payment_methods.dart';
import 'package:food_hub/Features/Checkout/presentation/views/widgets/save_card_check_box.dart';
import 'package:gap/gap.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order summary',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Gap(20),
          OrderSummarySection(),
          Gap(67),
          PaymentMethods(),
          Gap(10),
          SaveCardCheckbox(),
        ],
      ),
    );
  }
}
