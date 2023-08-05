import 'package:flutter/material.dart';

class TextFiledNoTitle extends StatelessWidget {
  const TextFiledNoTitle({super.key, required this.hintText, 
                            this.prefixIcon, this.suffixIcon});

  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    prefixIcon,
                  ),
                  suffixIcon: Icon(
                    suffixIcon,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: hintText,
              ),
            );
  }
}