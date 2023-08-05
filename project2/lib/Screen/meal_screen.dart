import 'package:flutter/material.dart';

import '../widget/bold_text.dart';

class meal_screen extends StatelessWidget {
  const meal_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: bold_text(TextName: "Meal"),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
    );
  }
}
