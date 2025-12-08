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
    required this.buttoncolor, required this.raduis,
  });
  void Function() onPressed;
  final String textbutton;
  final double width, height,raduis;
  final Color textcolor, buttoncolor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: buttoncolor,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(raduis)),
      ),
      onPressed: onPressed,
      child: Text(
        textbutton,
        style: TextStyle(
          color: textcolor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
