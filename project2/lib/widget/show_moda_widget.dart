import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/widget/text_button_widget.dart';

import '../Screen/search_screen.dart';
import '../colors/colors.dart';
import 'bold_text.dart';
import 'buttonWidget.dart';

Future<dynamic> show_moda_widget(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
    ),
    builder: (context) => Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: bold_text(TextName: "Filter"),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 250.0),
          child: bold_text(TextName: "Category"),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: buttonWidget(
                  Textinbutton: "Breakfast",
                  PageName: search_screen(),
                  buttonWidth: 300,
                  buttonHigut: 60,
                  borderRadiusButton: 25,
                  buttonColor: AppColors.primary_color,
                ),
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
        Padding(
          padding: const EdgeInsets.only(right: 210.0),
          child: bold_text(
            TextName: "Recipe Type",
            TextSize: 30,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: buttonWidget(
                  Textinbutton: "Egg",
                  PageName: search_screen(),
                  buttonWidth: 300,
                  buttonHigut: 50,
                  borderRadiusButton: 25,
                  buttonColor: AppColors.primary_color,
                ),
              ),
              SizedBox(width: 10),
              buttonWidget(
                Textinbutton: "Salad",
                PageName: search_screen(),
                buttonWidth: 300,
                buttonHigut: 50,
                borderRadiusButton: 25,
                buttonColor: AppColors.third_colors,
                TextColor: Colors.black,
              ),
              SizedBox(width: 10),
              buttonWidget(
                Textinbutton: "Burger",
                PageName: search_screen(),
                buttonWidth: 300,
                buttonHigut: 50,
                borderRadiusButton: 25,
                buttonColor: AppColors.third_colors,
                TextColor: Colors.black,
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: buttonWidget(
                  Textinbutton: "Pizza",
                  PageName: search_screen(),
                  buttonWidth: 300,
                  buttonHigut: 50,
                  borderRadiusButton: 25,
                  buttonColor: AppColors.primary_color,
                ),
              ),
              SizedBox(width: 10),
              buttonWidget(
                Textinbutton: "Salmon",
                PageName: search_screen(),
                buttonWidth: 300,
                buttonHigut: 50,
                borderRadiusButton: 25,
                buttonColor: AppColors.third_colors,
                TextColor: Colors.black,
              ),
              SizedBox(width: 10),
              buttonWidget(
                Textinbutton: "Cakes",
                PageName: search_screen(),
                buttonWidth: 300,
                buttonHigut: 50,
                borderRadiusButton: 25,
                buttonColor: AppColors.third_colors,
                TextColor: Colors.black,
              ),
            ],
          ),
        ),
        buttonWidget(
          Textinbutton: "Apply Filter ",
          PageName: search_screen(),
          buttonColor: AppColors.primary_color,
        ),
        text_button_widget(
          TextInButton: "Clear Filter",
          buttonColor: AppColors.primary_color,
        ),
      ],
    ),
  );
}
