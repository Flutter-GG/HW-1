import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/compunent/buttonNavigate.dart';

class buttonsRow extends StatelessWidget {
  const buttonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: buttonNavigate(
            width: 140,
            height: 55,
            color: Color(0xff80b6bd),
            title: "Breakfast",
            radius: 80,
            textcolor: Colors.white,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        buttonNavigate(
          width: 120,
          height: 55,
          color: Color(0xfff1f5f5),
          title: "Launch",
          radius: 80,
          textcolor: Colors.black,
        ),
        SizedBox(
          width: 10,
        ),
        buttonNavigate(
          width: 120,
          height: 55,
          color: Color(0xfff1f5f5),
          title: "Dinner",
          radius: 80,
          textcolor: Color(0xff80b6bd),
        ),
      ],
    );
  }
}
