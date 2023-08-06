// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hw1_alawashiz/screens/all_food.dart';
import 'package:hw1_alawashiz/screens/filter_screen.dart';
import 'package:hw1_alawashiz/widgets/app_bar_widget.dart';
import 'package:hw1_alawashiz/widgets/editor_choice_widget.dart';
import 'package:hw1_alawashiz/widgets/meals_widget.dart';
import 'package:hw1_alawashiz/widgets/button_widget.dart';
import 'package:hw1_alawashiz/widgets/popular_recipes_widget.dart';
import 'package:hw1_alawashiz/widgets/text_field_widget.dart';
import 'package:hw1_alawashiz/widgets/text_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              index = index;
            });
          },
          selectedIndex: index,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            NavigationDestination(
              icon: Icon(Icons.login),
              label: 'login',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person_off),
              icon: Icon(Icons.bookmark_border),
              label: 'Saved',
            ),
          ],
        ),
      ),
      appBar: AppBarWidget("Search"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 4,
                    child: TextFieldWidget(
                        preIcon: Icon(Icons.search), hint: "Search", lable: ""),
                  ),
                  SizedBox(width: 15),
                  Flexible(
                    flex: 1,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff70B9BE)),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return FilterScreen();
                          },
                        );
                      },
                      icon: Icon(Icons.shape_line_outlined, size: 30),
                      label: Text(""),
                    ),
                  ),
                ],
              ),
              MealsWidget(),
              Container(
                // color: Colors.orange,
                alignment: Alignment.centerLeft,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 5, bottom: 5),
                padding: EdgeInsets.only(left: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                            text: "Popular Recipes", isBold: true, size: 20),
                        ButtonWidget(
                          text: "View All",
                          onPress: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=> AllFood()));
                          },
                          isTextButton: true,
                          size: 18,
                          fgColor: Color(0xff70B9BE),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  child: PopularRecipesWidget(), // Display meals Widget
                  // color: Colors.pink,
                  height: 150,
                  // width: 500,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(text: "Editor's Choice", isBold: true, size: 20),
                  ButtonWidget(
                    text: "View All",
                    onPress: () {},
                    isTextButton: true,
                    size: 18,
                    fgColor: Color(0xff70B9BE),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Container(
                    child: EditorChoiceWidget(), // Display meals Widget
                    // color: Colors.pink,
                    height: 230
                    // width: 500,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
