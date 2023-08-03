import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.customText1,
      this.customFontSize1 = 16,
      this.customFontColor1 = Colors.black,
      required this.customText2,
      this.customFontSize2 = 16,
      this.customFontColor2 = Colors.black,
      this.isBold = true});
  final String customText1;
  final double customFontSize1;
  final Color customFontColor1;
  final String customText2;
  final double customFontSize2;
  final Color customFontColor2;
  final bool isBold;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          customText1,
          style: TextStyle(
              fontSize: customFontSize1,
              color: customFontColor1,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          customText2,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: customFontSize2,
              color: customFontColor2,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        )
      ],
    );
  }
}
