import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintColor = Colors.grey,
    required this.hintText,
    this.iconColor,
    required this.icon,
    this.isPassword = false,
    this.obscureText = false,
  });

  final Color? hintColor;
  final String hintText;
  final Color? iconColor;
  final IconData icon;
  final bool isPassword;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: hintColor),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffF5F5F5),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            prefixIcon: Icon(
              textDirection: TextDirection.rtl,
              icon,
              color: const Color(0xff042628),
            ),
            suffixIcon: isPassword
                ? const Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  )
                : null));
  }
}
