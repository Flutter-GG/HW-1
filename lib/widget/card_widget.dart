import 'package:flutter/material.dart';
import 'package:yum/widget/text_widget.dart';

import 'image_widget.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    super.key,
    required this.imagePath,
    required this.text,
  });
  final String imagePath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        children: [
          const SizedBox(height: 5),
          SizedBox(
              width: 60,
              height: 60,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CustomImageWidget(path: imagePath))),
          const SizedBox(
            height: 10,
          ),
          TextWidget(
            text: text,
            color: const Color(0xff042628),
            weight: FontWeight.w500,
          )
        ],
      ),
    );
  }
}
