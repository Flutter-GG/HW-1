import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/inti_Screen.dart';
import 'package:flutter_application_1/view/search_Screen.dart';
import 'package:flutter_application_1/view/signUp_Screen.dart';

// Grouping all colors in list to easy change the colors app
// 0 for dark color
// 1 for light color
List<Color> appColors = [const Color(0xff042628), const Color(0xff70B9BE)];

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InitScreen(),
    );
  }
}
