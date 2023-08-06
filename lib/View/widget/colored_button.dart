import 'package:flutter/material.dart';


class ColoredButton extends StatefulWidget {
  final String meals;
  const ColoredButton({
    Key? key,
      required this.meals,  
     
      })
      : super(key: key);

  @override
  State<ColoredButton> createState() => _ColoredButton();
}

class _ColoredButton extends State<ColoredButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
        
          onPressed: () {},
          style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey,
            shape: const StadiumBorder(),
          ),
          child: Text(
            widget.meals ,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          )),
        const SizedBox(width: 18,),
        
      ],
    );
  }
}
