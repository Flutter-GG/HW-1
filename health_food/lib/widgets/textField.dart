

import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key, required this.prefixIcon, required this.hintText,  this.inputType, this.width,});
 final IconData prefixIcon;
  final String hintText;
  final TextInputType? inputType;
    final double? width;

  
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width ,
      height: 60,
      child: TextField( keyboardType: inputType,
        decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon),
            hintText: hintText,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)))),
                

      ),
    );
  }
}
 