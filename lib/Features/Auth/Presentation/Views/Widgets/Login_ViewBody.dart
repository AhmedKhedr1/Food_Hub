import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:food_hub/Core/Widgets/CustomButton%20.dart';
import 'package:food_hub/Core/Widgets/CustomTextFormField.dart';
import 'package:food_hub/root.dart';
import 'package:gap/gap.dart';

class LoginViewbody extends StatelessWidget {
  const LoginViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController EmailController = TextEditingController();
    TextEditingController PasswordController = TextEditingController();
    GlobalKey<FormState> _FormKey = GlobalKey<FormState>();

    return Center(
      child: Form(
        key: _FormKey,
        child: Column(
          children: [
            Gap(150),
            SvgPicture.asset(Assets.Hungry, color: AppColors.Primary),

            Gap(50),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: AppColors.Primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: [
                    Gap(50),

                    CustomTextFormField(
                      Hint: 'Email',
                      isPassword: false,
                      controller: TextEditingController(),
                      fillcolor: Colors.transparent,
                      hintcolor: Colors.white,
                    ),
                    Gap(15),
                    CustomTextFormField(
                      Hint: 'Password',
                      isPassword: true,
                      controller: TextEditingController(),
                      fillcolor: Colors.transparent,
                      hintcolor: Colors.white,
                    ),
                    Gap(15),

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
                      textcolor: AppColors.Primary,
                      buttoncolor: Colors.white,
                      raduis: 8,
                    ),
                    Gap(18),
                    CustomButton(
                      onPressed: () => Navigator.of(
                        context,
                      ).push(MaterialPageRoute(builder: (context) => root())),
                      textbutton: 'Continue as a Guest',
                      width: double.infinity,
                      height: 52,
                      textcolor: Colors.white,
                      buttoncolor: AppColors.Primary,
                      BorderColor: Colors.white,
                      raduis: 8,
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account? ',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
