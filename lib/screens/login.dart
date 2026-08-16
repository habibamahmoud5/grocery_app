import 'package:flutter/material.dart';
import 'package:grocery_app/screens/bottom_navigation_screen.dart';
import 'package:grocery_app/screens/shop_screen.dart';
import 'package:grocery_app/widgets/buttom.dart';
import 'package:grocery_app/screens/sign_up.dart';
import 'package:grocery_app/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: InkWell(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.11),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 28.42),
                      Center(child: Image.asset('assets/carrot.png')),
                      SizedBox(height: 100.2),
                      Text(
                        'Loging',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Enter your emails and password',
                        style: TextStyle(
                          color: Color(0xff7C7C7C),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 40),

                      CustomTextField(
                        labelText: 'Email',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!value.contains('@')) {
                            return 'Enter a valid email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 30),

                      CustomTextField(
                        obscureText: true,
                        labelText: 'Password',
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: Color(0xff7C7C7C),
                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your password';
                          }

                          if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }

                          if (!RegExp(r'[a-z]').hasMatch(value)) {
                            return 'Password must contain a lowercase letter';
                          }

                          if (!RegExp(r'[A-Z]').hasMatch(value)) {
                            return 'Password must contain an uppercase letter';
                          }

                          if (!RegExp(r'[0-9]').hasMatch(value)) {
                            return 'Password must contain a number';
                          }

                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: AlignmentGeometry.centerRight,

                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Color(0xff181725)),
                        ),
                      ),
                      SizedBox(height: 30),
                      Buttom(
                        text: 'Log In',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print('VALIDATION SUCCESS');
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const BottomNavigationScreen(),
                              ),
                            );
                          }
                        },
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              color: Color(0xff181725),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Signup",
                              style: TextStyle(
                                color: Color(0xff53B175),
                                fontWeight: FontWeight.w600,
                              ),
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
        ),
      ),
    );
  }
}
