import 'package:flutter/material.dart';
import 'package:yum/widget/text_widget.dart';

import 'image_widget.dart';

class CustomEditorCardWidget extends StatelessWidget {
  const CustomEditorCardWidget({
    super.key,
    required this.imagePath,
    required this.text,
    required this.editorImagePath,
    required this.editorName,
  });
  final String imagePath;
  final String text;
  final String editorImagePath;
  final String editorName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 10),
          SizedBox(
              width: 80,
              height: 80,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CustomImageWidget(path: imagePath))),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              TextWidget(
                text: text,
                color: const Color(0xff042628),
                weight: FontWeight.w700,
                size: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: CustomImageWidget(path: editorImagePath))),
                  const SizedBox(
                    width: 5,
                  ),
                  TextWidget(
                    text: editorName,
                    color: Colors.grey,
                    weight: FontWeight.w500,
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          Center(
              child: Container(
                  alignment: Alignment.centerLeft,
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff042628),
                  ),
                  child: IconButton(
                    iconSize: 20,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ))),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
