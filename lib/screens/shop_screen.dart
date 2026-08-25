import 'package:flutter/material.dart';
import 'package:grocery_app/models/product.dart';
import 'package:grocery_app/screens/product_details_screen.dart';
import 'package:grocery_app/widgets/custom_slider.dart';
import 'package:grocery_app/widgets/custom_text_field.dart';
import 'package:grocery_app/widgets/groceries_product.dart';
import 'package:grocery_app/widgets/product.dart';
import 'package:grocery_app/widgets/section_title.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen({super.key});

  final List<ProductModel> exclusiveOfferProducts = [
    ProductModel(
      image: 'assets/banana.png',
      name: 'Organic Bananas',
      quantity: '7pcs, Price',
      price: '\$4.99',
    ),
    ProductModel(
      image: 'assets/apple.png',
      name: 'Red Apple',
      quantity: '1kg, Price',
      price: '\$4.99',
    ),
    ProductModel(
      image: 'assets/orange.png',
      name: 'Orange',
      quantity: '1kg, Price',
      price: '\$3.99',
    ),
  ];

  final List<ProductModel> bestSellingProducts = [
    ProductModel(
      image: 'assets/peper.png',
      name: 'Bell Pepper Red',
      quantity: '1kg, Price',
      price: '\$4.99',
    ),
    ProductModel(
      image: 'assets/ginger.png',
      name: 'Ginger',
      quantity: '250gm, Price',
      price: '\$4.99',
    ),
  ];

  final List<ProductModel> groceryProducts = [
    ProductModel(
      image: 'assets/beef.png',
      name: 'Beef Bone',
      quantity: '1kg, Price',
      price: '\$4.99',
    ),
    ProductModel(
      image: 'assets/chicken.png',
      name: 'Broiler Chicken',
      quantity: '1kg, Price',
      price: '\$4.99',
    ),
  ];

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
            padding: const EdgeInsets.symmetric(horizontal: 24.70),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 28.42),

                  Center(
                    child: Image.asset(
                      'assets/carrot.png',
                      width: 26.48,
                      height: 30.8,
                    ),
                  ),

                  const SizedBox(height: 7.6),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on_rounded,
                        size: 18,
                        color: Color(0xff4C4F4D),
                      ),

                      const SizedBox(width: 5),

                      const Text(
                        'Dhaka, Banassre',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff4C4F4D),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  CustomTextField(
                    hintText: 'Search Store',
                    prefixIcon: const Icon(
                      Icons.search_sharp,
                      color: Color(0xff181B19),
                    ),
                    fillColor: const Color(0xffF2F3F2),
                  ),

                  const SizedBox(height: 20),

                  const CustomSlider(),

                  const SizedBox(height: 30),

                  SectionTitle(title: 'Exclusive Offer'),

                  const SizedBox(height: 20),

                  SizedBox(
                    height: 270,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: exclusiveOfferProducts.length,
                      itemBuilder: (context, index) {
                        final product = exclusiveOfferProducts[index];

                        return Product(
                          image: product.image,
                          name: product.name,
                          price: product.price,
                          quantity: product.quantity,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetailsScreen(product: product),
                              ),
                            );
                          },
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 10);
                      },
                    ),
                  ),

                  const SizedBox(height: 30),

                  SectionTitle(title: 'Best Selling'),

                  const SizedBox(height: 20),

                  SizedBox(
                    height: 270,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: bestSellingProducts.length,
                      itemBuilder: (context, index) {
                        final product = bestSellingProducts[index];

                        return Product(
                          image: product.image,
                          name: product.name,
                          price: product.price,
                          quantity: product.quantity,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetailsScreen(product: product),
                              ),
                            );
                          },
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 10);
                      },
                    ),
                  ),

                  const SizedBox(height: 30),

                  SectionTitle(title: 'Groceries'),

                  const SizedBox(height: 20),

                  SizedBox(
                    height: 100,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return GroceriesProduct(
                            image: 'assets/pulses.png',
                            name: 'Pulses',
                            color: const Color(0xffF8A44C).withOpacity(0.15),
                          );
                        }

                        return GroceriesProduct(
                          image: 'assets/rice.png',
                          name: 'Rice',
                          color: const Color(0xff53B175).withOpacity(0.15),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 15);
                      },
                    ),
                  ),
                  const SizedBox(height: 20),

                  SizedBox(
                    height: 270,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: groceryProducts.length,
                      itemBuilder: (context, index) {
                        final product = groceryProducts[index];

                        return Product(
                          image: product.image,
                          name: product.name,
                          price: product.price,
                          quantity: product.quantity,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetailsScreen(product: product),
                              ),
                            );
                          },
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 10);
                      },
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
