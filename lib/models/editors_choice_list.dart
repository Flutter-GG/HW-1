class plate {
  
  final String name;
   final String chef;
  final String chefImage;
  final String foodImage;

  plate(
      {
      required this.name,
      required this.chef,
      required this.chefImage,
      required this.foodImage});
}


class EditorsPlates {
  static final plates = [
    plate(
        name: "Easy homemade beefburger",
       foodImage : "https://i0.wp.com/www.onceuponachef.com/images/2010/08/hamburgers.jpg?resize=575%2C754&ssl=1",
        chef: "James Spader",
        chefImage: "https://storage.needpix.com/rsynced_images/man-profile-1105761_1280.jpg",
    ),
    plate(
       name: "Egg White Frozen Blueberry",
     foodImage: "https://healthbeet.org/wp-content/uploads/2021/08/Blueberry-Fluff-Close-Up-1200x1200-1.jpg",
      chef: "Amy Roskelley",
       chefImage:"https://healthbeet.org/wp-content/uploads/2020/05/about-me-who-is-amy-roskelley.jpg",
    ),
    plate(
       name: "Cherry pie",
     foodImage: "https://www.bbcgoodfoodme.com/assets/legacy/recipe/recipe-image/2020/07/cherry-pie.jpg",
      chef: "zac aurther",
       chefImage:"https://chefzacyoung.com/wp-content/uploads/bb-plugin/cache/S7A8826-e1499886844184-1024x665-circle-fb99d400cad5ad73837cf39cc99d1838-.jpg",
    ),
    plate(
       name: "Original piecaken",
     foodImage: "https://chefzacyoung.com/wp-content/uploads/bb-plugin/cache/IMG_0757-Edit-1024x683-circle-32df598e59f515c6757aecb0f3c150b1-.jpg",
      chef: "zac ",
       chefImage:"https://chefzacyoung.com/wp-content/uploads/bb-plugin/cache/S7A8826-e1499886844184-1024x665-circle-fb99d400cad5ad73837cf39cc99d1838-.jpg",
    ),
   
  ];
}

