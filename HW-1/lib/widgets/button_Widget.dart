import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      this.text = 'Get Started',
      this.textColor = Colors.white,
      this.bgColor,
      this.onPressed});
  final String text;
  final Color textColor;
  final Color? bgColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
          backgroundColor: MaterialStateProperty.all(
            // if the color is not specified (have null value) then set bgColor to appColors[0]
            bgColor ?? appColors[0],
          ),
          fixedSize: MaterialStateProperty.all(
              Size(MediaQuery.of(context).size.width - 40, 50))),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
