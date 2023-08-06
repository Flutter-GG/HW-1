// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hw1_alawashiz/data/food.dart';
import 'package:hw1_alawashiz/widgets/button_widget.dart';
import 'package:hw1_alawashiz/widgets/text_widget.dart';

List list = Breakfast;

class PopularRecipesWidget extends StatefulWidget {
  const PopularRecipesWidget({super.key});

  @override
  State<PopularRecipesWidget> createState() => _PopularRecipesWidgetState();
}

class _PopularRecipesWidgetState extends State<PopularRecipesWidget> {
  @override


  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  list[index]["path"],
                  height: 80,
                  width: 80,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextWidget(
                text: "${list[index]["name"]}",
                size: 14,
                isBold: true,
              ),
            ],
          ),
        );
      },
    );
  }
}
