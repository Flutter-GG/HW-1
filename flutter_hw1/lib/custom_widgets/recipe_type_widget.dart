import 'package:flutter/material.dart';

/* this file for recipe type choice chip,
it is for filtring the page, like category_widget.dart file but it is support selection of multiable choice chip */
class CustomRecipeTypeWidget extends StatefulWidget {
  @override
  _RecipeTypeWidgetState createState() => _RecipeTypeWidgetState();
}

class _RecipeTypeWidgetState extends State<CustomRecipeTypeWidget> {
  List<String> _selectedOptions = [];

  final List<String> _options = [
    'Salad',
    'Chicken',
    'Egg',
    'Meals',
    'Cakes',
    'Vegetables',
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: List<Widget>.generate(_options.length, (index) {
        return ChoiceChip(
          backgroundColor: _selectedOptions.contains(_options[index])
              ? Color(0xff6FB9BF)
              : Colors.grey[300],
          selectedColor: Color(0xff6FB9BF),
          label: Text(
            _options[index],
            style: TextStyle(
              color: _selectedOptions.contains(_options[index])
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          disabledColor: Colors.green,
          selected: _selectedOptions.contains(_options[index]),
          onSelected: (selected) {
            setState(() {
              if (selected) {
                _selectedOptions.add(_options[index]);
              } else {
                _selectedOptions.remove(_options[index]);
              }
            });
          },
        );
      }),
    );
  }
}
