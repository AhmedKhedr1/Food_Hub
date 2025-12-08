import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/spicy_slider.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/tooping_section.dart';
import 'package:gap/gap.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(Assets.customburger, height: 280),
              Gap(30),
              SpicySlider(),
            ],
          ),
          Gap(52),
          ToopingSection(SectionTitle: 'Toppings'),
          Gap(52),
          ToopingSection(SectionTitle: 'Side options'),
        ],
      ),
    );
  }
}
