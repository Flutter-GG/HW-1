import 'package:flutter/material.dart';
import 'package:hw_1/View/widget/colored_button.dart';

class Filtering extends StatelessWidget {
  const Filtering({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.blueGrey,
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              insetPadding: EdgeInsets.zero,
              scrollable: true,
              title: const Text(
                "Category",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
                textAlign: TextAlign.center,
              ),
              content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        ColoredButton(
                          meals: 'BreakFast',
                        ),
                        ColoredButton(
                          meals: 'Lunch',
                        ),
                        ColoredButton(
                          meals: 'Dinner',
                        ),
                      ],
                    ),
                    const Text(
                      "Recpie",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                      
                    ),
                    Row(
                      children: const [
                        ColoredButton(
                          meals: 'Salad',
                        ),
                        ColoredButton(
                          meals: 'Egg',
                        ),
                        ColoredButton(
                          meals: 'Cake',
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        ColoredButton(
                          meals: 'Chieckin',
                        ),
                        ColoredButton(
                          meals: 'Meals',
                        ),
                        ColoredButton(
                          meals: 'Vegtables',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              actions: [
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(400, 10),
                          backgroundColor: Color.fromARGB(255, 166, 193, 207),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(3)),
                      child: const Text(
                        "Apply",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(400, 10),
                          backgroundColor: Color.fromARGB(255, 166, 193, 207),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(3)),
                      child: const Text(
                        "Clear",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
      child: const Icon(
        Icons.sort_outlined,
      ),
    );
  }
}
