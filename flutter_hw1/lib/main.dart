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
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText(
                  customText1: 'text10',
                  isBold1: false,
                  isText2: false,
                  customText2: 'text2',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
