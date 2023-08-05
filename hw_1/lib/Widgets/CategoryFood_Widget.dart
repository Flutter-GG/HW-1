import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hw_1/Widgets/Text_Widget.dart';

class CategoryFoodWidget extends StatefulWidget {
  CategoryFoodWidget({
    super.key,
  });

  @override
  State<CategoryFoodWidget> createState() => _CategoryFoodWidgetState();
}

class _CategoryFoodWidgetState extends State<CategoryFoodWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            child: FilterChip(
              selected: isSelected,
              label: const TextWidget(
                  text: " Breakfast ",
                  istextBold: false,
                  isColorOpacity: false),
              onSelected: (bool valuu) {
                setState(() {
                  isSelected = !isSelected;
                });
              },
            ),
          ),
          const SizedBox(
            width: 20,
          ), // Lunch
          FilterChip(
            selected: isSelected,
            label: const TextWidget(
                text: " Lunch ", istextBold: false, isColorOpacity: false),
            onSelected: (bool valuu) {
              setState(() {
                isSelected = !isSelected;
              });
            },
          ),
          const SizedBox(
            width: 20,
          ), //// Dinner
          FilterChip(
            selected: isSelected,
            label: const TextWidget(
                text: "  Dinner  ", istextBold: false, isColorOpacity: false),
            onSelected: (bool valuu) {
              setState(() {
                isSelected = !isSelected;
              });
            },
          ),
          const SizedBox(
            width: 20,
          ),
          FilterChip(
            selected: isSelected,
            label: const TextWidget(
                text: "  Dinner  ", istextBold: false, isColorOpacity: false),
            onSelected: (bool valuu) {
              setState(() {
                isSelected = !isSelected;
              });
            },
          ),
        ],
      ),
    );
  }
}
