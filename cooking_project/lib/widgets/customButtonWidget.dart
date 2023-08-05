import 'package:flutter/material.dart';

import 'textWidget.dart';

class CustomButtonWedgit extends StatelessWidget {
  const CustomButtonWedgit({
    super.key,
    required this.title,
    required this.bgColor,
    required this.fgColor,
    required this.isBorderSide,
    this.onPressed,
  });
  final String title;
  final Color bgColor;
  final Color fgColor;
  final bool isBorderSide;

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: fgColor,
          side: isBorderSide ? const BorderSide(color: Colors.black) : null,
          fixedSize: Size(MediaQuery.of(context).size.width - 50, 50)),
      child: TextWidget(
        text: title,
        size: 20,
        weight: FontWeight.bold,
      ),
    );
  }
}
