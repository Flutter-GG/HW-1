// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hw1_alawashiz/screens/home_screen.dart';
import 'package:hw1_alawashiz/screens/search_screen.dart';
import 'package:hw1_alawashiz/widgets/app_bar_widget.dart';
import 'package:hw1_alawashiz/widgets/button_widget.dart';
import 'package:hw1_alawashiz/widgets/meals_widget.dart';
import 'package:hw1_alawashiz/widgets/recipe_type.dart';
import 'package:hw1_alawashiz/widgets/text_widget.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
            alignment: Alignment.center,
            child: TextWidget(
              text: "Filter",
              color: Colors.black,
              size: 25,
            )),
      ),
      body: Container(
        // color: Colors.orange,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: "Catogory",
              isBold: true,
              size: 20,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                MealsWidget(),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            TextWidget(text: "Recipr Type", isBold: true, size: 20),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RecipeTypeWidget(),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(children: [
              ButtonWidget(
                text: "Apply Filter",
                onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              },
                isBlue: true,
              ),
              ButtonWidget(
                text: "Clear Filter",
                onPress: () {
                  setState(() {
                    allChoices.clear();
                  });
                },
                isTextButton: true,
                fgColor: Color(0xff70B9BE),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
