import 'package:flutter/material.dart';

class buttonContainer extends StatelessWidget {
  const buttonContainer({
    super.key,
    required this.width,
    required this.height,
    required this.radius,
    required this.iconsearch,
  });
  final double width;
  final double height;
  final double radius;
  final IconData iconsearch;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Icon(
        iconsearch,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Color(0xff80b6bd),
      ),
    );
  }
}
