
import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:gap/gap.dart';

class ProfileButton extends StatelessWidget {
   ProfileButton({
    super.key,
    required this.buttoncolor,
    required this.textcolor,
    required this.textbutton,
    required this.buttonimage,
    required this.imagecolor,
    required this.onTap
  });
  final Color buttoncolor, textcolor, imagecolor;
  final String textbutton, buttonimage;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: 170,
        height: 64,
        decoration: BoxDecoration(
          color: buttoncolor,
          border: Border.all(color: AppColors.Primary, width: 2),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textbutton,
              style: TextStyle(
                color: textcolor,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(12),
            Image.asset(buttonimage, color: imagecolor),
          ],
        ),
      ),
    );
  }
}
