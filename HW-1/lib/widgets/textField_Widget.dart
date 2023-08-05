import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    this.prefixIcon = Icons.email_outlined,
    this.hintText = 'Enter Email Address',
    this.width,
  });
  final IconData prefixIcon;
  final String hintText;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // if the width is not specified (have null value) then set width to this value
      width: width ?? MediaQuery.of(context).size.width - 40,
      height: 60,
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon),
            hintText: hintText,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)))),
      ),
    );
  }
}
