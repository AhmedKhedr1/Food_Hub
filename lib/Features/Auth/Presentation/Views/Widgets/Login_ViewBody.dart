// ignore_for_file: non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:food_hub/Core/Widgets/CustomButton%20.dart';
import 'package:food_hub/Core/Widgets/CustomTextFormField.dart';
import 'package:food_hub/Features/Auth/Presentation/Views/Register_View.dart';
import 'package:food_hub/root.dart';
import 'package:gap/gap.dart';

class LoginViewbody extends StatelessWidget {
  const LoginViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController EmailController = TextEditingController();
    TextEditingController PasswordController = TextEditingController();
    GlobalKey<FormState> _FormKey = GlobalKey<FormState>();

    return Form(
      key: _FormKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(180),
            SvgPicture.asset(Assets.Hungry, color: AppColors.Primary),
            Gap(10),
            Text(
              'Welcome Back, Discover Fast Food ',
              style: TextStyle(
                color: AppColors.Primary,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(62),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Color(0xffC5D1CE).withOpacity(0.7),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(width: 1, color: AppColors.Primary),
              ),
              child: Column(
                children: [
                  Gap(52),
                  CustomTextFormField(
                    Hint: 'Email',
                    isPassword: false,
                    controller: TextEditingController(),
                    fillcolor: Colors.white,
                    hintcolor: AppColors.Primary,
                    BorderColor: AppColors.Primary,
                  ),
                  Gap(15),
                  CustomTextFormField(
                    Hint: 'Password',
                    isPassword: true,
                    controller: TextEditingController(),
                    fillcolor: Colors.white,
                    hintcolor: AppColors.Primary,
                    BorderColor: AppColors.Primary,
                  ),
                  Gap(30),
                  CustomButton(
                    onPressed: () {
                      if (_FormKey.currentState!.validate()) {
                        print('Sign up Success');
                      }
                    },
                    textbutton: 'Log in ',
                    width: double.infinity,
                    height: 52,
                    textcolor: Colors.white,
                    buttoncolor: AppColors.Primary,
                    raduis: 8,
                  ),
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => RegisterView(),
                            ),
                          );
                        },
                        textbutton: 'Sign up',
                        width: 164,
                        height: 52,
                        textcolor: AppColors.Primary,
                        buttoncolor: Colors.white,
                        raduis: 8,
    
                        BorderColor: AppColors.Primary,
                      ),
                      Gap(20),
                      CustomButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => root()),
                          );
                        },
                        textbutton: 'Guest',
                        width: 164,
                        height: 52,
                        textcolor: AppColors.Primary,
                        buttoncolor: Colors.white,
                        raduis: 8,
                        BorderColor: AppColors.Primary,
                      ),
                    ],
                  ),
                  Gap(24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
