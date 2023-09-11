// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hw1_alawashiz/screens/login_screen.dart';
import 'package:hw1_alawashiz/widgets/button_widget.dart';
import 'package:hw1_alawashiz/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.asset( // ! TODO : make it with new Widget
                    "assets/images/background.jpg",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                    margin: EdgeInsets.only(top: 570),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            TextWidget(
                                text: "let's cooking",
                                color: Color(0XFF042628),
                                size: 30,
                                isBold: true),
                            SizedBox(
                              height: 15,
                            ),
                            TextWidget(
                              text:
                                  "cooking based on the food recipes you find and the food you love",
                              color: Colors.grey,
                              size: 20,
                              isBold: true,
                            ),
                          ],
                        ),
                        ButtonWidget(
                          text: "Get Started",
                          onPress: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=> LoginScreen()));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
