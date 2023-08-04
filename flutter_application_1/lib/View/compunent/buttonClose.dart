import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/View/login.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    super.key,
    required this.title,
    required this.colorButton,
    required this.TextcolorButton, required this.ViewName,
  });
  final String title;
  final Color colorButton;
  final Color TextcolorButton;
  final Widget ViewName;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ViewName),
        );
      },
      child: Text(
        title,
        style: TextStyle(color: TextcolorButton),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: colorButton,
          //fixedSize: Size(MediaQuery.of(context).size.width - 50, 50),
          minimumSize: Size(350, 55),
          shadowColor: Colors.black,
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
