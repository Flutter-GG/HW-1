import 'package:flutter/material.dart';

import '../widgets/customButtonWidget.dart';
import '../widgets/textWidget.dart';
import 'searchPage.dart';

enum CategoryFilter { BreakFast, Lunch, Snack, Dinner }

enum RecipeTypeFilter { Salad, Egg, Cakes, Chicken, Meals, Vegetables }

void main() => runApp(const FilterPage());

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            title: const TextWidget(
                text: 'Filter',
                size: 30,
                weight: FontWeight.bold,
                color: Colors.black)),
        body: const FilterExample(),
      ),
    );
  }
}

class FilterExample extends StatefulWidget {
  const FilterExample({super.key});

  @override
  State<FilterExample> createState() => _FilterExampleState();
}

class _FilterExampleState extends State<FilterExample> {
  Set<CategoryFilter> filters = <CategoryFilter>{};
  Set<RecipeTypeFilter> filters2 = <RecipeTypeFilter>{};

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Category', style: textTheme.labelLarge),
          const SizedBox(height: 5.0),
          Wrap(
            spacing: 10.0,
            children: CategoryFilter.values.map((CategoryFilter exercise) {
              return FilterChip(
                label: Text(exercise.name),
                selected: filters.contains(exercise),
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      filters.add(exercise);
                    } else {
                      filters.remove(exercise);
                    }
                  });
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 35.0),
          Text('Recipe Type', style: textTheme.labelLarge),
          Wrap(
            spacing: 10.0,
            children: RecipeTypeFilter.values.map((RecipeTypeFilter exercise2) {
              return FilterChip(
                label: Text(exercise2.name),
                selected: filters2.contains(exercise2),
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      filters2.add(exercise2);
                    } else {
                      filters2.remove(exercise2);
                    }
                  });
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 30.0),
          Text(
            'Your Category Choices: ${filters.map((CategoryFilter e) => e.name).join(', ')}',
            style: textTheme.labelLarge,
          ),
          Text(
            'Your Recipe Choices: ${filters2.map((RecipeTypeFilter e) => e.name).join(', ')}',
            style: textTheme.labelLarge,
          ),
          CustomButtonWedgit(
            title: "Apply Filter",
            bgColor: Color(0xFF70B9BE),
            fgColor: Colors.white,
            isBorderSide: true,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SearchPage()));
            },
          ),
          CustomButtonWedgit(
            title: "Clear Filter",
            bgColor: Color(0xFF70B9BE),
            fgColor: Colors.white,
            isBorderSide: true,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SearchPage()));
            },
          ),
        ],
      ),
    );
  }
}
