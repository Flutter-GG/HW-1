import 'package:flutter/material.dart';
import 'package:yum/widget/button/button_widget.dart';
import 'package:yum/widget/text_widget.dart';
import '../widget/card_widget.dart';
import '../widget/editor_card_wedget.dart';
import '../widget/formfield_widget.dart';
import 'filter_Screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        iconTheme: const IconThemeData(
            color: Color(0xff042628) //change your color here
            ),
        title: const TextWidget(
          text: "Search",
          color: Color(0xff042628),
          weight: FontWeight.w800,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          //replace with our own icon data.
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width - 110,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: const CustomTextFormField(
                      hintText: "search",
                      icon: Icons.search_outlined,
                    )),
                const SizedBox(
                  width: 15,
                ),
                CustomElevatedButton(
                  size: const Size(60, 60),
                  isIconButton: true,
                  bgColor: const Color(0xff70b9be),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => const FilterScreen());
                  },
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                CustomElevatedButton(
                  title: 'Breakfast',
                  bgColor: const Color(0xff70b9be),
                  isBorderRadius: true,
                  size: const Size(110, 50),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchScreen()),
                    );
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                CustomElevatedButton(
                  title: 'Lunch',
                  bgColor: Colors.grey[200],
                  fgColor: const Color(0xff042628),
                  isBorderRadius: true,
                  size: const Size(100, 50),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchScreen()),
                    );
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                CustomElevatedButton(
                  title: 'Dinner',
                  bgColor: Colors.grey[200],
                  fgColor: const Color(0xff042628),
                  isBorderRadius: true,
                  size: const Size(100, 50),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchScreen()),
                    );
                  },
                ),
                const SizedBox(
                  width: 5,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                TextWidget(
                    text: "Popular Recipes",
                    weight: FontWeight.w800,
                    color: Color(0xff042628),
                    size: 20),
                SizedBox(
                  width: 100,
                ),
                TextWidget(
                    text: "View All",
                    weight: FontWeight.w800,
                    color: Color(0xff70b9be),
                    size: 15),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    CustomCardWidget(
                      imagePath: "assets/images/avocado_egg.png",
                      text: "Egg & Avo...",
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    CustomCardWidget(
                      imagePath: "assets/images/rice_noodle.png",
                      text: "Bowl Of r...",
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    CustomCardWidget(
                      imagePath: "assets/images/chicken_sweet_sour.png",
                      text: "Chicken S...",
                    ),
                    CustomCardWidget(
                      imagePath: "assets/images/chicken_sweet_sour.png",
                      text: "Chicken S...",
                    ),
                  ],
                )),
            const SizedBox(
              height: 25,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                TextWidget(
                    text: "Editor's Choice",
                    weight: FontWeight.w800,
                    color: Color(0xff042628),
                    size: 20),
                SizedBox(
                  width: 100,
                ),
                TextWidget(
                    text: "View All",
                    weight: FontWeight.w800,
                    color: Color(0xff70b9be),
                    size: 15),
              ],
            ),
            const Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                CustomEditorCardWidget(
                  imagePath: "assets/images/burger.png",
                  text: "Easy homemade Burger",
                  editorImagePath: 'assets/images/Alice.png',
                  editorName: 'Alice Fala',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomEditorCardWidget(
                  imagePath: 'assets/images/oatmeal.png',
                  text: "Bowl Of Outmeal ",
                  editorImagePath: 'assets/images/james.png',
                  editorName: 'James Spader',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomEditorCardWidget(
                  imagePath: "assets/images/fruit_salad.png",
                  text: "Yumy Fruit salad",
                  editorImagePath: 'assets/images/Tom.png',
                  editorName: 'Tom Janat',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomEditorCardWidget(
                  imagePath: "assets/images/fruit_salad.png",
                  text: "Yumy Fruit salad",
                  editorImagePath: 'assets/images/Tom.png',
                  editorName: 'Tom Janat',
                ),
              ],
            ),
          ],
        ),
      )),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const IconButton(
              icon: Icon(Icons.home),
              color: Colors.grey,
              onPressed: null,
            ),
            IconButton(
              icon: const Icon(Icons.search),
              color: const Color(0xff70b9be),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchScreen()),
                );
              },
            ),
            const IconButton(
              icon: Icon(Icons.notification_add),
              color: Colors.grey,
              onPressed: null,
            ),
            const IconButton(
              icon: Icon(Icons.account_box_outlined),
              color: Colors.grey,
              onPressed: null,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff042628),
        onPressed: null,
        child: Image.asset('assets/Icon/chefHat.png',
            width: 30, height: 30, fit: BoxFit.fill),
      ),
    );
  }
}
