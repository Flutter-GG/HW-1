import 'package:flutter/material.dart';
import 'custom_text.dart';

class SmallButtons extends StatelessWidget {
  const SmallButtons({super.key, required this.title,  
                      this.elevation = 0.0,  this.color = Colors.white, 
                      this.textColor = 0xff1C2833,  this.fontSize = 15});

  final String title;
  final double elevation;
  final Color color;
  final int textColor; 
  final double fontSize;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                elevation: elevation,
                minimumSize: const Size(100, 45),
                backgroundColor: color, //Need to be checked
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
              ),
              child: CustomText(title: title, textColor: Color(textColor),
              fontSize: fontSize,
              ),
        );
  }
}