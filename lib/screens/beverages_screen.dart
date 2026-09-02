import 'package:flutter/material.dart';
import 'package:grocery_app/screens/Filter_screen.dart';
import 'package:grocery_app/widgets/app_bar_text.dart';
import 'package:grocery_app/widgets/product.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.70),

          child: Column(
            children: [
              const SizedBox(height: 20),

              AppBarText(
                title: 'Beverages',

                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                    color: Color(0xff181725),
                  ),
                ),

                action: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FilterScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.tune_rounded,
                    size: 20,
                    color: Color(0xff181725),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.70,

                  children: [
                    Product(
                      image: 'assets/Diet Coke.png',
                      name: 'Diet Coke',
                      quantity: '355ml, Price',
                      price: '\$1.99',
                    ),

                    Product(
                      image: 'assets/Sprite Can.png',
                      name: 'Sprite Can ',
                      quantity: '355ml, Price',
                      price: '\$1.50',
                    ),

                    Product(
                      image: 'assets/juice.png',
                      name: 'Apple & Grape Juice',
                      quantity: '2L, Price',
                      price: '\$15.99',
                    ),

                    Product(
                      image: 'assets/orange juice.png',
                      name: 'Orenge Juice',
                      quantity: '2L, Price',
                      price: '\$15.99',
                    ),

                    Product(
                      image: 'assets/Coca Cola Can.png',
                      name: 'Coca Cola Can',
                      quantity: '325ml, Price',
                      price: '\$4.99',
                    ),

                    Product(
                      image: 'assets/Pepsi Can.png',
                      name: 'Pepsi Can ',
                      quantity: '330ml, Price',
                      price: '\$4.99',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
