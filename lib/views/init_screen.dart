import 'package:flutter/material.dart';
import 'package:yum/widget/button_widget.dart';
import 'package:yum/widget/text_widget.dart';
import '../widget/image_widget.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff70B9BE),
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: const ImageWidget(
                    path: 'assets/images/imageInit.jpg',
                  )),
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffF8F8F8),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          TextWidget(
                            text: "Let's cooking",
                            weight: FontWeight.w900,
                            size: 25,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            child: TextWidget(
                              text:
                                  "Cooking based on the food recipes you find and the food you love=)",
                              size: 15,
                              weight: FontWeight.w100,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CustomElevatedButton(
                            title: 'Get Started',
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
