import 'package:flutter/material.dart';

class PopularRecipesCard extends StatelessWidget {
  const PopularRecipesCard({
    super.key,
    required this.recipeImage,
    required this.recipeName,
  });

  final String recipeImage;
  final String recipeName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          width: 115,
          height: 150,
          decoration: const BoxDecoration(
            color: Colors.white,
            
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  recipeImage,
                  height: 100,
                  width: 100,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  recipeName,
                  style: const TextStyle(
                    fontSize: 18,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
