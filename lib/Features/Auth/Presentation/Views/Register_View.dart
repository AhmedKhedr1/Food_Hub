import 'package:flutter/material.dart';
import 'package:food_hub/Features/Auth/Presentation/Views/Widgets/Register_ViewBody.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RegisterViewbody(),
    );
  }
}