import 'package:flutter/material.dart';
import 'package:hw_1/Widgets/Button_Widget.dart';
import 'package:hw_1/Widgets/Image_Widget.dart';
import 'package:hw_1/Widgets/Text_Widget.dart';

import 'package:hw_1/pages/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5e4dd),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Expanded(
                flex: 2,
                child: ImageWidget(
                  image: 'assets/images/img_1.jpg',
                  imageWidth: MediaQuery.of(context).size.width,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 35, horizontal: 20),
                        child: Column(children: const [
                          TextWidget(
                              text: "Let's cooking",
                              size: 30,
                              istextBold: true,
                              isColorOpacity: true),
                          SizedBox(
                            height: 10,
                          ),
                          TextWidget(
                              text:
                                  "Cooking based on the food recipes you find and the food you love",
                              istextBold: false,
                              textAlign: TextAlign.center,
                              isColorOpacity: false),
                        ]),
                      ),
                      Column(
                        children: [
                          ButtonsWidget(
                              text: "Get Started",
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()));
                              }),
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
