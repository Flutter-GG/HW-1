import 'package:flutter/material.dart';
import 'package:health_food/widgets/imagesWidget.dart';
import 'package:health_food/widgets/textWidgets.dart';

class PuoularWidget extends StatelessWidget {
  const PuoularWidget({super.key, required this.text, required this.path,  this.isNetwork=false});
  final String text;
  final String path;
  final bool isNetwork;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 100,
      height: MediaQuery.of(context).size.height / 5 - 30,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 1,
            // Shadow position
          ),
        ],
      ),
      child: Column(children: [
        ImagesWidget(
          isNetwork: isNetwork,
          path: path,
          width: 90,
          height: 90,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7),
          child: TextWidget(
            text: text,
          ),
        )
      ]),
    );
  }
}