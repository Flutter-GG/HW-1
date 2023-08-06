import 'package:flutter/material.dart';
import '../Components/HomeComponents/editor_listview.dart';
import '../Components/HomeComponents/tab_bar.dart';
import '../Components/SignUpAndLoginComponents/app_bar.dart';
import '../Components/SignUpAndLoginComponents/custom_field.dart';
import '../Components/HomeComponents/filter_popup.dart'; 
import '../Components/HomeComponents/filter_buttons.dart';


// Import the RecipeListView component

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Search'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  child: CustomField(
                    hintText: 'Search...',
                    prefixIcon: Icons.search,
                  ),
                ),
                const SizedBox(width: 10), // For some spacing between the search bar and the filter button
                ElevatedButton.icon(
                  onPressed: () {
                    // Here, we show the FilterBottomSheet when the filter button is pressed
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => const FilterBottomSheet(),
                      isScrollControlled: true, // Allows for full screen modal if needed
                    );
                  },
                  icon: const Icon(Icons.filter_list, color: Colors.white),
                  label: const Text(''), // Empty text for the label
                  style: ElevatedButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: Colors.teal, // Background color
                    side: BorderSide(color: Colors.grey.withOpacity(0.5)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 12),
                    alignment: Alignment.center, // Align the icon in the center
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: FilterButton(),
          ), // Add the filter buttons row here
          const SizedBox(height: 20), // Add some spacing between the filter buttons row and the title row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  'Popular Recipes',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: TextButton(
                  onPressed: () {
                    // Handle View All button pressed
                  },
                  style: TextButton.styleFrom(
                    // ignore: deprecated_member_use
                    primary: Colors.teal,
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  child: const Text('View all'),
                ),
              ),
            ],
          ),
          SizedBox(
  height: 500,
  child: RecipeListView(),
) // Use the RecipeListView component here
        ],
      ),
      bottomNavigationBar: CurvedNotchedTabBar(
        onTabSelected: (index) {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: const Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Icon(Icons.local_restaurant, size: 30, color: Colors.white),
            Positioned(
              top: 5,
              child: Icon(Icons.circle, size: 15, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
