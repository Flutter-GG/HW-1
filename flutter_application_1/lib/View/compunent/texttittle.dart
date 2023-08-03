import 'package:flutter/material.dart';

class texttittle extends StatelessWidget {
  const texttittle({
    super.key,
    required this.title,
    required this.decrb,
    required this.width,
    required this.fontWeight,
    required this.size1,
    required this.size2,
  });
  final String title;
  final String decrb;
  final double width;
  final FontWeight fontWeight;
  final double size1;
  final double size2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: size1, fontWeight: fontWeight),
        ),
        SizedBox(
          width: width,
        ),
        Text(
          decrb,
          style: TextStyle(fontSize: size2, fontWeight: fontWeight),
        )
      ],
    );
  }
}
