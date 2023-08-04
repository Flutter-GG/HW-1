import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/compunent/buttonNavigate.dart';

class buttonsRow extends StatelessWidget {
  const buttonsRow({
    super.key,
  });

  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: buttonNavigate(
            width: 140,
            height: 55,
            color: Colors.black,
            title: "Breakfast",
            radius: 80,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        buttonNavigate(
          width: 120,
          height: 55,
          color: Colors.black,
          title: "Launch",
          radius: 80,
        ),
        SizedBox(
          width: 10,
        ),
        buttonNavigate(
          width: 120,
          height: 55,
          color: Colors.black,
          title: "Dinner",
          radius: 80,
        ),
      ],
    );
  }
}
