import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    super.key,
    this.text = '',
    this.bgColor = const Color(0xff5d8d80),
    this.onPressed,
  });
  final String text;
  final Color bgColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(bgColor),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 115, vertical: 20)),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
