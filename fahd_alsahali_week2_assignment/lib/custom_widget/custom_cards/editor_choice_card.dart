// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_buttons/custom_button.dart';
import 'package:flutter/material.dart';

class EditorChoiceCard extends StatelessWidget {
  const EditorChoiceCard({super.key,
  required this.title,
  required this.dishImage,
  this.editorName = "Steve",
  this.editorAvatar = "assets/images/Profile.PNG"
  });

  final String title;
  final String dishImage;
  final String editorName;
  final String editorAvatar;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 130,
          decoration: const BoxDecoration(
          ),
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  dishImage,
                  height: 100,
                  width: 100,
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 190,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      title,
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 185,
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            editorAvatar,
                            height: 35,
                            width: 35,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            editorName,
                            style: TextStyle(
                              fontSize: 18,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              CustomButton(
                onPressed: () {},
                width: 20,
                height: 20,
                isTextButton: false,
                icon: Icons.arrow_right_alt_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
