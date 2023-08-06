import 'package:flutter/material.dart';
import 'package:hw1_alawashiz/data/editor_choice_data.dart';
import 'package:hw1_alawashiz/data/food.dart';
import 'package:hw1_alawashiz/widgets/app_bar_widget.dart';
import 'package:hw1_alawashiz/widgets/text_widget.dart';

class AllFood extends StatefulWidget {
  const AllFood({super.key});

  @override
  State<AllFood> createState() => _AllFoodState();
}

class _AllFoodState extends State<AllFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget("All food"),
      body: ListView.builder(
        // scrollDirection: Axis.horizontal,
        itemCount: AllFoodList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 8,
                ),
              ],
            ),
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(10),
            height: 100,
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    AllFoodList[index]["path"],
                    height: 80,
                    width: 80,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: "${AllFoodList[index]["name"]}",
                      size: 20,
                      isBold: true,
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
