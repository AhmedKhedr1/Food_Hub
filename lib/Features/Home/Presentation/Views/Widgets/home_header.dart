import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:gap/gap.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              Assets.Hungry,
              color: AppColors.Primary,
              height: 40,
            ),
            Gap(5),
            Text(
              'Hello, Rich Sonic',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff6A6A6A),
              ),
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(radius: 30),
      ],
    );
  }
}
