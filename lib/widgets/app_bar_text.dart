import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBarText extends StatelessWidget {
  String title;
  AppBarText({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color(0xff181725),
      ),
    );
  }
}
