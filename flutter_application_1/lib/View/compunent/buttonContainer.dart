import 'package:flutter/material.dart';

class buttonContainer extends StatelessWidget {
  const buttonContainer({
    super.key,
    required this.width,
    required this.height,
    required this.radius,
    required this.abc,
  });
  final double width;
  final double height;
  final double radius;
  final IconData abc;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Icon(
        Icons.abc,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Colors.black,
      ),
    );
  }
}