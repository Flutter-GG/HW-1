import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  const textfield({
    super.key,
    required this.tittle,
    required this.width,
    required this.search,
  });
  final String tittle;
  final double width;
  final IconData search;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 300,
      child: TextField(
        decoration: InputDecoration(
          hintText: tittle,
          prefixIcon: Icon(Icons.search),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: width, color: Colors.black),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}