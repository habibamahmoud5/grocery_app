import 'package:flutter/material.dart';
import 'package:grocery_app/models/product.dart';
import 'package:grocery_app/screens/account_screen.dart';
import 'package:grocery_app/screens/cart_screen.dart';
import 'package:grocery_app/screens/explore_screen.dart';
import 'package:grocery_app/screens/favourite_screen.dart';
import 'package:grocery_app/screens/product_details_screen.dart';
import 'package:grocery_app/screens/shop_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentIndex = 0;
  ProductModel? selectedProduct;
  List<Widget> screens = [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
    AccountScreen(),
  ];
  void openProductDetails(ProductModel product) {
    setState(() {
      selectedProduct = product;
    });
  }

  void closeProductDetails() {
    setState(() {
      selectedProduct = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: selectedProduct == null
          ? screens[currentIndex]
          : ProductDetailsScreen(
              product: selectedProduct!,
              onBack: closeProductDetails,
            ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff53B175),
        unselectedItemColor: Color(0xff181725),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
