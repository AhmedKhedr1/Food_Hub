import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:food_hub/Core/Widgets/CustomTextFormField.dart';
import 'package:gap/gap.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 129,
              width: 126,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(Assets.user_image)),
                border: Border.all(width: 4, color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Gap(28),
            CustomTextFormField(
              Hint: 'Name',
              isPassword: false,
              controller: TextEditingController(),
              radius: 20,
              fillcolor: AppColors.Primary,
              hintcolor: Colors.white,
              textStyle: TextStyle(color: Colors.white),
            ),
            Gap(25),
            CustomTextFormField(
              Hint: 'Email',
              isPassword: false,
              controller: TextEditingController(),
              radius: 20,
              fillcolor: AppColors.Primary,
              hintcolor: Colors.white,
              textStyle: TextStyle(color: Colors.white),
            ),
            Gap(25),
            CustomTextFormField(
              Hint: 'Delivery address',
              isPassword: false,
              controller: TextEditingController(),
              radius: 20,
              fillcolor: AppColors.Primary,
              hintcolor: Colors.white,
              textStyle: TextStyle(color: Colors.white),
            ),
            Gap(25),
            CustomTextFormField(
              Hint: 'Password',
              isPassword: true,
              controller: TextEditingController(),
              radius: 20,
              fillcolor: AppColors.Primary,
              hintcolor: Colors.white,
              textStyle: TextStyle(color: Colors.white),

            ),
            Gap(20),
            Divider(
              color: Colors.grey.withOpacity(0.5),
              thickness: 1,
              indent: 30,
              endIndent: 30,
            ),
            Gap(20),

            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(20),
              ),
              leading: Image.asset(Assets.visa, color: Colors.blue.shade900),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Debit card',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '3566 **** **** 0505',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
              trailing: Text(
                'Default',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
