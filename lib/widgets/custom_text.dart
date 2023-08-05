import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.title,  
              this.fontWeight,  this.fontSize, 
              this.textColor, this.align,  this.ellipsis = false,});

  final String title;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? align;
  final bool ellipsis;

  @override
  Widget build(BuildContext context) {
    return Text(
              title,
              overflow: ellipsis? TextOverflow.ellipsis : TextOverflow.visible,
              textAlign: align,
              style: TextStyle(
                fontWeight: fontWeight,
                fontSize: fontSize,
                color: textColor,
              ),
            );
  }
}