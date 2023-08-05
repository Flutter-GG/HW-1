import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;

  const CustomField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0), 
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Colors.grey.withOpacity(0.5)), // Add opacity to the border color
        ),
        elevation: 0,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(prefixIcon),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(vertical: 24.0), // Adjust the vertical padding inside the field
            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7)), // Set the hint text color with opacity
          ),
        ),
      ),
    );
  }
}
