import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/View/login.dart';
import 'package:flutter_application_1/View/compunent/buttonClose.dart';

class onboarding extends StatelessWidget {
  const onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF70B9BF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              "assets/image/WhatsApp Image 2023-08-03 at 23.53.50.jpeg",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              width: 440,
              height: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: const Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Let's cooking",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "cooking based on the food recipes you \nfind and the food you love",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  NavigationButton(
                    title: "Get Started",
                    TextcolorButton: Colors.white,
                    colorButton: Color(0xff042627),
                    a: login(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
