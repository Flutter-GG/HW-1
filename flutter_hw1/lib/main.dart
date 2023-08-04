import "package:flutter/material.dart";
import "package:flutter_hw1/pages/main_page.dart";

/* this file for app runner only */
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}
