import 'package:flutter/material.dart';
import '../widgets/customButtonWidget.dart';
import '../widgets/imageHomePage.dart';
import '../widgets/textWidget.dart';
import 'loginPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 2,
            //call widget
            child: ImageHomePage(
              size: MediaQuery.of(context).size.width,
              isNetworking: false,
              path: 'assets/images/ImageHome.png',
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  children: [
                    //call widget
                    TextWidget(
                        text: "Let's cooking",
                        size: 45,
                        weight: FontWeight.bold,
                        color: Colors.black),

                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text(
                        "Cooking based on the food recipes you find and the food you love",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                //call widget
                CustomButtonWedgit(
                  title: "Get Started ",
                  bgColor: Color.fromARGB(255, 2, 46, 44),
                  fgColor: Colors.white,
                  isBorderSide: false,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
