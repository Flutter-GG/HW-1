import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/widgets/text_widget.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
            text: title,
            isBold: true,
            fontSize: 20,
          ),
          TextButton(
              onPressed: () {},
              child: TextWidget(
                text: 'View all',
                isBold: true,
                color: appColors[1],
              ))
        ],
      ),
    );
  }
}
