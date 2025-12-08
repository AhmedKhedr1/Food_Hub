import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Core/Widgets/CustomButton%20.dart';
import 'package:gap/gap.dart';

class SuccessDailog extends StatelessWidget {
  const SuccessDailog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 26, horizontal: 24),
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 214),
        decoration: BoxDecoration(
          color: Color(0xffFFF9F9),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: AppColors.Primary,
              child: Icon(Icons.check, color: Colors.white),
            ),
            Gap(20),
            Text(
              'Success !',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColors.Primary,
              ),
            ),
            Text(
              'Your payment was successful.\nA receipt for this purchase has been sent to your email.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xffBCBBBB)),
            ),
            Gap(42),
            CustomButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              textbutton: 'Go Back',
              width: 220,
              height: 60,
              textcolor: Colors.white,
              buttoncolor: AppColors.Primary,
              raduis: 15,
            ),
          ],
        ),
      ),
    );
  }
}
