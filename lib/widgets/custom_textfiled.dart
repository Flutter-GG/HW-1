import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.filedTitle, 
                            required this.hintText, this.prefixIcon, 
                            this.suffixIcon});

  final CustomText filedTitle;
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            filedTitle,
            const SizedBox(height: 10,),
            TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    prefixIcon,
                  ),
                  suffixIcon: Icon(
                    suffixIcon,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: hintText,
              ),
            ),
          ],
        );
  }
}