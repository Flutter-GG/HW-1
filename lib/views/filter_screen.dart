import 'package:flutter/material.dart';
import 'package:yum/views/search_screen.dart';

import '../widget/button/button_widget.dart';
import '../widget/text_widget.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const TextWidget(
            text: 'Filter',
            color: Color(0xff042628),
            size: 18,
            weight: FontWeight.w700,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const TextWidget(
                          text: 'Category',
                          weight: FontWeight.w700,
                          size: 15,
                          color: Color(0xff042628),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomElevatedButton(
                              title: "Brekfast",
                              isBorderRadius: true,
                              size: const Size(110, 50),
                              bgColor: const Color(0xff70b9be),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchScreen()),
                                );
                              },
                            ),
                            CustomElevatedButton(
                              title: 'Lunch',
                              isBorderRadius: true,
                              size: const Size(110, 50),
                              bgColor: Colors.grey[200],
                              fgColor: Color(0xff042628),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchScreen()),
                                );
                              },
                            ),
                            CustomElevatedButton(
                              title: 'Dinner',
                              isBorderRadius: true,
                              size: const Size(110, 50),
                              fgColor: const Color(0xff70b9be),
                              bgColor: Colors.grey[200],
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchScreen()),
                                );
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const TextWidget(
                          text: 'Recipe Type',
                          color: Color(0xff042628),
                          weight: FontWeight.w700,
                          size: 15,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomElevatedButton(
                              title: 'Salad',
                              isBorderRadius: true,
                              size: const Size(110, 50),
                              bgColor: const Color(0xff70b9be),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchScreen()),
                                );
                              },
                            ),
                            CustomElevatedButton(
                              title: 'Egg',
                              isBorderRadius: true,
                              size: const Size(110, 50),
                              bgColor: Colors.grey[200],
                              fgColor: Color(0xff042628),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchScreen()),
                                );
                              },
                            ),
                            CustomElevatedButton(
                              title: 'Cakes',
                              isBorderRadius: true,
                              size: const Size(110, 50),
                              bgColor: Colors.grey[200],
                              fgColor: const Color(0xff70b9be),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchScreen()),
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomElevatedButton(
                              title: 'Chicken',
                              isBorderRadius: true,
                              size: const Size(110, 50),
                              bgColor: Colors.grey[200],
                              fgColor: const Color(0xff70b9be),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchScreen()),
                                );
                              },
                            ),
                            CustomElevatedButton(
                              title: 'Meals',
                              isBorderRadius: true,
                              size: const Size(110, 50),
                              bgColor: Colors.grey[200],
                              fgColor: Color(0xff042628),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchScreen()),
                                );
                              },
                            ),
                            CustomElevatedButton(
                              title: 'Vegetables',
                              isBorderRadius: true,
                              size: const Size(110, 50),
                              bgColor: const Color(0xff70b9be),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchScreen()),
                                );
                              },
                            ),
                          ],
                        ),
                      ])),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomElevatedButton(
                        title: 'Apply Filter',
                        bgColor: const Color(0xff70b9be),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SearchScreen()),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextWidget(
                        text: 'Clear Filter',
                        color: Color(0xff70b9be),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
