import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:food_hub/Core/Widgets/CustomButton%20.dart';
import 'package:food_hub/Core/Widgets/CustomTextFormField.dart';
import 'package:gap/gap.dart';

class RegisterViewbody extends StatelessWidget {
  const RegisterViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: _FormKey,
        child: ListView(
          children: [
            Gap(100),
            SvgPicture.asset(Assets.Hungry),

            Gap(70),
            CustomTextFormField(
              Hint: 'Name',
              isPassword: false,
              controller: TextEditingController(),
            ),
            Gap(15),
            CustomTextFormField(
              Hint: 'Email',
              isPassword: false,
              controller: TextEditingController(),
            ),
            Gap(15),
            CustomTextFormField(
              Hint: 'Password',
              isPassword: true,
              controller: TextEditingController(),
            ),
            Gap(15),
            CustomTextFormField(
              Hint: 'Confirm Password',
              isPassword: true,
              controller: TextEditingController(),
            ),
            Gap(30),
            CustomButton(
              onPressed: () {
                if (_FormKey.currentState!.validate()) {
                  print('Sign up Success');
                }
              },
              textbutton: 'Sign Up',
              width: double.infinity,
              height: 52,
              textcolor: AppColors.Primary,
              buttoncolor: Colors.white,
              raduis: 8,
            ),
          ],
        ),
      ),
    );
  }
}
