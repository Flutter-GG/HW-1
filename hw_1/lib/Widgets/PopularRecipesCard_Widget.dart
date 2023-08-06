import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw_1/Widgets/Image_Widget.dart';
import 'package:hw_1/Widgets/Text_Widget.dart';

class PopularRecipesCard extends StatelessWidget {
  const PopularRecipesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Color(0xff5d8d80).withOpacity(0.7),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff5d8d80).withOpacity(0.7),
                  ),
                  child: ImageWidget(
                    image: 'assets/images/EggAndAvocado_img‏.jpg',
                    imageHeight: 100,
                    imageWidth: 100,
                    isCover: false,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextWidget(
                  text: "Egg  & Avocado Toast",
                  istextBold: false,
                  isColorOpacity: false,
                  size: 15,
                ),
              ],
            ),
            width: 150,
            height: 155,
          ),
          const SizedBox(
            width: 18,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Color(0xff5d8d80).withOpacity(0.7),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff5d8d80).withOpacity(0.7),
                  ),
                  child: ImageWidget(
                    image: 'assets/images/SmoothieBowl_img.jpg',
                    imageHeight: 100,
                    imageWidth: 100,
                    isCover: false,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextWidget(
                  text: "Green Smoothie Bowl",
                  istextBold: false,
                  isColorOpacity: false,
                  size: 15,
                ),
              ],
            ),
            width: 150,
            height: 155,
          ),
          const SizedBox(
            width: 18,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Color(0xff5d8d80).withOpacity(0.7),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff5d8d80).withOpacity(0.7),
                  ),
                  child: ImageWidget(
                    image: 'assets/images/GrilledChicken_Img.jpg',
                    imageHeight: 100,
                    imageWidth: 100,
                    isCover: false,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextWidget(
                  text: "Grilled Chicken",
                  istextBold: false,
                  isColorOpacity: false,
                  size: 15,
                ),
              ],
            ),
            width: 150,
            height: 155,
          ),
        ],
      ),
    );
  }
}
