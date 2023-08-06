import 'package:flutter/material.dart';
import 'package:hw1_alawashiz/widgets/text_widget.dart';
import 'package:hw1_alawashiz/widgets/popular_recipes_widget.dart';
import 'package:hw1_alawashiz/data/food.dart';

class MealsWidget extends StatefulWidget {
  const MealsWidget({super.key});

  @override
  State<MealsWidget> createState() => _MealsWidgetState();
}

class _MealsWidgetState extends State<MealsWidget> {
  String? mealType;

  final List<String> meals = [
    'Breakfast',
    'Lunch',
    'Dinner',
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      children: List<Widget>.generate(
        meals.length,
        (index) {
          return ChoiceChip(
            labelPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 12),
            // backgroundColor: mealType == meals[index]
            //     ? Color(0xff6FB9BF)
            //     : Colors.grey[300],
            selectedColor: Color(0xff70B9BE),
            label: TextWidget(
              text: meals[index],
              color: mealType == meals[index] ? Colors.white : Colors.black,
              size: 18,
            ),
            selected: mealType == meals[index],
            onSelected: (selected) {
              setState(
                () {
                  if (selected) {
                    setState(() {
                      mealType = meals[index];
                      mealType == "Breakfast" ? list = Breakfast : mealType == "Lunch" ? list = lunch :  list = dinner;
                    });
                  } else {
                    mealType = meals[index];
                  }
                },
              );
            },
          );
        },
      ),
    );
  }
}
