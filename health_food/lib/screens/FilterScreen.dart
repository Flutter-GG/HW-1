import 'package:flutter/material.dart';
import 'package:health_food/screens/Search.dart';
import 'package:health_food/widgets/Buttons.dart';
import 'package:health_food/widgets/filterButton.dart';
import 'package:health_food/widgets/textWidgets.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       iconTheme: const IconThemeData(color: Colors.black),
       backgroundColor: Colors.white,
       elevation: 0,
       title: const Center(
         child: TextWidget(
           text: "Login",
           textAlign: TextAlign.center,
           color: Colors.black, 
           Weight:FontWeight.bold, 
           fSize: 29,),
       ),

      ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: const Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextWidget(
                          text: 'Category',
                         Weight: FontWeight.bold,
                          fSize: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FilterButton(
                               text: 'Breakfast',
                            ),
                             FilterButton(
                              text: 'Lunch',
                              
                            ),
                            FilterButton(
                              text: 'Dinner',
                              
                            ),
                          ],
                        ),
                        TextWidget(
                          text: 'Recipe Type',
                          Weight:FontWeight.bold,
                          fSize: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                             FilterButton(
                              text: 'Salad',
                            ),
                             FilterButton(
                              text: 'Egg',
                            ),
                            FilterButton(
                              text: 'Cakes',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FilterButton(
                              text: 'Chicken',
                            ),
                             FilterButton(
                              text: 'Meals',
                            ),
                          FilterButton(
                              text: 'Vegetables',
                            ),
                          ],
                        ),
                      ])),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Buttons(
                        title: 'Apply Filter', secondPage: SearchScreen(),
                      ),
                      Buttons(
                        title: 'Clear Filter', secondPage: SearchScreen(),
                     
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
  
