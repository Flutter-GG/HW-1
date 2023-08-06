import 'package:flutter/material.dart';
import 'package:hw_1/View/Screens/filter.dart';
import 'package:hw_1/View/widget/colored_button.dart';
import 'package:hw_1/models/editors_choice_list.dart';
import 'package:hw_1/models/popular_recipe.dart';
import 'package:hw_1/view_model/food_list.dart';
import 'package:hw_1/View/widget/navigation_bar.dart';
import 'package:hw_1/View/widget/titles.dart';
import 'package:hw_1/view_model/editor_choice.dart.';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _Search();
}

class _Search extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: 400,
              child: TextField(
                textAlign: TextAlign.right,
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () => searchController.clear(),
                  ),
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            Row(
              children: const [
                ColoredButton(meals: 'BreakFast'),
                ColoredButton(meals: 'Lunch'),
                ColoredButton(meals: 'Dinner'),
                Filtering(),
              ],
            ),
            const Titles(
              rightHeadLine: 'Popular Respies',
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: PopularRecipe.poprecipes.length,
                  itemBuilder: (context, index) {
                    return FoodList(dish: PopularRecipe.poprecipes[index]);
                  }),
            ),
            const Titles(
              rightHeadLine: 'Editors Choices',
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: EditorsPlates.plates.length,
                  itemBuilder: (context, index) {
                    return dishes(dish: EditorsPlates.plates[index]);
                  }),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 2,
                height: 80,
                child: const Navigations()),
          ],
        ),
      ),
    );
  }
}
