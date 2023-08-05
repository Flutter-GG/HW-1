import 'package:flutter/material.dart';
import 'package:hw_1/Widgets/Button_Widget.dart';
import 'package:hw_1/Widgets/CategoryFood_Widget.dart';
import 'package:hw_1/Widgets/Text_Widget.dart';
import 'package:hw_1/pages/createAccount_page.dart';
import 'package:hw_1/pages/search_page.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            const TextWidget(
                size: 30,
                text: "Filter",
                istextBold: true,
                textAlign: TextAlign.center,
                isColorOpacity: true),
            const SizedBox(
              height: 20,
            ),
            const TextWidget(
                size: 20,
                text: "Category",
                istextBold: false,
                textAlign: TextAlign.left,
                isColorOpacity: true),
            const SizedBox(
              height: 15,
            ),
            CategoryFoodWidget(),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonsWidget(
                text: "Apply Filter",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchPage()));
                }),
            const SizedBox(
              height: 20,
            ),
            ButtonsWidget(
                text: "Clear Filter",
                bgColor: const Color.fromARGB(255, 188, 188, 188),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchPage()));
                }),
          ],
        ),
      ),
    );
  }
}
