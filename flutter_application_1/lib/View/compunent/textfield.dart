import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  const textfield({
    super.key,
    required this.tittle,
    required this.width,
    required this.TextLogo,
    required this.TextFieldwidth,
    required this.TextFieldheight,
  });
  final String tittle;
  final double width;
  final IconData TextLogo;
  final double TextFieldwidth;
  final double TextFieldheight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: TextFieldwidth,
      width: TextFieldheight,
      child: TextField(
        decoration: InputDecoration(
          hintText: tittle,
          prefixIcon: Icon(TextLogo),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: width, color: Colors.black),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
