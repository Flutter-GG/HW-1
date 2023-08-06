import 'package:flutter/material.dart';
import 'package:health_food/widgets/textWidgets.dart';

class NewAppBar extends StatelessWidget {
  const NewAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return  AppBar(
         iconTheme:  IconThemeData(color: Colors.black),
         backgroundColor: Colors.white,
         elevation: 0,
         title:   Center(
           child: TextWidget( 
            text: title,
             textAlign: TextAlign.center,
             color: const Color(0Xff042628), 
             Weight:FontWeight.bold, 
             fSize: 29,
              ),
         ),
    
        
    );
  }
}