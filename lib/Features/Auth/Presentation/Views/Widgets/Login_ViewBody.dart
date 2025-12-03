import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:gap/gap.dart';

class LoginViewbody extends StatelessWidget {
  const LoginViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Gap(100),
          SvgPicture.asset(Assets.Hungry),
          Gap(10),
          Text(
            'Welcome Back, Discover the Fast Food',
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
