import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String labelText;
  String? Function(String?)? validator;
  bool obscureText;
  Widget? suffixIcon;

  CustomTextField({
    super.key,
    required this.labelText,
    this.validator,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,

      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(fontSize: 16, color: Color(0xff7C7C7C)),
        suffixIcon: suffixIcon,
      ),

      validator: validator,
    );
  }
}
