import 'package:flutter/material.dart';

class FieldsWidget extends StatelessWidget {
  const FieldsWidget(
      {super.key,
      required this.label,
      required this.customFintSize,
      this.isBold = false,
      required this.customHintText,
      required this.customPrefixIcon});
  final String label;
  final double customFintSize;
  final bool isBold;
  final String customHintText;
  final Icon customPrefixIcon;

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
              fontSize: customFintSize,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: customHintText,
            prefixIcon: customPrefixIcon,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}
