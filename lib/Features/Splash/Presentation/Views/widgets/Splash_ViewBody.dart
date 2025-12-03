import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:gap/gap.dart';

class SplashViewbody extends StatelessWidget {
  const SplashViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Gap(290),
          SvgPicture.asset(Assets.Hungry),
          Spacer(),
          Image.asset(Assets.SplashImage),
        ],
      ),
    );
  }
}
