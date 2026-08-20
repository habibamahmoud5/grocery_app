import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExploreProduct extends StatelessWidget {
  String image;
  String name;
  Color color;
  Color borderColor;

  ExploreProduct({
    super.key,
    required this.image,
    required this.name,
    required this.color,
    required this.borderColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 189.11,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: borderColor, width: 2),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          SizedBox(
            width: 110,
            height: 80,
            child: Image(image: AssetImage(image), fit: BoxFit.contain),
          ),
          SizedBox(height: 12),
          Center(
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff181725),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
