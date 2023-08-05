import 'package:flutter/material.dart';

import 'custom_vertical_continer.dart';

class PopularRacipesList extends StatelessWidget {
  const PopularRacipesList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
            scrollDirection: Axis.horizontal, 
            child: Row(
              children: [
                CustomVerticalContiner(
                  title: "Egg & Avocado",
                  path: "assets/img/eggavocadotoast.jpg",
                ),
      
                CustomVerticalContiner(
                  title: "Chicken Strips",
                  path: "assets/img/chicken_strip.jpg",
                ),
      
                CustomVerticalContiner(
                  title: "French Toast",
                  path: "assets/img/french-toast.jpg",
                ),
      
                CustomVerticalContiner(
                  title: "Salmon Bowls",
                  path: "assets/img/Salmon-Bowls.jpg",
                ),
              ],
            ),
          );
  }
}