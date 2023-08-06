
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, this.fSize=20, required this.text, this.Weight= FontWeight.normal,  this.color= const Color(0Xff042628),  this.textAlign =TextAlign.left});
final String text;
final double? fSize;
final FontWeight? Weight;
final Color color;
final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
    text,
    style:TextStyle(fontSize: fSize, fontWeight: Weight ,color: color, ),
    textAlign: textAlign,
                          
        );
  }
}