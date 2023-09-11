// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hw1_alawashiz/widgets/text_widget.dart';



final List<String> allChoices = [];

class RecipeTypeWidget extends StatefulWidget {
  const RecipeTypeWidget({super.key});

  @override
  State<RecipeTypeWidget> createState() => _RecipeTypeWidgetState();
}

class _RecipeTypeWidgetState extends State<RecipeTypeWidget> {

String? mealType;

  final List<String> meals = [
    'Salad',
    'Egg',
    'Cokes',
    'Chicken',
    'Meals',
    'Bread',
    
  ];

  

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      width : 350,
      child: Wrap(
          spacing: 12.0,
          runSpacing: 20,
          runAlignment: WrapAlignment.spaceEvenly,
          children: List<Widget>.generate(
            meals.length,
            (index) {
              return ChoiceChip(
                backgroundColor: allChoices.contains(meals[index])
              ? Color(0xff6FB9BF)
              : Colors.grey[300],
                labelPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                padding: EdgeInsets.symmetric(horizontal: 12),
                selectedColor: Color(0xff70B9BE),
                label: TextWidget(
                  text: meals[index],
                  color: mealType == meals[index] ? Colors.white : Colors.black,
                  size: 18,
                ),
                selected: allChoices.contains(meals[index]),
                onSelected: (selected) {
                  setState(
                    () {
                      if (selected) {
                        allChoices.add( meals[index]);
                      } else {
                        allChoices.remove( meals[index]);
                      }
                    },
                  );
                },
              );
            },
          ),
        ),
    );
  }
}