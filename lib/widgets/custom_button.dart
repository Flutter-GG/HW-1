import 'package:flutter/material.dart';
import 'package:lets_cooking/screens/recipes_screen.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, 
      required this.title, required 
      this.buttonColor,  this.textColor, 
      required this.fontSize, this.borderRadius,
      this.screen = const RecipesScreen()});

  final String title;
  final int buttonColor;
  final Color? textColor;
  final double fontSize;
  final double? borderRadius;
  final StatelessWidget screen;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => screen),
                   );
                },
                
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width - 50, 55),
                  backgroundColor:  Color(buttonColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius!),
                  ),
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: fontSize,
                    color: textColor,
                  ),
              ),
            );
      }
}