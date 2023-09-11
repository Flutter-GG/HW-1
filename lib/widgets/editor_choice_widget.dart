// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hw1_alawashiz/data/food.dart';
import 'package:hw1_alawashiz/data/editor_choice_data.dart';
import 'package:hw1_alawashiz/widgets/text_widget.dart';

class EditorChoiceWidget extends StatefulWidget {
  const EditorChoiceWidget({super.key});

  @override
  State<EditorChoiceWidget> createState() => _EditorChoiceWidgetState();
}

class _EditorChoiceWidgetState extends State<EditorChoiceWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 2,
                blurRadius: 8,
              ),
            ],
          ),
          margin: EdgeInsets.all(12),
          padding: EdgeInsets.all(10),
          height: 100,
          width: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  editorData[index]["path"],
                  height: 80,
                  width: 80,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "${editorData[index]["text"]}",
                    size: 15,
                    isBold: true,
                  ),
                  Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          editorData[index]["person"],
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextWidget(
                          text: "${editorData[index]["name"]}",
                          color: Colors.grey[800]),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.arrow_forward,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff042628),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
