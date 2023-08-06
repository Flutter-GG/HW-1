import 'package:flutter/material.dart';
import 'package:hw1_alawashiz/screens/home_screen.dart';
import 'package:hw1_alawashiz/widgets/text_widget.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {super.key,
      required this.text,
      this.isligt = false,
      this.fgColor = Colors.white,
      this.onPress,
      this.isTextButton = false,
      this.size = 20,
      this.borderRadius = 15, this.hightButton, this.isBlue = false, this.bgColor});
  final String text;
  final bool isligt;
  final Color? fgColor;
  final Color? bgColor;
  final double size;
  final double borderRadius;
  final bool isTextButton;
  final Function()? onPress;
  final double? hightButton;
  final bool isBlue;

  @override
  Widget build(BuildContext context) {
    return !isTextButton
        ? ElevatedButton(
            onPressed: onPress,
            style: ElevatedButton.styleFrom(
              backgroundColor: !isligt && !isBlue ? Color(0xff042628) : isBlue ? Color(0xff70B9BE) : Colors.grey[300], 
              foregroundColor: !isligt ? fgColor : Colors.black,
              fixedSize: Size(MediaQuery.of(context).size.width, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
            child: TextWidget(
              text: text,
              size: 20,
            ),
          )
        : TextButton(
            onPressed: onPress,
            child: TextWidget(
              text: text,
              size: size,
              isBold: true,
              color: fgColor,
            ));
  }
}
