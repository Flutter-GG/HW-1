import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_navigatorbar.dart';
import '../widgets/custom_filed_without_title.dart';
import '../widgets/custom_title_section.dart';
import '../widgets/editor_choice_list_scroller.dart';
import '../widgets/meals_list_scroller.dart';
import '../widgets/popular_recipes_list_scroller.dart';
import '../widgets/viewed_filter_widget.dart';


class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      resizeToAvoidBottomInset: false,
      
      backgroundColor: Colors.white,
      appBar:  PreferredSize( // Need to be checked
        preferredSize: Size.fromHeight(60),

        //Get the custom appbar 
        child: CustomAppBar(title: "Search"),
        ),

      body: Column(
        children: [
      
          //Search filed section
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                      child: TextFiledNoTitle(hintText: 'Search', prefixIcon: Icons.search_outlined,),
                ),
                
                SizedBox(width: 5,),
                
                ShowFilterSheet(), // Button to filter recipes & category
              ],
            ),
          ),
      
          SizedBox(height: 15,),
      
          MealsListScroller(), //Meals Scroll View
      
          SizedBox(height: 15,),
      
          //Title of the Popular recipes section
          CustomTitleSection(sectionTitle:"Popular Recipes", buttonTitle: "View All",),
          
          SizedBox(height: 6,),
      
          PopularRacipesList(), //Recipes Scroll View
      
          SizedBox(height: 10,),
          
          //Title of the Editor's choice section
          CustomTitleSection(sectionTitle:"Editor's Choice", buttonTitle: "View All",),
      
          //Editor's choice from recipes scroll view
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              scrollDirection: Axis.vertical,
              child: EditorChoiceList(),
            ),
          ),
        ],
      ) ,

      //Navigator Bar section
      bottomNavigationBar: CustomNavigatorBar(),
    );
  }
}
