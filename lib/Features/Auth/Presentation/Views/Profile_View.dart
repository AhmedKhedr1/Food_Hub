import 'package:flutter/material.dart';
import 'package:food_hub/Features/Auth/Presentation/Views/Widgets/Profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: ProfileViewBody());
  }
}
