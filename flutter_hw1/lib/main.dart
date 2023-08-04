import 'package:flutter/material.dart';
import 'package:flutter_hw1/custom_widgets/card_widget.dart';
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
            child: CustomCard(
          mainMealName: 'mainMealName',
          profileName: 'profileName',
          containerWidth: 300,
        )),
      ),
    );
  }
}
