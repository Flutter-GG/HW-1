import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/squareImage_Widget.dart';
import 'package:flutter_application_1/widgets/text_widget.dart';

class PupularRecipWidget extends StatelessWidget {
  const PupularRecipWidget(
      {super.key,
      required this.text,
      this.path = 'assets/images/img-1.png',
      this.isNetwork = false});
  final String text;
  final String path;
  final bool isNetwork;

  @override
  Widget build(BuildContext context) {
    return Container(
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
        SquareImage(
          isNetwork: isNetwork,
          path: path,
          size: 90,
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
