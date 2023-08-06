import 'package:flutter/material.dart';
class RecipeListView extends StatelessWidget {
  const RecipeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        RecipeCard(
          recipeTitle: 'Rice',
          authorName: 'Jane Smith',
          imageUrl: 'assets/images/rice.jpg', 
          authorImageUrl: 'assets/images/oatmeal.jpg', 
        ),
        RecipeCard(
          recipeTitle: 'Rice',
          authorName: 'Jane Smith',
          imageUrl: 'assets/images/rice.jpg', 
          authorImageUrl: 'assets/images/oatmeal.jpg', 
        ),
            RecipeCard(
          recipeTitle: 'Rice',
          authorName: 'Jane Smith',
          imageUrl: 'assets/images/rice.jpg',
          authorImageUrl: 'assets/images/oatmeal.jpg', 
        ),
                RecipeCard(
          recipeTitle: 'Rice',
          authorName: 'Jane Smith',
          imageUrl: 'assets/images/rice.jpg', 
          authorImageUrl: 'assets/images/oatmeal.jpg', 
        ),
      ],
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String recipeTitle;
  final String authorName;
  final String imageUrl;
  final String authorImageUrl; // Added this for the local author image

  const RecipeCard({
    Key? key, 
    required this.recipeTitle,
    required this.authorName,
    required this.imageUrl,
    required this.authorImageUrl, // Initialize the local author image URL
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imageUrl,  // Using the asset image for the recipe
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipeTitle,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          authorImageUrl,  // Using the asset image for the author
                        ),
                        radius: 16,
                      ),
                      const SizedBox(width: 8),
                      Text(authorName),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            const Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
