import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/custom_text_field.dart';
import 'package:grocery_app/widgets/groceries_product.dart';
import 'package:grocery_app/widgets/product.dart';
import 'package:grocery_app/widgets/section_title.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: InkWell(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 24.70),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 28.42),
                  Center(
                    child: Image.asset(
                      'assets/carrot.png',
                      width: 26.48,
                      height: 30.8,
                    ),
                  ),
                  SizedBox(height: 7.6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        size: 18,
                        color: Color(0xff4C4F4D),
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Dhaka, Banassre',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff4C4F4D),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    hintText: 'Search Store',
                    prefixIcon: Icon(
                      Icons.search_sharp,
                      color: Color(0xff181B19),
                    ),
                    fillColor: Color(0xffF2F3F2),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 114.99,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage('assets/banner.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),

                  SectionTitle(title: 'Exclusive Offer'),

                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Product(
                          image: 'assets/banana.png',
                          name: 'Organic Bananas',
                          price: '\$4.99',
                          quantity: '7pcs, Priceg',
                        ),
                      ),
                      SizedBox(width: 15),

                      Expanded(
                        child: Product(
                          image: 'assets/apple.png',
                          name: 'Apple',
                          price: '\$4.99',
                          quantity: '1kg, priceg',
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30),

                  SectionTitle(title: 'Best Selling'),

                  SizedBox(height: 20),

                  Row(
                    children: [
                      Expanded(
                        child: Product(
                          image: 'assets/peper.png',
                          name: 'Bell Pepper Red',
                          price: '\$4.99',
                          quantity: '1kg, Priceg',
                        ),
                      ),
                      SizedBox(width: 15),

                      Expanded(
                        child: Product(
                          image: 'assets/ginger.png',
                          name: 'Ginger',
                          price: '\$4.99',
                          quantity: '250gm, priceg',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),

                  SectionTitle(title: 'Groceries'),

                  SizedBox(height: 20),

                  Row(
                    children: [
                      Expanded(
                        child: GroceriesProduct(
                          image: 'assets/pulses.png',
                          name: 'Pulses',
                          color: Color(0xffF8A44C).withOpacity(0.15),
                        ),
                      ),
                      SizedBox(width: 14.95),
                      Expanded(
                        child: GroceriesProduct(
                          image: 'assets/rice.png',
                          name: 'Rice',
                          color: Color(0xff53B175).withOpacity(0.15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  Row(
                    children: [
                      Expanded(
                        child: Product(
                          image: 'assets/beef.png',
                          name: 'Beef Bone',
                          price: '\$4.99',
                          quantity: '1kg, Priceg',
                        ),
                      ),
                      SizedBox(width: 15),

                      Expanded(
                        child: Product(
                          image: 'assets/chicken.png',
                          name: 'Broiler Chicken',
                          price: '\$4.99',
                          quantity: '1kg, priceg',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
