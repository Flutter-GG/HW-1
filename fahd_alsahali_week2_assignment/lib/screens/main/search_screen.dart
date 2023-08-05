// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_buttons/custom_button.dart';
import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_buttons/custom_selection_button.dart';
import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_cards/editor_choice_card.dart';
import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_cards/popular_recipes_card.dart';
import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_headings/custom_lists_heading.dart';
import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_headings/custom_title.dart';
import 'package:fahd_alsahali_week2_assignment/fragments/search_filter.dart';
import 'package:flutter/material.dart';

import '../../custom_widget/BottomNavigationPainter.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const CustomTitle(title: "Search"),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 275,
                    height: 75,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  CustomButton(
                    width: 60,
                    height: 60,
                    isTextButton: false,
                    icon: Icons.filter_list,
                    backgroundColor: 0xff70B9BE,
                    borderColor: 0xff70B9BE,
                    borderSmooth: 20,
                    onPressed: () {
                      showModalBottomSheet(
                        context: context, 
                        builder: (context) => SearchFilter(),
                      );
                    },
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      CustomSelectionButton(
                        text: "Breakfast",
                        isSelected: true,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomSelectionButton(
                        text: "Lunch",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomSelectionButton(
                        text: "Dinner",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomSelectionButton(
                        text: "Snack",
                      ),
                    ],
                  ),
                ),
              ),
              CustomListsHeading(
                title: "Popular Recipes",
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PopularRecipesCard(
                        recipeImage: "assets/images/Egg and avocado.jpg",
                        recipeName: "Eggs and avocado",
                      ),
                      PopularRecipesCard(
                        recipeImage: "assets/images/bowl of rice.jpg",
                        recipeName: "Bowl of rice",
                      ),
                      PopularRecipesCard(
                        recipeImage: "assets/images/chicken fry.jpg",
                        recipeName: "chicken",
                      ),
                      PopularRecipesCard(
                        recipeImage: "assets/images/Steak.jpg",
                        recipeName: "Steak",
                      ),
                    ],
                  ),
                ),
              ),
              CustomListsHeading(
                title: "Editor's Choice",
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      EditorChoiceCard(
                        title: "Easy homemade beef burger",
                        dishImage: "assets/images/beef burger.jpg",
                      ),
                      EditorChoiceCard(
                        title: "Blueberry with egg for breakfast",
                        dishImage: "assets/images/Blueberry.jpg",
                      ),
                      EditorChoiceCard(
                        title: "Easy homemade beef burger",
                        dishImage: "assets/images/beef burger.jpg",
                      ),
                    ],
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
