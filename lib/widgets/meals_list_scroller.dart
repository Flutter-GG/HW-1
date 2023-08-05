import 'package:flutter/material.dart';

import 'custom_small_button.dart';

class MealsListScroller extends StatelessWidget {
  const MealsListScroller({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: SmallButtons(title: 'Breakfast', color:Color.fromARGB(130, 54, 141, 140), ),
                ),
                SizedBox(width: 10,),
                SmallButtons(title: 'Lunch', color: Color.fromARGB(111, 214, 214, 214), ),
                SizedBox(width: 10,),
                SmallButtons(title: 'Dinner', color: Color.fromARGB(111, 214, 214, 214),),
                SizedBox(width: 10,),
                SmallButtons(title: 'Snacks', color: Color.fromARGB(111, 214, 214, 214),),
                SizedBox(width: 10,),
              ],
            ),
          );
  }
}