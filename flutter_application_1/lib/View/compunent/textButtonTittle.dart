import 'package:flutter/material.dart';

class textButtonTittle extends StatelessWidget {
  const textButtonTittle({
    super.key,
    required this.title,
    required this.padding,
  });
  final String title;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: padding),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}