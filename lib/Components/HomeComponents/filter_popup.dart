import 'package:flutter/material.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FilterBottomSheetState createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent, // We use a transparent container to make the content visible in the bottom sheet
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                'Filter',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 24),
            _buildFilterCategory('Category', ['Breakfast', 'Lunch', 'Dinner']),
            const SizedBox(height: 24),
            _buildFilterCategory('Recipe Type', ['Salad', 'Egg', 'CAKES', 'Chicken', 'Meals', 'Vegetables']),
            SizedBox(height: 24),
            _buildFilterButtons('Apply Filters', Colors.teal, () {
              // Add logic for applying filters
              Navigator.pop(context);
            }),
            SizedBox(height: 12),
            _buildFilterButtons('Clear Filters', Colors.white, () {
              // Add logic for clearing filters
              Navigator.pop(context);
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterCategory(String title, List<String> options) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: options
              .map(
                (option) => _buildFilterOption(option),
              )
              .toList(),
        ),
      ],
    );
  }

  Widget _buildFilterOption(String option) {
    return ElevatedButton(
      onPressed: () {
        // Add logic for handling filter option selection
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        option,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildFilterButtons(String label, Color color, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
