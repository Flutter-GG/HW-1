import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  const textfield({
    super.key,
    required this.tittle,
    required this.width,
    required this.TextLogo,
    required this.TextFieldwidth,
    required this.TextFieldheight,
    this.LeftTextLogo, required this.password,
  });
  final String tittle;
  final double width;
  final IconData TextLogo;
  final double TextFieldwidth;
  final double TextFieldheight;
  final IconData? LeftTextLogo;
  final bool password;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: TextFieldwidth,
      width: TextFieldheight,
      child: TextField(
        obscureText: password,
        decoration: InputDecoration(
          hintText: tittle,
          prefixIcon: Icon(TextLogo),
          suffixIcon: Icon(LeftTextLogo),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: width, color: Colors.black),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
  
}
