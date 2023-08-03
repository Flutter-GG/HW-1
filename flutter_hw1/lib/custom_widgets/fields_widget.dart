import 'package:flutter/material.dart';

class CustomFieldsWidget extends StatelessWidget {
  const CustomFieldsWidget(
      {super.key,
      required this.label,
      required this.customFontSize,
      this.isBold = false,
      required this.customHintText,
      required this.customPrefixIcon,
      this.customSuffixIcon});
  final String label;
  final double customFontSize;
  final bool isBold;
  final String customHintText;
  final Icon customPrefixIcon;
  final Icon? customSuffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: customFontSize,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: customHintText,
            prefixIcon: customPrefixIcon,
            suffixIcon: customSuffixIcon,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}
