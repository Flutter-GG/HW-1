import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, 
                          required this.icon, required this.color, 
                          required this.widthSubtraction, required this.width, 
                          this.borderRadius = 20});

  final IconData icon;
  final int color;
  final int widthSubtraction;
  final double width; 
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return IconButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width - widthSubtraction, width),
                  backgroundColor:  Color(color),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                ),
                icon: Icon(icon),
      );
  }
}


