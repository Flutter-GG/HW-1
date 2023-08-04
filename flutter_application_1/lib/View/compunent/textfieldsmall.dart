import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/compunent/textfield.dart';

class textfieldsmall extends StatelessWidget {
  const textfieldsmall({
    super.key,
    required this.tittle,
  });
  final String tittle;
  @override
  Widget build(BuildContext context) {
    return textfield(
        tittle: tittle,
        width: 1,
        TextLogo: Icons.person,
        TextFieldwidth: 100,
        TextFieldheight: 180,
        password: false,);
        
  }
}
