import "package:flutter/material.dart";
// import "package:flutter_hw1/custom_widgets/button_functions.dart";

class CustomButtonsWidget extends StatelessWidget {
  const CustomButtonsWidget({
    super.key,
    this.bgColor = Colors.black,
    this.fgColor = Colors.white,
    this.customFontSize = 16,
    this.isBold = true,
    this.isElevatedButton = true,
    this.elevatedButtonHeight = 50,
    required this.customText,
    required this.elevatedButtonWidth,
  });
  final Color bgColor;
  final Color fgColor;
  final double customFontSize;
  final bool isBold;
  final String customText;
  final bool isElevatedButton;
  final double elevatedButtonWidth;
  final double elevatedButtonHeight;
  // final Function onPress;

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
              style: TextStyle(
                  color: fgColor,
                  fontSize: customFontSize,
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
            ),
          );
  }
}
