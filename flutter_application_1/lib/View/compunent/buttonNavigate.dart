import 'package:flutter/material.dart';

class buttonNavigate extends StatelessWidget {
  const buttonNavigate({
    super.key,
    required this.width,
    required this.height,
    required this.color,
    required this.radius,
    required this.title,
  });
  final double width;
  final double height;
  final Color color;
  final double radius;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {
          // Respond to button press
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            fixedSize: Size(MediaQuery.of(context).size.width - 50, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius))),
        child: Text(title),
      ),
    );
  }
}
