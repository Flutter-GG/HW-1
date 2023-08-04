import 'package:flutter/material.dart';
import 'package:flutter_hw1/custom_widgets/buttons_widget.dart';
import 'package:flutter_hw1/custom_widgets/texts_widget.dart';
import 'package:flutter_hw1/pages/create_account_page.dart';
import 'package:flutter_hw1/pages/login_page.dart';
// import 'package:flutter_hw1/pages/create_account_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff70B9BE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/images/main_page_image.jpeg',
                  fit: BoxFit.cover),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CustomTextWidget(
                      isText2: true,
                      customText1: "Let's cooking",
                      customFontSize1: 20,
                      customText2:
                          "Cooking based on the food recipes you find and the food you love",
                      customFontSize2: 16,
                      isBold2: false,
                      customFontColor2: Colors.grey,
                      ifTextOverFlow: TextOverflow.clip,
                    ),
                    CustomButtonsWidget(
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        customText: "Login",
                        elevatedButtonWidth: MediaQuery.of(context).size.width),
                    CustomButtonsWidget(
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CreateAccount(),
                            ),
                          );
                        },
                        customText: "Get Started",
                        elevatedButtonWidth: MediaQuery.of(context).size.width)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
