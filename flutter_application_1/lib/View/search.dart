import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/compunent/buttonContainer.dart';
import 'package:flutter_application_1/View/compunent/buttonNavigate.dart';
import 'package:flutter_application_1/View/compunent/imageContainer.dart';
import 'package:flutter_application_1/View/compunent/textfield.dart';
import 'package:flutter_application_1/View/compunent/texttittle.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Search",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              //padding: EdgeInsets.all(30.0),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: textfield(
                    tittle: "search",
                    width: 1,
                    search: Icons.search,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: buttonContainer(
                    width: 50,
                    height: 50,
                    radius: 10,
                    abc: Icons.abc,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buttonNavigate(
                      width: 140,
                      height: 55,
                      color: Colors.black,
                      radius: 80,
                      title: 'Breackfast'),
                  SizedBox(
                    width: 10,
                  ),
                  buttonNavigate(
                      width: 120,
                      height: 55,
                      color: Colors.black,
                      radius: 80,
                      title: "Launch"),
                  SizedBox(
                    width: 10,
                  ),
                  buttonNavigate(
                    width: 120,
                    height: 55,
                    color: Colors.black,
                    radius: 80,
                    title: "Dinner",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            texttittle(
              title: "Popular Recipes",
              decrb: "View All",
              width: 150,
              fontWeight: FontWeight.bold,
              size1: 20,
              size2: 15,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                imageContainer(
                  assetsName:
                      "assets/image/Baked Stuffed Lobster with Shrimp.jpg",
                  width: 100,
                  height: 140,
                  borderRadius: 10,
                  containerColor: Colors.white,
                  opacity: 0.7,
                  paddingImage: 5.0,
                  widthImage: 100,
                  heightImage: 100,
                  borderRadiusImage: 10,
                  titleFood: "Lobster",
                  shadowColor: Colors.black,
                ),
                SizedBox(
                  width: 55,
                ),
                imageContainer(
                  assetsName:
                      "assets/image/The Best Oven-Roasted Dungeness Crab Recipe.jpg",
                  width: 100,
                  height: 140,
                  borderRadius: 10,
                  containerColor: Colors.white,
                  opacity: 0.7,
                  paddingImage: 5.0,
                  widthImage: 100,
                  heightImage: 100,
                  borderRadiusImage: 10,
                  titleFood: "Crab",
                  shadowColor: Colors.black,
                ),
                SizedBox(
                  width: 55,
                ),
                imageContainer(
                  assetsName:
                      "assets/image/Portuguese Seafood Stew_ Caldeirada.png",
                  width: 100,
                  height: 140,
                  borderRadius: 10,
                  containerColor: Colors.white,
                  opacity: 0.7,
                  paddingImage: 5.0,
                  widthImage: 100,
                  heightImage: 100,
                  borderRadiusImage: 10,
                  titleFood: "Shrimp",
                  shadowColor: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            texttittle(
                title: "Editors Choice",
                decrb: "View All",
                width: 170,
                fontWeight: FontWeight.bold,
                size1: 20,
                size2: 15),
            SizedBox(
              height: 20,
            ),
            foodChoice(
              imagePath: "assets/image/Baked Stuffed Lobster with Shrimp.jpg",
              foodDiscribction: "Eating lobester \nvery nice",
              person:
                  "assets/image/Peaky blinders, Thomas Shelby, cap, HD mobile wallpaper | Peaky blinders tommy shelby, Peaky blinders wallpaper, Peaky blinders thomas.jpg",
              personName: "Thomas Shelpy",
            ),
            SizedBox(
              height: 20,
            ),
            foodChoice(
              imagePath:
                  "assets/image/Blue Crab - Steamed Blue Crabs with Old Bay - Rasa Malaysia.jpg",
              foodDiscribction: "Eating crab \nvery nice youme",
              person: "assets/image/Unknown-18.jpg",
              personName: "Kamal Yalderiz",
            ),
          ],
        ),
      ),
    );
  }
}

class foodChoice extends StatelessWidget {
  const foodChoice({
    super.key,
    required this.imagePath,
    required this.foodDiscribction,
    required this.person,
    required this.personName,
  });
  final String imagePath;
  final String foodDiscribction;
  final String person;
  final String personName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0.1,
            blurRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        foodDiscribction,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: SizedBox.fromSize(
                            size: Size(30, 30),
                            child: Material(
                              color: const Color.fromARGB(255, 2, 2, 2),
                              child: InkWell(
                                splashColor: Colors.white,
                                onTap: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ), // <-- Icon
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80, top: 10),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            person,
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                            //  alignment: Alignment.center,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(personName)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//"Easy homemode \n beef burger"