import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:food_hub/Core/Widgets/CustomButton%20.dart';
import 'package:food_hub/Core/Widgets/CustomTextFormField.dart';
import 'package:gap/gap.dart';

class LoginViewbody extends StatelessWidget {
  const LoginViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController EmailController = TextEditingController();
    TextEditingController PasswordController = TextEditingController();
    GlobalKey<FormState>_FormKey=GlobalKey<FormState>();

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _FormKey,
          child: Column(
            children: [
              Gap(100),
              SvgPicture.asset(Assets.Hungry),
              Gap(10),
              Text(
                'Welcome Back, Discover the Fast Food',
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
              Gap(70),
              CustomTextFormField(
                Hint: 'Email',
                isPassword: false,
                controller: EmailController,
              ),
              Gap(20),
          
              CustomTextFormField(
                Hint: 'Password',
                isPassword: true,
                controller: PasswordController,
              ),
              Gap(30),
              CustomButton(
                onPressed: () {
                  if(_FormKey.currentState!.validate()){
                    print('Login Sucess');
                  }
                },
                textbutton: 'Login',
                width: double.infinity,
                height: 52,
                textcolor: AppColors.Primary,
                buttoncolor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
