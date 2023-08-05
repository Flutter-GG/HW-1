import 'package:flutter/material.dart';
import 'package:project2/widget/buttonWidget.dart';
import 'package:project2/widget/textFieldWidget.dart';
import '../colors/colors.dart';
import '../widget/bold_text.dart';
import '../widget/bottom_app_bar_widget.dart';
import '../widget/container_food.dart';
import '../widget/editors_choice_Container.dart';
import '../widget/show_moda_widget.dart';
import '../widget/title_widget.dart';

class search_screen extends StatelessWidget {
  const search_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: bold_text(TextName: "Search"),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: textFieldWidget(
                          textInHentInTextField: "Search",
                          iconInTextField: Icons.search_outlined,
                        ),
                      ),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            show_moda_widget(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary_color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.all(10),
                          ),
                          child: Icon(
                            Icons.filter_list_alt,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Row(
                          children: [
                            buttonWidget(
                              Textinbutton: "Breakfast",
                              PageName: search_screen(),
                              buttonWidth: 300,
                              buttonHigut: 60,
                              borderRadiusButton: 25,
                              buttonColor: AppColors.primary_color,
                            ),
                            SizedBox(width: 10),
                            buttonWidget(
                              Textinbutton: "Lunch",
                              PageName: search_screen(),
                              buttonWidth: 300,
                              buttonHigut: 60,
                              borderRadiusButton: 25,
                              buttonColor: AppColors.third_colors,
                              TextColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            buttonWidget(
                              Textinbutton: "Dinner",
                              PageName: search_screen(),
                              buttonWidth: 300,
                              buttonHigut: 60,
                              borderRadiusButton: 25,
                              buttonColor: AppColors.third_colors,
                              TextColor: Colors.black,
                            ),
                            SizedBox(width: 10),
                            buttonWidget(
                              Textinbutton: "All",
                              PageName: search_screen(),
                              buttonWidth: 300,
                              buttonHigut: 60,
                              borderRadiusButton: 25,
                              buttonColor: AppColors.third_colors,
                              TextColor: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  title_widget(
                    title: "Popular Recipes",
                    titleInTextButton: "View All",
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        container_food(
                          img: 'assets/img/meal/Salmon.jpeg',
                          mealName: "Salmon",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        container_food(
                          img: 'assets/img/meal/Pizza.jpeg',
                          mealName: "Pizza",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        container_food(
                          img: 'assets/img/meal/Salad.jpeg',
                          mealName: "Salad",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        container_food(
                          img: 'assets/img/meal/Burger.jpeg',
                          mealName: "Burger",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  title_widget(
                    title: "Editor's Choice",
                    titleInTextButton: "View All",
                  ),
                  editors_choice_Container(
                    imgMeal: "assets/img/meal/Pizza.jpeg",
                    title: "Easy Pizza you can meda in home ",
                    imgPerson: "assets/img/Person/Person1.jpeg",
                    namePerson: "Benjamin Johnson",
                  ),
                  editors_choice_Container(
                    imgMeal: "assets/img/meal/Salmon.jpeg",
                    title: "Easy Salmon you can meda in home ",
                    imgPerson: "assets/img/Person/Person2.jpeg",
                    namePerson: "Liam Brown",
                  ),
                  editors_choice_Container(
                    imgMeal: "assets/img/meal/Burger.jpeg",
                    title: "Easy Burger you can meda in home ",
                    imgPerson: "assets/img/Person/Person3.jpeg",
                    namePerson: "Noah Taylor",
                  ),
                ],
              ),
            )),
      ),
      bottomNavigationBar: bottom_app_bar_widget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary_color,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
