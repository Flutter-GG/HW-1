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
    this.customText = 'test',
    this.elevatedButtonWidth = 300,
    this.isSizedBoxButton = false,
    this.sizedBoxButtonWidth = 0,
    this.sizedBoxButtonHeight = 0,
    this.sizedBoxIcon,
    this.onPress,
  });
  final Color bgColor;
  final Color fgColor;
  final double customFontSize;
  final bool isBold;
  final String? customText;
  final bool isElevatedButton;
  final double? elevatedButtonWidth;
  final double elevatedButtonHeight;
  final bool isSizedBoxButton;
  final double sizedBoxButtonWidth;
  final double sizedBoxButtonHeight;
  final Icon? sizedBoxIcon;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    if (isElevatedButton == true) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            fixedSize: Size(elevatedButtonWidth!, elevatedButtonHeight),
            backgroundColor: bgColor,
            foregroundColor: fgColor),
        onPressed: onPress,
        child: Text(
          customText!,
          style: TextStyle(
              fontSize: customFontSize,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );
    } else if (isSizedBoxButton == true) {
      return SizedBox(
        width: sizedBoxButtonWidth,
        height: sizedBoxButtonHeight,
        child: ElevatedButton(
            onPressed: onPress,
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.black),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              padding: MaterialStateProperty.all(EdgeInsets.zero),
            ),
            child: sizedBoxIcon),
      );
    } else {
      return TextButton(
        onPressed: onPress,
        child: Text(
          customText!,
          style: TextStyle(
              color: fgColor,
              fontSize: customFontSize,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );
    }
  }
}
