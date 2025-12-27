import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';
import 'package:food_hub/Core/Constants/Assets.dart';
import 'package:food_hub/Core/Network/api_error.dart';
import 'package:food_hub/Core/Widgets/CustomTextFormField.dart';
import 'package:food_hub/Features/Auth/data/auth_repo.dart';
import 'package:food_hub/Features/Auth/data/user_model.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _address = TextEditingController();
  AuthRepo authRepo = AuthRepo();
  UserModel? user;
  Future<void> GetProfileData() async {
    try {
      final response = await authRepo.GetProfileData();
      setState(() {
        user = response;
      });
    } catch (e) {
      String errorMsg = 'Error in profile ';
      if (e is ApiError) {
        errorMsg = e.Message;
      }
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(errorMsg)));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    GetProfileData().then((value) {
      _name.text = user?.name ?? '';
      _email.text = user?.email ?? '';
      _address.text = user?.address ?? '';
    
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: SingleChildScrollView(
        child: Skeletonizer(
          enabled: user == null,
          child: Column(
            children: [
              Container(
                height: 129,
                width: 126,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: user?.image != null
                        ? NetworkImage(user!.image!)
                        : AssetImage(Assets.user_image),
                  ),
                  border: Border.all(width: 4, color: Colors.white),
                ),
              ),
              Gap(28),
              CustomTextFormField(
                Hint: 'Name',
                isPassword: false,
                controller: _name,
                radius: 20,
                fillcolor: AppColors.Primary,
                hintcolor: Colors.white,
                textStyle: TextStyle(color: Colors.white),
              ),
              Gap(25),
              CustomTextFormField(
                Hint: 'Email',
                isPassword: false,
                controller: _email,
                radius: 20,
                fillcolor: AppColors.Primary,
                hintcolor: Colors.white,
                textStyle: TextStyle(color: Colors.white),
              ),
              Gap(25),
              CustomTextFormField(
                Hint: 'Delivery address',
                isPassword: false,
                controller: _address,
                radius: 20,
                fillcolor: AppColors.Primary,
                hintcolor: Colors.white,
                textStyle: TextStyle(color: Colors.white),
              ),
              Gap(20),
              Divider(
                color: Colors.grey.withOpacity(0.5),
                thickness: 1,
                indent: 30,
                endIndent: 30,
              ),
              Gap(20),
              ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
                leading: Image.asset(Assets.visa, color: Colors.blue.shade900),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Debit card',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      user?.visa ?? '3566 **** **** 0505',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
                trailing: Text(
                  'Default',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
