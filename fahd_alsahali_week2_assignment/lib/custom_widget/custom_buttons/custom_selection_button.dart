import 'package:flutter/material.dart';

class CustomSelectionButton extends StatelessWidget {
  const CustomSelectionButton({super.key,
   this.text = "defult",
    this.backgroundColor = 0xff70B9BE,
    this.textColor = 0xff010101,
    this.isSelected = false,});

  final String text;
  final int backgroundColor;
  final int textColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected? const Color(0xff70B9BE): Colors.grey.shade300,
        padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(text, style: TextStyle(
        fontSize: 15,
         color: isSelected? Colors.white: Color(textColor),
         ),
      ),
    );
  }
}
