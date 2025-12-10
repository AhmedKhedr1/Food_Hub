import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:food_hub/Features/Auth/Presentation/Views/Widgets/Profile_view_body.dart';
import 'package:gap/gap.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.Primary,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings, color: Colors.white),
            ),
          ),
        ],
      ),
      backgroundColor: AppColors.Primary,
      body: ProfileViewBody(),
      bottomSheet: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileButton(
              buttoncolor: AppColors.Primary,
              textcolor: Colors.white,
              textbutton: 'Edit Profile',
              buttonimage: Assets.edit,
              imagecolor: Colors.white,
            ),
            Gap(22),
            ProfileButton(
              buttoncolor: Colors.white,
              textcolor: AppColors.Primary,
              textbutton: 'Log out',
              buttonimage: Assets.signout,
              imagecolor: AppColors.Primary,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key,
    required this.buttoncolor,
    required this.textcolor,
    required this.textbutton,
    required this.buttonimage,
    required this.imagecolor,
  });
  final Color buttoncolor, textcolor, imagecolor;
  final String textbutton, buttonimage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 64,
      decoration: BoxDecoration(
        color: buttoncolor,
        border: Border.all(color: AppColors.Primary, width: 2),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textbutton,
            style: TextStyle(
              color: textcolor,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          Gap(12),
          Image.asset(buttonimage, color: imagecolor),
        ],
      ),
    );
  }
}
