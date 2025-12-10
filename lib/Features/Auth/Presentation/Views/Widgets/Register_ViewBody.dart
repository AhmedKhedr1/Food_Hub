import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:food_hub/Core/Widgets/CustomButton%20.dart';
import 'package:food_hub/Core/Widgets/CustomTextFormField.dart';
import 'package:food_hub/Features/Auth/Presentation/Views/Login_View.dart';
import 'package:gap/gap.dart';

class RegisterViewbody extends StatelessWidget {
  const RegisterViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _FormKey = GlobalKey<FormState>();
    return Form(
      key: _FormKey,
      child: Column(
        children: [
          Gap(150),
          SvgPicture.asset(Assets.Hungry, color: AppColors.Primary),

          Gap(40),
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
                  Gap(40),

                  CustomTextFormField(
                    Hint: 'Name',
                    isPassword: false,
                    controller: TextEditingController(),
                    fillcolor: Colors.transparent,
                    hintcolor: Colors.white,
                  ),
                  Gap(15),
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
                    textbutton: 'Sign Up',
                    width: double.infinity,
                    height: 52,
                    textcolor: AppColors.Primary,
                    buttoncolor: Colors.white,
                    raduis: 8,
                  ),
                  Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginView();
                            },
                          ),
                        ),
                        child: Text(
                          'Log in',
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
    );
  }
}
