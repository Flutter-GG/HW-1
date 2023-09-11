import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({super.key, required this.text, this.size, this.isBold = false, this.color});
  final String text;
  final double? size;
  final bool isBold;
  final Color? color ;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size , fontWeight: isBold? FontWeight.bold:FontWeight.normal , color:color , overflow: TextOverflow.ellipsis ),
    );
  }
}