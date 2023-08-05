// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_buttons/custom_button.dart';
import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_image.dart';
import 'package:fahd_alsahali_week2_assignment/screens/pre_authentication/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff70B9BE),
      body: SafeArea(
        child: Column(
          children: [
            CustomImage(
              location: "assets/images/welcome_screen_image.jpg",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Let's cooking",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 50,
                            child: Text(
                              "Cooking based on the food recipes you find and the food you love.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.withOpacity(0.8)),
                            ),
                          ),
                        ],
                      ),
                      CustomButton(
                        buttonText: "Get Started",
                        width: MediaQuery.of(context).size.width - 50,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
