import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      this.bgColor = Colors.black,
      this.fgColor = Colors.white,
      this.customFintSize = 16,
      this.isBold = false,
      required this.customText});
  final Color bgColor;
  final Color fgColor;
  final double customFintSize;
  final bool isBold;
  final String customText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          fixedSize: Size(MediaQuery.of(context).size.width, 50),
          backgroundColor: bgColor,
          foregroundColor: fgColor),
      onPressed: () {},
      child: Text(
        customText,
        style: TextStyle(
            fontSize: customFintSize,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
