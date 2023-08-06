import 'package:flutter/material.dart';
import 'package:hw_1/View/Screens/filter.dart';
import 'package:hw_1/View/Screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home:StartScreen(),
    );
  }
}
