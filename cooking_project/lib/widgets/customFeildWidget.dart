import "package:flutter/material.dart";

class FieldsWidget extends StatefulWidget {
  const FieldsWidget({
    super.key,
    required this.label,
    required this.customFontSize,
    this.isBold = false,
    required this.customHintText,
    required this.customPrefixIcon,
    this.customSuffixIcon,
  });

  final String label;
  final double customFontSize;
  final bool isBold;
  final String customHintText;
  final Icon customPrefixIcon;
  final Icon? customSuffixIcon;

  @override
  FieldsWidgetState createState() => FieldsWidgetState();
}

class FieldsWidgetState extends State<FieldsWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: widget.customFontSize,
              fontWeight: widget.isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: MediaQuery.of(context).size.width,
            child: TextField(
              decoration: InputDecoration(
                hintText: widget.customHintText,
                prefixIcon: widget.customPrefixIcon,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
