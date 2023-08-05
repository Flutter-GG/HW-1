import 'package:flutter/material.dart';

import 'custom_horizontal_continer.dart';

class EditorChoiceList extends StatelessWidget {
  const EditorChoiceList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
                children: [
                  CustomHorizontalContiner(
                                    recipeImgPath: 'assets/img/berry-breakfast.jpg', 
                                    title: 'Easy homemade Berry Oat Bowl', 
                                    chefImgPath: "assets/img/women_icon1.jpeg",
                                    chefName: "Sare Andrison",
                  ),
                      
                  CustomHorizontalContiner(
                                    recipeImgPath: 'assets/img/beer_burgers.jpg', 
                                    title: 'Juicy Beef Cheese Burger', 
                                    chefImgPath: "assets/img/man_icon1.jpeg",
                                    chefName: "Johan Smith",
                  ),
                      
                  
                  CustomHorizontalContiner(
                                    recipeImgPath: 'assets/img/CreamyMusgroomSoup.jpg', 
                                    title: 'Creamy Mushroom Soup', 
                                    chefImgPath: "assets/img/man_icon2.jpeg",
                                    chefName: "Leonardo Abate",
                  ),

                  CustomHorizontalContiner(
                                    recipeImgPath: 'assets/img/yogurt-bowls.jpg', 
                                    title: 'Healthy Fruit Yogurt Bowl', 
                                    chefImgPath: "assets/img/women_icon2.jpg",
                                    chefName: "Mia Amato",
                  ),
                ],
              );
  }
}