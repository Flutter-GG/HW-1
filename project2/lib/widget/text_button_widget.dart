import 'package:flutter/material.dart';

import '../colors/colors.dart';

class text_button_widget extends StatelessWidget {
  const text_button_widget({
    super.key,
    required this.TextInButton,
    this.TextSize = 17,
    this.TexrWeight = FontWeight.bold,
    this.buttonColor = AppColors.secondary_colors,
  });
  final String TextInButton;
  final double TextSize;
  final FontWeight TexrWeight;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Center(
        child: Text(
          TextInButton,
          style: TextStyle(
              color: buttonColor, fontSize: TextSize, fontWeight: TexrWeight),
        ),
      ),
    );
  }
}
