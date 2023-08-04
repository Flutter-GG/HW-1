import "package:flutter/material.dart";

class CustomButtonsWidget extends StatelessWidget {
  const CustomButtonsWidget(
      {super.key,
      this.bgColor = Colors.black,
      this.fgColor = Colors.white,
      this.customFontSize = 16,
      this.isBold = true,
      required this.customText,
      this.isElevatedButton = true,
      required this.elevatedButtonWidth,
      this.elevatedButtonHeight = 50});
  final Color bgColor;
  final Color fgColor;
  final double customFontSize;
  final bool isBold;
  final String customText;
  final bool isElevatedButton;
  final double elevatedButtonWidth;
  final double elevatedButtonHeight;

  @override
  Widget build(BuildContext context) {
    return isElevatedButton == true
        ? ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                fixedSize: Size(elevatedButtonWidth, elevatedButtonHeight),
                backgroundColor: bgColor,
                foregroundColor: fgColor),
            onPressed: () {},
            child: Text(
              customText,
              style: TextStyle(
                  fontSize: customFontSize,
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
            ),
          )
        : TextButton(
            onPressed: () {},
            child: Text(
              customText,
              style: const TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          );
  }
}
