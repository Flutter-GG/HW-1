import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/View/buttonSheet.dart';
import 'package:flutter_application_1/View/compunent/buttonContainer.dart';
import 'package:flutter_application_1/View/compunent/buttonNavigate.dart';
import 'package:flutter_application_1/View/compunent/foodChoice.dart';
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
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              //padding: EdgeInsets.all(30.0),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: textfield(
                    tittle: "search",
                    width: 1,
                    TextLogo: Icons.search,
                    TextFieldheight: 300,
                    TextFieldwidth: 90,
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
                    iconsearch: Icons.add_task,
                  ),
                ),
              ],
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buttonNavigate(
                    width: 140,
                    height: 55,
                    color: Color(0xff80b6bd),
                    radius: 80,
                    title: 'Breackfast',
                    textcolor: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  buttonNavigate(
                    width: 120,
                    height: 55,
                    color: Color(0xfff1f5f5),
                    radius: 80,
                    title: "Launch",
                    textcolor: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  buttonNavigate(
                    width: 120,
                    height: 55,
                    color: Color(0xfff1f5f5),
                    radius: 80,
                    title: "Dinner",
                    textcolor: Colors.black,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const texttittle(
              title: "Popular Recipes",
              decrb: "View All",
              width: 150,
              fontWeight: FontWeight.bold,
              size1: 20,
              size2: 15,
              color1: Color(0xff80b6bd),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
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
            const SizedBox(
              height: 30,
            ),
            const texttittle(
              title: "Editors Choice",
              decrb: "View All",
              width: 170,
              fontWeight: FontWeight.bold,
              size1: 20,
              size2: 15,
              color1: Color(0xff80b6bd),
            ),
            const SizedBox(
              height: 20,
            ),
            const foodChoice(
              imagePath: "assets/image/Baked Stuffed Lobster with Shrimp.jpg",
              foodDiscribction: "Eating lobester \nvery nice",
              person:
                  "assets/image/Peaky blinders, Thomas Shelby, cap, HD mobile wallpaper | Peaky blinders tommy shelby, Peaky blinders wallpaper, Peaky blinders thomas.jpg",
              personName: "Thomas Shelpy",
            ),
            const SizedBox(
              height: 20,
            ),
            const foodChoice(
              imagePath:
                  "assets/image/Blue Crab - Steamed Blue Crabs with Old Bay - Rasa Malaysia.jpg",
              foodDiscribction: "Eating crab \nvery nice youme",
              person: "assets/image/Unknown-18.jpg",
              personName: "Kamal Yalderiz",
            ),
            FloatingActionButton(
              child: Icon(Icons.cake),
              backgroundColor: Colors.black,
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: false,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    context: context,
                    builder: (context) => Buttonsheet());
              },
            )
          ],
        ),
      ),
    );
  }
}
