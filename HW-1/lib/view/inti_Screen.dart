import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/view/login_Screen.dart';

import '../widgets/text_widget.dart';
import '../widgets/button_Widget.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors[1],
      body: SafeArea(
          top: false,
          child: Column(children: [
            Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/images/initImage.png',
                  width: MediaQuery.of(context).size.width,
                )),
            Expanded(
                flex: 1,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const TextWidget(
                          text: "Let's cooking",
                          fontSize: 28,
                          isBold: true,
                        ),
                        const TextWidget(
                          text:
                              "Cooking based on the food recipes you find and the food you love",
                          textAlign: TextAlign.center,
                          color: Colors.black54,
                        ),
                        ButtonWidget(
                          text: 'Get Started',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LogIn()));
                          },
                        ),
                      ]),
                ))
          ])),
    );
  }
}
