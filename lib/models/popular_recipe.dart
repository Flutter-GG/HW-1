class PopularRecipes {
  
  final String recipeName;
   final String recipeImage;


  PopularRecipes(
      {
      required this.recipeName,
       required this.recipeImage,

   });
}


class PopularRecipe {
  static final poprecipes = [
    PopularRecipes
    (
        recipeName: "Chicken Wings",
        recipeImage: "https://www.allrecipes.com/thmb/AtViolcfVtInHgq_mRtv4tPZASQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/ALR-187822-baked-chicken-wings-4x3-5c7b4624c8554f3da5aabb7d3a91a209.jpg",
      
    ),
    PopularRecipes(
       recipeName: "Bowl of rice and chicken",
       recipeImage:"https://hips.hearstapps.com/hmg-prod/images/delish-190522-cilantro-lime-chicken-and-rice-bowl-portrait-046-pf-1-1559073830.jpg",
    ),
    PopularRecipes(
       recipeName: "Egg and Avocado",
       recipeImage:"https://feelgoodfoodie.net/wp-content/uploads/2019/01/Avocado-Toast-with-Egg-9.jpg",
    ),
    PopularRecipes(
       recipeName: "Pasta",
       recipeImage:"https://theclevermeal.com/wp-content/uploads/2022/05/vegan-pasta-recipes_01.jpg",
    ),
    PopularRecipes(
       recipeName: "Pizza ",
       recipeImage:"https://www.acouplecooks.com/wp-content/uploads/2022/10/Margherita-Pizza-082.jpg",
    ),
    PopularRecipes(
       recipeName: "Steak",
       recipeImage:"https://www.seriouseats.com/thmb/5pAD_2uyE6kWYo6GDJse6lu4fyQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/butter-basted-pan-seared-steaks-recipe-hero-06-03b1131c58524be2bd6c9851a2fbdbc3.jpg",
    ),
  ];
}

