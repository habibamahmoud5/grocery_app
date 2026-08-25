import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String image;
  final String name;
  final String quantity;
  final String price;
  final VoidCallback? onTap;
  const Product({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.quantity,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 173,
        height: 248.51,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Color(0xffE2E2E2)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                child: Image.asset(
                  width: 110,
                  height: 80,
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            SizedBox(height: 33.4),

            Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff181725),
              ),
            ),

            SizedBox(height: 5),

            Text(
              quantity,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff7C7C7C),
              ),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                  ),
                ),
                Container(
                  width: 45.67,
                  height: 45.67,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Color(0xff53B175),
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
