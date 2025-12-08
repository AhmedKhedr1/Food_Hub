import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Core/Widgets/CustomButton%20.dart';

class BottomBar extends StatelessWidget {
  final double total;
  final void Function() onPressed;
  final String BottonTitle;

  BottomBar({
    super.key,
    required this.total,
    required this.onPressed,
    required this.BottonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Total",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                "\$${total.toStringAsFixed(2)}",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: AppColors.Primary,
                ),
              ),
            ],
          ),

          CustomButton(
            onPressed: onPressed,
            textbutton: BottonTitle,
            width: 180,
            height: 60,
            textcolor: Colors.white,
            buttoncolor: AppColors.Primary,
            raduis: 20,
          ),
        ],
      ),
    );
  }
}
