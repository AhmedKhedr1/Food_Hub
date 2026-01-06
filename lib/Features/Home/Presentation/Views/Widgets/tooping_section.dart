import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:food_hub/Features/Home/Presentation/Views/Widgets/topping_card.dart';
import 'package:food_hub/Features/Home/data/Models/tooping_model.dart';
import 'package:gap/gap.dart';

class ToopingSection extends StatelessWidget {
  const ToopingSection({
    super.key,
    required this.SectionTitle,
    required this.toopings,
  });
  final String SectionTitle;

  final List<ToopingModel> toopings;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            SectionTitle,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          Gap(9),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(toopings.length, (index) {
                return Padding(
                  padding: EdgeInsetsGeometry.only(right: 15),
                  child: ToppingCard(
                    title: toopings[index].name,
                    imageUrl: toopings[index].image,
                    onAdd: () {},
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
