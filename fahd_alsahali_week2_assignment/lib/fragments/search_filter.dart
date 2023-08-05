// ignore_for_file: prefer_const_constructors

import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_buttons/custom_button.dart';
import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_buttons/custom_selection_button.dart';
import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_headings/custom_title.dart';
import 'package:flutter/material.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          CustomTitle(
            title: "Filter",
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: CustomTitle(
              title: "Category",
              fontSize: 20,
            ),
          ),
          Wrap(
            spacing: 10, 
            runSpacing: 10, 
            children: [
              CustomSelectionButton(text: "Breakfast", isSelected: true,),
              CustomSelectionButton(text: "Lunch",),
              CustomSelectionButton(text: "Dinner", textColor: 0xff70B9BE,),
            ]
          ),
          SizedBox(height: 30,),
          Align(
            alignment: Alignment.centerLeft,
            child: CustomTitle(
              title: "Recipe Type",
              fontSize: 20,
            ),
          ),
          Wrap(
            spacing: 10, 
            runSpacing: 10, 
            children: [
              CustomSelectionButton(text: "Salad", isSelected: true,),
              CustomSelectionButton(text: "Egg",),
              CustomSelectionButton(text: "Cakes", textColor: 0xff70B9BE,),
              CustomSelectionButton(text: "Chicken", textColor: 0xff70B9BE,),
              CustomSelectionButton(text: "Meals",),
              CustomSelectionButton(text: "Vegetables", isSelected: true,),
            ]
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  width: MediaQuery.of(context).size.width - 60,
                  onPressed: () {},
                  backgroundColor: 0xff70B9BE,
                  borderColor: 0xff70B9BE,
                  buttonText: "Apply Filter",
                ),
                SizedBox(height: 10,),
                CustomButton(
                  width: MediaQuery.of(context).size.width - 60,
                  onPressed: () {},
                  backgroundColor: 0xffFFFFFF,
                  borderColor: 0xffFFFFFF,
                  foregroundColor: 0xff70B9BE,
                  buttonText: "Apply Filter",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
