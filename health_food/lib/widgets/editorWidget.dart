import 'package:flutter/material.dart';
import 'package:health_food/widgets/imagesWidget.dart';
import 'package:health_food/widgets/textWidgets.dart';

class EditorWidget extends StatelessWidget {
  const EditorWidget({super.key, required this.title, required this.editorName, required this.imagePath, required this.profilePath,  this.bgColor=Colors.white,  this.isNetwork= false,});

 final String title;
  final String editorName;
  final String imagePath;
  final String profilePath;
  final Color? bgColor;
  final bool isNetwork;
  
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(6),
      width: MediaQuery.of(context).size.width - 40,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: bgColor,
        boxShadow: const [
          BoxShadow(
            blurRadius: 1,
          ),
        ],
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        ImagesWidget(path: imagePath, isNetwork: isNetwork, ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextWidget(
              text: title,
              Weight:FontWeight.bold,
              fSize: 15,
              color: const Color(0Xff042628),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    profilePath,
                    width: 25,
                    height: 25,
                  ),
                ),
                TextWidget(
                  text: editorName,
                  fSize: 10,
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