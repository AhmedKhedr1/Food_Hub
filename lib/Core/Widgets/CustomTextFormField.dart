import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/Core/Constants/App_colors.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    super.key,
    required this.Hint,
    required this.isPassword,
    required this.controller,
    this.fillcolor,
    this.radius,
    this.hintcolor,
    this.textStyle,
    this.BorderColor,
  });
  final String Hint;
  final bool isPassword;
  final TextEditingController controller;
  Color? fillcolor, hintcolor, BorderColor;
  double? radius;
  TextStyle? textStyle;

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
      style: widget.textStyle,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please Enter Your  ${widget.Hint}';
        }
      },
      controller: widget.controller,
      obscureText: _obscureText,
      cursorColor: Colors.black,
      cursorHeight: 20,
      decoration: InputDecoration(
        //  labelText:widget.Hint,
        filled: true,
        fillColor: widget.fillcolor ?? Colors.white,
        hintText: widget.Hint,
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: widget.hintcolor ?? Colors.black,
        ),

        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: togglePassword,
                child: Icon(CupertinoIcons.eye),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius ?? 8),

          borderSide: BorderSide(
            width: 1.5,
            color: widget.BorderColor ?? Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius ?? 8),

          borderSide: BorderSide(color: widget.BorderColor ?? Colors.white),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius ?? 8),

          borderSide: BorderSide(color: widget.BorderColor ?? Colors.white),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius ?? 8),

          borderSide: BorderSide(color: widget.BorderColor ?? Colors.white),
        ),
      ),
    );
  }
}
