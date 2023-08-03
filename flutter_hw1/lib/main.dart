import 'package:flutter/material.dart';
import 'package:flutter_hw1/custom_widgets/buttons_widget.dart';
import 'package:flutter_hw1/custom_widgets/texts_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('assets/images/image1.jpg',
                              fit: BoxFit.cover, height: 80, width: 80),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CustomText(
                                customText1: 'Easy homemade beef burger',
                                customFontSize1: 16,
                                ifTextOverFlow: TextOverflow.clip,
                                isTextAlign: TextAlign.start,
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(500),
                                    child: Image.asset(
                                        'assets/images/image1.jpg',
                                        fit: BoxFit.cover,
                                        height: 20,
                                        width: 20),
                                  ),
                                  const SizedBox(width: 10),
                                  const CustomText(
                                    customText1: 'James Spader',
                                    isBold1: false,
                                    customFontSize1: 13,
                                    ifTextOverFlow: TextOverflow.clip,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Center(
                          child: CustomButtons(
                            customText: 't',
                            customFontSize: 10,
                            elevatedButtonWidth: 10,
                            elevatedButtonHeight: 10,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
