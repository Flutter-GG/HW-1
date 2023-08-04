import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    super.key,
    required this.title,
    required this.colorButton,
    required this.TextcolorButton,
  });
  final String title;
  final Color colorButton;
  final Color TextcolorButton;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.pop(context),
      child: Text(
        title,
        style: TextStyle(color: TextcolorButton),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: colorButton,
          //fixedSize: Size(MediaQuery.of(context).size.width - 50, 50),
          minimumSize: Size(350, 55),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
