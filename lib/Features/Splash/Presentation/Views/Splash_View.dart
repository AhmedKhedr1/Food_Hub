import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Features/Splash/Presentation/Views/widgets/Splash_ViewBody.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.Primary, body: SplashViewbody());
  }
}
