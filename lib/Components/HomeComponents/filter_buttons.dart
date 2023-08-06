import 'package:flutter/material.dart';

class FilterButton extends StatefulWidget {
  const FilterButton({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FilterButtonState createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  int _selectedButtonIndex = 0; // Initialize the selected button index to 0 (Breakfast)

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FilterOptionButton(
            text: 'Breakfast',
            isSelected: _selectedButtonIndex == 0,
            onPressed: () {
              setState(() {
                _selectedButtonIndex = 0;
              });
            },
          ),
        ),
        SizedBox(width: 8), // Space between buttons
        Expanded(
          child: FilterOptionButton(
            text: 'Lunch',
            isSelected: _selectedButtonIndex == 1,
            onPressed: () {
              setState(() {
                _selectedButtonIndex = 1;
              });
            },
          ),
        ),
        SizedBox(width: 8), // Space between buttons
        Expanded(
          child: FilterOptionButton(
            text: 'Dinner',
            isSelected: _selectedButtonIndex == 2,
            onPressed: () {
              setState(() {
                _selectedButtonIndex = 2;
              });
            },
          ),
        ),
      ],
    );
  }
}

class FilterOptionButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const FilterOptionButton({
    required this.text,
    required this.isSelected,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        // ignore: deprecated_member_use
        primary: isSelected ? Colors.teal.shade200 : Colors.grey.shade300,
        // ignore: deprecated_member_use
        onPrimary: isSelected ? Colors.white : Colors.black,
        side: BorderSide(color: Colors.grey.withOpacity(0.5)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        alignment: Alignment.center, // Align the icon in the center
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
