import 'package:flutter/material.dart';
import 'package:health_food/widgets/textWidgets.dart';
class Buttons extends StatelessWidget {
  const Buttons({super.key,  this.bgColor= const Color(0Xff042628),  this.fgColor= const Color.fromARGB(255, 255, 255, 255), required this.secondPage , required this.title, });
  final Color bgColor;
  final Color fgColor;
  final String title;
  final Widget secondPage;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
       
     onPressed: (){Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => secondPage),
        );},
     style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15)),
      backgroundColor: bgColor,
      foregroundColor:  fgColor,
      minimumSize: const Size(450, 60),
      ),
      child:  TextWidget(
      text: title,
      color: Colors.white,
      fSize: 20,
      Weight: FontWeight.bold,
      
      ),
      
      );

  }
}