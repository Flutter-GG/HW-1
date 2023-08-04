import "package:flutter/material.dart";

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    this.isTextAlign = TextAlign.center,
    this.ifTextOverFlow = TextOverflow.ellipsis,
    this.isText2 = false,
    required this.customText1,
    this.customFontSize1 = 16,
    this.customFontColor1 = Colors.black,
    this.customText2,
    this.customFontSize2,
    this.customFontColor2,
    this.isBold1 = true,
    this.isBold2 = true,
  });
  final TextAlign isTextAlign;
  final TextOverflow ifTextOverFlow;
  final bool isText2;
  final String customText1;
  final double customFontSize1;
  final Color customFontColor1;
  final String? customText2;
  final double? customFontSize2;
  final Color? customFontColor2;
  final bool isBold1;
  final bool isBold2;

  @override
  Widget build(BuildContext context) {
    return isText2
        ? Column(
            children: [
              Text(
                customText1,
                textAlign: isTextAlign,
                style: TextStyle(
                    overflow: ifTextOverFlow,
                    fontSize: customFontSize1,
                    color: customFontColor1,
                    fontWeight: isBold1 ? FontWeight.bold : FontWeight.normal),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                customText2!,
                textAlign: isTextAlign,
                style: TextStyle(
                    overflow: ifTextOverFlow,
                    fontSize: customFontSize2,
                    color: customFontColor2,
                    fontWeight: isBold2 ? FontWeight.bold : FontWeight.normal),
              ),
            ],
          )
        : Column(children: [
            Text(
              customText1,
              textAlign: isTextAlign,
              style: TextStyle(
                  overflow: ifTextOverFlow,
                  fontSize: customFontSize1,
                  color: customFontColor1,
                  fontWeight: isBold1 ? FontWeight.bold : FontWeight.normal),
            )
          ]);
  }
}
