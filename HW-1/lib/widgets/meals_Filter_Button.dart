import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/text_widget.dart';

class MealsFilterButton extends StatelessWidget {
  const MealsFilterButton({
    super.key,
    this.text = 'Breakfast',
    this.bgColor,
    this.textColor = Colors.white,
    this.width = 100,
    this.isFilterButton = false,
    this.onPressed,
  });
  final String text;
  final Color? bgColor;
  final Color textColor;
  final bool isFilterButton;
  final Function()? onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size.fromWidth(width)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        backgroundColor:
            MaterialStateProperty.all(bgColor ?? Colors.grey.shade400),
      ),
      onPressed: onPressed,
      child: !isFilterButton
          ? TextWidget(
              text: text,
              color: textColor,
            )
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Image.asset(
                'assets/icons/filterIcon.png',
                width: 30,
                height: 30,
                color: Colors.white,
              )),
    );
  }
}
