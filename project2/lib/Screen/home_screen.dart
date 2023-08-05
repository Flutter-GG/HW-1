import 'package:flutter/material.dart';
import 'package:project2/Screen/sign_In_screens.dart';
import '../widget/bold_text.dart';
import '../widget/buttonWidget.dart';
import '../widget/smallText.dart';
import 'package:project2/colors/colors.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary_color,
      appBar: AppBar(
        backgroundColor: AppColors.primary_color,
        elevation: 0,
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset(
                "assets/img/home.jpg",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        bold_text(
                          TextName: "Let's cooking",
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 30,
                            right: 30,
                            top: 40,
                          ),
                          child: smallText(
                            TextName:
                                "Cooking based on the food recipes you find and the food you love",
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        buttonWidget(
                          Textinbutton: "Get Started",
                          PageName: sign_in_screens(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
