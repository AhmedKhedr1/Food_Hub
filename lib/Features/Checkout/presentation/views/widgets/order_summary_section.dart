// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderSummarySection extends StatelessWidget {
  const OrderSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CustomRow(Title: 'Order', SubTitle: '\$16.48'),
          Gap(10),
          CustomRow(Title: 'Taxes', SubTitle: '\$0.3'),
          Gap(10),
          CustomRow(Title: 'Delivery fees', SubTitle: '\$1.5'),

          Divider(color: Colors.grey.withOpacity(0.5), thickness: 1),
          CustomRow(Title: 'Total:', SubTitle: '\$18.19', color: Colors.black),
          Gap(20),
          CustomRow(
            Title: 'Estimated delivery time:',
            SubTitle: '15 - 30 mins',
            fontsize: 14,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  CustomRow({
    super.key,
    required this.Title,
    required this.SubTitle,
    this.fontsize,
    this.color,
  });
  final String Title, SubTitle;
  double? fontsize;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          Title,
          style: TextStyle(
            fontSize: fontsize ?? 18,
            fontWeight: FontWeight.w500,
            color: color ?? Color(0xff7D7D7D),
          ),
        ),
        Spacer(),
        Text(
          SubTitle,
          style: TextStyle(
            fontSize: fontsize ?? 18,
            fontWeight: FontWeight.w500,

            color: color ?? Color(0xff7D7D7D),
          ),
        ),
      ],
    );
  }
}
