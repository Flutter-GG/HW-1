import 'package:flutter/material.dart';

import 'custom_small_button.dart';
import 'custom_text.dart';

class CustomTitleSection extends StatelessWidget {
  const CustomTitleSection({super.key, required this.sectionTitle, required this.buttonTitle});

  final String sectionTitle;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    title: sectionTitle,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
    
                  Flexible(child: SmallButtons(title: buttonTitle, textColor: 0xfff2b25b,))
                ],
              ),
    );
  }
}