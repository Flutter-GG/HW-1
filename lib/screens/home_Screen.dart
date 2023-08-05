// ignore: file_names
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';
import 'login_Screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xfff2b25b),
        body: SafeArea(
          top: false,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(
                  "assets/img/background_cooking.jpg",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  ),
                ),

              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                    
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CustomText(
                            title: "Let's cooking",
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 10, 25, 35),
                        // symmetric(horizontal: 25, vertical: 20),
                        child: 
                            CustomText(
                                title: "Cooking based on the food recipes you find and the food you love",
                                fontSize: 18, textColor: Colors.grey, align: TextAlign.center,
                              ),
                          ),  

                          CustomButton(
                            title: "Get Started", buttonColor: 0xff04232a,
                            fontSize: 17, borderRadius: 15,
                            // onPressed:
                            screen: LoginScreen(),
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

