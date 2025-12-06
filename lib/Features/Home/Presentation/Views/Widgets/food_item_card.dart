import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:gap/gap.dart';

class FoodItemCard extends StatefulWidget {
  const FoodItemCard({super.key});

  @override
  State<FoodItemCard> createState() => _FoodItemCardState();
}

class _FoodItemCardState extends State<FoodItemCard> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFFFFFF),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(Assets.Cheeseburger, width: 120, height: 120),
            ),
            Gap(6),
            Text(
              'Cheeseburger',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),

            Text('Wendy\'s Burger', style: TextStyle(fontSize: 16)),
            Gap(2),
            Row(
              children: [
                Text('⭐  4.9'),
                Spacer(),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  child: isLiked
                      ? Icon(
                          CupertinoIcons.heart_fill,
                          color: AppColors.Primary,
                        )
                      : Icon(CupertinoIcons.heart),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
