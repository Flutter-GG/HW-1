import 'package:flutter/material.dart';
import 'package:health_food/screens/FilterScreen.dart';
import 'package:health_food/widgets/editorWidget.dart';
import 'package:health_food/widgets/filterButton.dart';
import 'package:health_food/widgets/pupular.dart';
import 'package:health_food/widgets/textField.dart';
import 'package:health_food/widgets/textWidgets.dart';
import 'package:health_food/widgets/CategorysWidget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       iconTheme: const IconThemeData(color: Colors.black),
       backgroundColor: Colors.white,
       elevation: 0,
       title: const Center(
         child: TextWidget(
           text: "Search",
           textAlign: TextAlign.center,
           color: Colors.black, 
           Weight:FontWeight.bold, 
           fSize: 29,),
       ),

      ),
      body:  SafeArea(
          child: Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const TextFieldWidget(
                hintText: 'Search',
                prefixIcon: Icons.search,

              ),
              FilterButton(
                text: "",
                width:80,
                isFilter: true,
                bgColor: const Color(0Xff70B9BE),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => const FilterScreen());
                }, 
              ),
            ],
          ),


          const SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 30),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilterButton( text: 'Breakfast',),
               
                FilterButton(text: 'Lunch'),
               
                FilterButton(text: 'Dinner'),
              ],
            ),
          ),

          const CategorysWidget(
            title: 'Pupular Recipes',
          ),
           const SingleChildScrollView(
            padding: EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PuoularWidget(
                  text: 'Egg',
                  path: 'assets/images/food.jpeg',
                ),
               
                PuoularWidget(
                  text: 'Bowl of...',
                  path: 'assets/images/food.jpeg',
                ),
              
                PuoularWidget(
                  text: 'chicken',
                  path: 'assets/images/food.jpeg',
                ),
              ],
            ),
          ),

          const CategorysWidget(
            title: "Editor's Choice",
          ),
           const Expanded(
              child: SingleChildScrollView(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      EditorWidget(
                        title: 'Easy homemade beef burger',
                        editorName: 'James Spader',
                        imagePath: 'assets/images/food.jpeg',
                        profilePath: 'assets/images/profile.png',
                      ),
                  
                      EditorWidget(
                        title: 'Bluederry with egg for breakfast ',
                        editorName: 'Alice Fala',
                        imagePath: 'assets/images/food.jpeg',
                        profilePath: 'assets/images/profile.png',
                      ),
                  
                    ],
                  ),),)     
        ],
      )),
     
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0Xff70B9BE),
        child: Image.asset(
          'assets/icons/chefHat.png',
          width: 25,
          height: 25,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}

  