import 'package:flutter/material.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({Key? key}) : super(key: key);

  @override
  _FilterBottomSheetState createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  List<String> selectedOptions = []; // To keep track of selected filter options

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
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
              const SizedBox(height: 24),
              _buildFilterCategory('Category', ['Breakfast', 'Lunch', 'Dinner']),
              const SizedBox(height: 24),
              _buildFilterCategory('Recipe Type', ['Salad', 'Egg', 'CAKES', 'Chicken', 'Meals', 'Vegetables']),
              const SizedBox(height: 24),
              _buildFilterButtons('Apply Filters', Colors.teal, () {
                Navigator.pop(context);
              }),
              const SizedBox(height: 12),
              _buildFilterButtons('Clear Filters', Colors.white, () {
                Navigator.pop(context);
              }),
            ],
          ),
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
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          alignment: WrapAlignment.center, // Center the filter options
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
    bool isSelected = selectedOptions.contains(option); // Check if the option is selected

    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (isSelected) {
            selectedOptions.remove(option);
          } else {
            selectedOptions.add(option);
          }
        });
      },
      style: ElevatedButton.styleFrom(
        primary: isSelected ? Colors.teal : Colors.grey[300], // Change color based on selection
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        fixedSize: Size(120, 50), // Increase size for all filter buttons
      ),
      child: Text(
        option,
        style: const TextStyle(
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
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
