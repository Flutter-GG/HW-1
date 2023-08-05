import 'package:flutter/material.dart';
import 'package:yum/widget/text_widget.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.bgColor = const Color(0xff042628),
    this.fgColor = Colors.white,
    this.title = " ",
    this.isBorderRadius = false,
    this.onPressed,
    this.size = const Size(350, 50),
    this.isIconButton = false,
  });
  final Color? bgColor;
  final Color? fgColor;
  final String? title;
  final Size? size;
  final bool isIconButton;
  final bool? isBorderRadius;

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: fgColor,
        shape: isBorderRadius!

            ///to fit all button in the app
            ? const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(80)),
              )
            : const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
        fixedSize: size,
      ),
      child: isIconButton
          ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Image.asset(
                'assets/Icon/filter.png',
                width: 20,
                height: 20,
                color: Colors.white,
              ))
          : TextWidget(
              text: title!,
              size: 15,
              weight: FontWeight.bold,
            ),
    );
  }
}
