import 'package:flutter/material.dart';
import 'package:hw_1/models/popular_recipe.dart';

class FoodList extends StatelessWidget {
  final PopularRecipes dish;
  const FoodList({Key? key, required this.dish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: 90,
          height: 90,
          color: Colors.white,
          child: Image.network(
            fit: BoxFit.fill,
            dish.recipeImage,
            height: 90,
            width: 90,
          ),
        ),
      ),
      Text(dish.recipeName,
          style: const TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
              fontSize: 14)),
    ]);
  }
}
