import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      this.bgColor = const Color(0xff042628),
      this.fgColor = Colors.white,
      required this.title,
      this.isBorderSide = false,
      this.onPressed});
  final Color? bgColor;
  final Color? fgColor;
  final String title;
  final bool? isBorderSide;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: fgColor,
          side: isBorderSide! ? const BorderSide(color: Colors.black) : null,
          fixedSize: Size(MediaQuery.of(context).size.width - 50, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          )),
      child: Text(title),
    );
  }
}
