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
              isPassword: false,
              controller: TextEditingController(),
              radius: 20,
              fillcolor: AppColors.Primary,
              hintcolor: Colors.white,
              textStyle: TextStyle(color: Colors.white),
            ),
            Gap(36),
            Divider(
              color: Colors.grey.withOpacity(0.5),
              thickness: 1,
              indent: 30,
              endIndent: 30,
            ),
            Gap(36),

            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              tileColor: Colors.blue.shade900,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(20),
              ),
              leading: Image.asset(Assets.visa, color: Colors.white),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Debit card',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '3566 **** **** 0505',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              trailing: Radio(
                value: 'Visa',
                fillColor: MaterialStateProperty.all(Colors.white),
                activeColor: Colors.white,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
            Gap(72),
          ],
        ),
      ),
    );
  }
}
