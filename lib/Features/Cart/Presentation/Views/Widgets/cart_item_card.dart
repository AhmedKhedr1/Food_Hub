
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:food_hub/Core/Widgets/CustomButton%20.dart';
import 'package:gap/gap.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 13, vertical: 10.5),
      color: Color(0xffFFFFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: [
            Column(
              children: [
                Image.asset(Assets.Hamburger, height: 102, width: 111),
                Gap(4),
                Text(
                  'Hamburger',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text('Veggie Burger'),
              ],
            ),
            Gap(70),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 43,
                      width: 43,
                      decoration: BoxDecoration(
                        color: AppColors.Primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.minus, color: Colors.white),
                      ),
                    ),
                    Gap(20),
                    Text(
                      '2',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap(20),
                    Container(
                      height: 43,
                      width: 43,
                      decoration: BoxDecoration(
                        color: AppColors.Primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.add, color: Colors.white),
                      ),
                    ),
                  ],
                ),

                Gap(40),
                CustomButton(
                  onPressed: () {},
                  textbutton: 'Remove',
                  width: 154,
                  height: 34,
                  textcolor: Colors.white,
                  buttoncolor: AppColors.Primary,
                  raduis: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
