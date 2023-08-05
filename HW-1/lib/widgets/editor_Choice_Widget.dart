import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/widgets/squareImage_Widget.dart';
import 'package:flutter_application_1/widgets/text_widget.dart';

class EditorChoiceWidget extends StatelessWidget {
  const EditorChoiceWidget(
      {super.key,
      required this.title,
      required this.editorName,
      required this.photoPath,
      required this.profilePhotoPath,
      this.bgColor = Colors.white,
      this.isNetwork = false});
  final String title;
  final String editorName;
  final String photoPath;
  final String profilePhotoPath;
  final Color bgColor;
  final bool isNetwork;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      width: MediaQuery.of(context).size.width - 40,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: bgColor,
        boxShadow: const [
          BoxShadow(
            blurRadius: 1,
            // Shadow position
          ),
        ],
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SquareImage(path: photoPath, isNetwork: isNetwork),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextWidget(
              text: title,
              isBold: true,
              fontSize: 15,
              color: appColors[0],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    profilePhotoPath,
                    width: 25,
                    height: 25,
                  ),
                ),
                TextWidget(
                  text: editorName,
                  fontSize: 10,
                  color: Colors.black38,
                ),
              ],
            )
          ],
        ),
        Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: appColors[0],
            ),
            child: IconButton(
              iconSize: 20,
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ))
      ]),
    );
  }
}
