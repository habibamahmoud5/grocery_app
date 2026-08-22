import 'package:flutter/material.dart';
import 'package:grocery_app/screens/login.dart';
import 'package:grocery_app/widgets/buttom.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/onbording.png', fit: BoxFit.cover),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.11),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/white carrot.png',
                    width: 48,
                    height: 56,
                  ),
                ),

                const SizedBox(height: 35),

                const Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const Text(
                  'to our store',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  'Ger your groceries as fast as one hour',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xffFCFCFC), fontSize: 16),
                ),

                const SizedBox(height: 25),

                Buttom(
                  text: 'Get Started',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
                SizedBox(height: 90),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
