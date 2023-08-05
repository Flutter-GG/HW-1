import 'package:flutter/material.dart';

import 'custom_small_button.dart';

class RowOfButtons extends StatelessWidget {
  const RowOfButtons({super.key, required this.buttonTitle1, 
            required this.buttonTitle2, required this.buttonTitle3});

  final String buttonTitle1;
  final String buttonTitle2;
  final String buttonTitle3;


  @override
  Widget build(BuildContext context) {
    return   Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 12,),
                SmallButtons(title: buttonTitle1, color: Color.fromARGB(111, 214, 214, 214), fontSize: 17,),
                const SizedBox(width: 12,),
                SmallButtons(title: buttonTitle2, color: Color.fromARGB(111, 214, 214, 214), fontSize: 17,),
                const SizedBox(width: 12,),
                SmallButtons(title: buttonTitle3, color: Color.fromARGB(111, 214, 214, 214), fontSize: 17,),                                
              ],
          );
  }
}