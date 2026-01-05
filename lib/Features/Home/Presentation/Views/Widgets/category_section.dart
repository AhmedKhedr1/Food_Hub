import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Features/Home/data/Models/category_model.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key, required this.Categories});
  final List<CategoryModel> Categories;
  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  int SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.Categories.length, (index) {
          CategoryModel category = widget.Categories[index];
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
                category.name,
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
