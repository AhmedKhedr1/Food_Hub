import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.Hint,
    required this.isPassword,
    required this.controller,
  });
  final String Hint;
  final bool isPassword;
  final TextEditingController controller;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool _obscureText;
  @override
  void initState() {
    // TODO: implement initState
    _obscureText = widget.isPassword;
  }

  void togglePassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please Enter Your  ${widget.Hint}';
        }
      },
      controller: widget.controller,
      obscureText: _obscureText,
      cursorColor: AppColors.Primary,
      cursorHeight: 20,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: widget.Hint,
        hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: togglePassword,
                child: Icon(CupertinoIcons.eye),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
