import 'package:flutter/material.dart';

class CustomCategoryWidget extends StatefulWidget {
  @override
  _CustomCategoryWidgetState createState() => _CustomCategoryWidgetState();
}

class _CustomCategoryWidgetState extends State<CustomCategoryWidget> {
  String? _selectedOption;

  final List<String> _options = [
    'Breakfast',
    'Lunch',
    'Dinner',
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: List<Widget>.generate(_options.length, (index) {
        return ChoiceChip(
          backgroundColor: _selectedOption == _options[index]
              ? Color(0xff6FB9BF)
              : Colors.grey[300],
          selectedColor: Color(0xff6FB9BF),
          label: Text(
            _options[index],
            style: TextStyle(
              color: _selectedOption == _options[index]
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          selected: _selectedOption == _options[index],
          onSelected: (selected) {
            setState(() {
              if (selected) {
                _selectedOption = _options[index];
              } else {
                _selectedOption = null;
              }
            });
          },
        );
      }),
    );
  }
}
