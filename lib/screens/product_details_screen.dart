import 'package:flutter/material.dart';
import 'package:grocery_app/models/product.dart';
import 'package:grocery_app/widgets/buttom.dart';

class ProductDetailsScreen extends StatefulWidget {
  final ProductModel product;
  final VoidCallback onBack;
  const ProductDetailsScreen({
    super.key,
    required this.product,
    required this.onBack,
  });

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffF2F3F2),
        leading: IconButton(
          onPressed: widget.onBack,
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff181725),
            size: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.file_upload_outlined,
              color: Color(0xff181725),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Image.asset(
                  widget.product.image,
                  width: 250,
                  height: 250,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),

                  Row(
                    children: [
                      Text(
                        widget.product.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff181725),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.favorite_border_rounded),
                    ],
                  ),

                  const SizedBox(height: 10),

                  Text(
                    widget.product.quantity,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C),
                    ),
                  ),

                  const SizedBox(height: 25),

                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          if (quantity > 1) {
                            setState(() {
                              quantity--;
                            });
                          }
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Color(0xff53B175),
                        ),
                      ),

                      Container(
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffE2E2E2)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          '$quantity',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),

                      IconButton(
                        onPressed: () {
                          setState(() {
                            quantity++;
                          });
                        },
                        icon: const Icon(Icons.add, color: Color(0xff53B175)),
                      ),

                      const Spacer(),

                      Text(
                        widget.product.price,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff181725),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(color: Color(0xffE2E2E2B2)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Product Detail',
                        style: TextStyle(
                          color: Color(0xff181725),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(0xff181725),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  Divider(color: Color(0xffE2E2E2B2)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Nutritions',
                        style: TextStyle(
                          color: Color(0xff181725),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            '100gr',
                            style: TextStyle(
                              color: Color(0xff7C7C7C),
                              fontWeight: FontWeight.w600,
                              fontSize: 9,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(0xff181725),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  Divider(color: Color(0xffE2E2E2B2)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Review',
                        style: TextStyle(
                          color: Color(0xff181725),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.star, color: Color(0xffF3603F)),
                          Icon(Icons.star, color: Color(0xffF3603F)),
                          Icon(Icons.star, color: Color(0xffF3603F)),
                          Icon(Icons.star, color: Color(0xffF3603F)),
                          Icon(Icons.star, color: Color(0xffF3603F)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(0xff181725),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Buttom(
                    text: 'Add To Basket',
                    onPressed: () {},
                    backgroundColor: Color(0xff53B175),
                    foregroundColor: Color(0xffFFF9FF),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
