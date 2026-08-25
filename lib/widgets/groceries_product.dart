import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GroceriesProduct extends StatelessWidget {
  String image;
  String name;
  Color color;

  GroceriesProduct({
    super.key,
    required this.image,
    required this.name,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248,
      height: 105,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 55,
            height: 70,
            child: Image(image: AssetImage(image)),
          ),
          SizedBox(width: 15),
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xff3E423F),
            ),
          ),
        ],
      ),
    );
  }
}
