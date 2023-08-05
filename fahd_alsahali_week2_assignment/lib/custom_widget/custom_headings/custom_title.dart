import 'package:flutter/material.dart';


class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key,
   this.title = "EasySave",
   this.fontSize = 25});

  final String title;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
    );
  }
}
