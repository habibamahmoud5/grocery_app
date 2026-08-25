import 'package:flutter/material.dart';
import 'package:grocery_app/screens/login.dart';
import 'package:grocery_app/widgets/account_option.dart';
import 'package:grocery_app/widgets/buttom.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 25, bottom: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Image.asset('assets/account photo.png'),

                      SizedBox(width: 20),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Afsar Hossen',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff181725),
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.edit_outlined,
                                color: Color(0xff53B175),
                                size: 22,
                              ),
                            ],
                          ),

                          Text(
                            'Imshuvo97@gmail.com',
                            style: TextStyle(
                              color: Color(0xff7C7C7C),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Divider(color: Color(0xffE2E2E2), thickness: 1.20),
                AccountOption(
                  icon: Icons.shopping_bag_outlined,
                  title: 'Orders',
                ),
                AccountOption(
                  icon: Icons.contact_phone_outlined,
                  title: 'My Details',
                ),
                AccountOption(
                  icon: Icons.location_on_outlined,
                  title: 'Delivery Address',
                ),
                AccountOption(
                  icon: Icons.payment_rounded,
                  title: 'Payment Methods',
                ),
                AccountOption(
                  icon: Icons.local_offer_outlined,
                  title: 'Promo Code',
                ),
                AccountOption(
                  icon: Icons.notifications_none,
                  title: 'Notifecations ',
                ),
                AccountOption(icon: Icons.help_outline_rounded, title: 'Help'),
                AccountOption(icon: Icons.info_outline, title: 'About '),

                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.11),
                  child: Buttom(
                    text: 'Log Out',
                    foregroundColor: Color(0xff53B175),
                    backgroundColor: Color(0xffF2F3F2),
                    icon: Icons.logout,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
