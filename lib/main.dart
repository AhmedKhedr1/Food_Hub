import 'package:flutter/material.dart';
import 'package:food_hub/Features/Auth/Presentation/Views/Login_View.dart';
import 'package:food_hub/Features/Splash/Presentation/Views/Splash_View.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginView());
  }
}
