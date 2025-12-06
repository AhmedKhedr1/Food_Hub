import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  List<String> category = ['All', 'Combos', 'Sliders', 'Classic'];
  int SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(category.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                SelectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 14),
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 15),
              decoration: BoxDecoration(
                color: SelectedIndex == index
                    ? AppColors.Primary
                    : Color(0xffF3F4F6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                category[index],
                style: TextStyle(
                  fontSize: 15,
                  color: SelectedIndex == index
                      ? Color(0xffF3F4F6)
                      : Colors.black,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
