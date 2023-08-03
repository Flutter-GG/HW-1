import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      this.isText2 = false,
      required this.customText1,
      this.customFontSize1 = 16,
      this.customFontColor1 = Colors.black,
      this.customText2,
      this.customFontSize2,
      this.customFontColor2,
      this.isBold1 = true,
      this.isBold2 = true});
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
    if (isText2) {
      return Column(
        children: [
          Text(
            customText1,
            style: TextStyle(
                fontSize: customFontSize1,
                color: customFontColor1,
                fontWeight: isBold1 ? FontWeight.bold : FontWeight.normal),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            customText2!,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: customFontSize2,
                color: customFontColor2,
                fontWeight: isBold2 ? FontWeight.bold : FontWeight.normal),
          ),
        ],
      );
    } else {
      return Column(children: [
        Text(
          customText1,
          style: TextStyle(
              fontSize: customFontSize1,
              color: customFontColor1,
              fontWeight: isBold1 ? FontWeight.bold : FontWeight.normal),
        )
      ]);
    }
  }
}
