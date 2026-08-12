import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buttom extends StatelessWidget {
  String text;
  VoidCallback onPressed;
  Buttom({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff53B175),
        foregroundColor: Color(0xffFFF9FF), // Text color
        minimumSize: const Size(double.infinity, 67),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
        elevation: 0,
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
