import 'package:flutter/material.dart';

import '../colors/colors.dart';

class buttonWidget extends StatelessWidget {
  const buttonWidget({
    super.key,
    required this.Textinbutton,
    this.TextSize = 18,
    this.TextColor = Colors.white,
    required this.PageName,
    this.buttonWidth = 60,
    this.buttonHigut = 60,
    this.borderRadiusButton = 15,
    this.buttonColor = AppColors.secondary_colors,
  });
  final String Textinbutton;
  final int TextSize;
  final Color TextColor;
  final Widget PageName;
  final double buttonWidth;
  final double buttonHigut;
  final double borderRadiusButton;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PageName,
          ),
        );
      },
      child: Text(
        Textinbutton,
        style: TextStyle(
            fontSize: 18, color: TextColor, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        fixedSize: Size(
          MediaQuery.of(context).size.width - buttonWidth,
          buttonHigut,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadiusButton),
        ),
      ),
    );
  }
}
