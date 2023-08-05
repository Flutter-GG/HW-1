import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/widgets/button_Widget.dart';
import 'package:flutter_application_1/widgets/meals_Filter_Button.dart';
import 'package:flutter_application_1/widgets/text_widget.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Center(
              child: TextWidget(
            text: 'Filter',
            fontSize: 18,
            isBold: true,
          )),
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const TextWidget(
                          text: 'Category',
                          isBold: true,
                          fontSize: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MealsFilterButton(
                              bgColor: appColors[1],
                            ),
                            const MealsFilterButton(
                              text: 'Lunch',
                              textColor: Colors.black,
                            ),
                            MealsFilterButton(
                              text: 'Dinner',
                              textColor: appColors[1],
                            ),
                          ],
                        ),
                        const TextWidget(
                          text: 'Recipe Type',
                          isBold: true,
                          fontSize: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MealsFilterButton(
                              text: 'Salad',
                              bgColor: appColors[1],
                            ),
                            const MealsFilterButton(
                              text: 'Egg',
                              textColor: Colors.black,
                            ),
                            MealsFilterButton(
                              text: 'Cakes',
                              textColor: appColors[1],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MealsFilterButton(
                              text: 'Chicken',
                              textColor: appColors[1],
                            ),
                            const MealsFilterButton(
                              text: 'Meals',
                              textColor: Colors.black,
                            ),
                            MealsFilterButton(
                              text: 'Vegetables',
                              bgColor: appColors[1],
                            ),
                          ],
                        ),
                      ])),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ButtonWidget(
                        text: 'Apply Filter',
                        bgColor: appColors[1],
                      ),
                      ButtonWidget(
                        text: 'Clear Filter',
                        bgColor: Colors.white,
                        textColor: appColors[1],
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
