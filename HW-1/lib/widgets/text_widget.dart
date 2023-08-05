import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.left,
      this.color = Colors.black,
      this.fontSize = 15,
      this.isBold = false});
  final String text;
  final TextAlign textAlign;
  final Color color;
  final double fontSize;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
