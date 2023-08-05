import 'package:flutter/material.dart';

class smallText extends StatelessWidget {
  const smallText({
    super.key,
    required this.TextName,
    this.TextSize = 15,
  });
  final String TextName;
  final double TextSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      TextName,
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.w100, fontSize: TextSize),
    );
  }
}
