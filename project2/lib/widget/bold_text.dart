import 'package:flutter/material.dart';

class bold_text extends StatelessWidget {
  const bold_text({
    Key? key,
    required this.TextName,
    this.TextSize = 30,
    this.TextColor = Colors.black,
  }) : super(key: key);

  final String TextName;
  final double TextSize;
  final Color TextColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      TextName,
      style: TextStyle(
          fontSize: TextSize, fontWeight: FontWeight.bold, color: TextColor),
    );
  }
}
