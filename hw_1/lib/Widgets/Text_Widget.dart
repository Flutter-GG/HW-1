import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      this.text = '',
      this.size = 18,
      this.istextBold = false,
      this.textAlign,
      this.isColorOpacity = false});
  final String text;
  final double size;
  final bool istextBold;
  final TextAlign? textAlign;
  final bool isColorOpacity;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: istextBold != true ? FontWeight.normal : FontWeight.bold,
          fontSize: size,
          color: isColorOpacity != true
              ? Colors.black.withOpacity(0.6)
              : const Color(0xff5d8d80)),
      textAlign: textAlign,
    );
  }
}
