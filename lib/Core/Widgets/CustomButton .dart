// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.onPressed,
    required this.textbutton,
    required this.width,
    required this.height,
    required this.textcolor,
    required this.buttoncolor,
  });
  void Function()? onPressed;
  final String textbutton;
  final double width, height;
  final Color textcolor, buttoncolor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: buttoncolor,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onPressed,
      child: Text(
        textbutton,
        style: TextStyle(
          color: textcolor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
