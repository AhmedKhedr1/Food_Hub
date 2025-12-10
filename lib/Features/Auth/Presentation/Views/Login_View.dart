import 'package:flutter/material.dart';
import 'package:food_hub/Features/Auth/Presentation/Views/Widgets/Login_ViewBody.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(backgroundColor: Colors.white, body: LoginViewbody()),
    );
  }
}
