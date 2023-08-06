import 'package:flutter/material.dart';
import 'package:hw_1/Widgets/CategoryFood_Widget.dart';
import 'package:hw_1/Widgets/EditorChoice_Widget.dart';
import 'package:hw_1/Widgets/PopularRecipesCard_Widget.dart';
import 'package:hw_1/Widgets/SearchWidget.dart';
import 'package:hw_1/Widgets/TextField_widget.dart';
import 'package:hw_1/Widgets/Text_Widget.dart';
import 'package:hw_1/Widgets/navigationBar_Widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const TextWidget(
          text: 'Search',
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff5d8d80),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchWidget(),
              const SizedBox(
                height: 10,
              ),
              CategoryFoodWidget(),
              const SizedBox(
                height: 20,
              ),
              Row(children: [
                Container(
                  child: const TextWidget(
                      text: "Popular Recipes",
                      istextBold: true,
                      isColorOpacity: false),
                ),
                const SizedBox(
                  width: 160,
                ),
                Container(
                  child: const TextWidget(
                      text: "View All", istextBold: true, isColorOpacity: true),
                )
              ]),
              const SizedBox(
                height: 20,
              ),
              const PopularRecipesCard(),
              const SizedBox(
                height: 20,
              ),
              Row(children: [
                Container(
                  child: const TextWidget(
                      text: "Editor's Choice",
                      istextBold: true,
                      isColorOpacity: false),
                ),
                const SizedBox(
                  width: 160,
                ),
                Container(
                  child: const TextWidget(
                      text: "View All", istextBold: true, isColorOpacity: true),
                ),
                const SizedBox(
                  height: 50,
                ),
              ]),
              const EditorChoiceWidget()
            ],
          ),
        )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset(
          'assets/images/Chef_icon.png',
          height: 30.0,
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff5d8d80).withOpacity(0.9),
        elevation: 0,
      ),
      bottomNavigationBar: const NavigationBarWidget(),
    );
  }
}
