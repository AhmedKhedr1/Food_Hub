import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/home_header.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/search_textfeld.dart';
import 'package:gap/gap.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [Gap(60), HomeHeader(), Gap(17), SearchTextField(), Gap(40)],
      ),
    );
  }
}
