import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw_1/Widgets/Image_Widget.dart';
import 'package:hw_1/Widgets/Text_Widget.dart';

class EditorChoiceWidget extends StatelessWidget {
  const EditorChoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsetsDirectional.only(start: 10),
        child: Column(children: [
          Container(
            height: 115,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xff5d8d80).withOpacity(0.7)),
            child: Row(
              children: [
                Container(
                    padding: EdgeInsetsDirectional.only(start: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff5d8d80).withOpacity(0.7),
                    ),
                    child: ImageWidget(
                      image: 'assets/images/EggAndAvocado_img‏.jpg',
                      imageHeight: 100,
                      imageWidth: 80,
                      isCover: false,
                    )),
                const SizedBox(
                  width: 18,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 18,
                    ),
                    TextWidget(
                      text: "Easy homemade beef burger",
                      istextBold: true,
                      isColorOpacity: false,
                      size: 13,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/person_1_img.jpg'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        TextWidget(
                          text: "James Spade",
                          istextBold: false,
                          isColorOpacity: false,
                          size: 13,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 28,
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Color(0xff5d8d80),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Container(
            height: 115,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xff5d8d80).withOpacity(0.7)),
            child: Row(
              children: [
                Container(
                    padding: EdgeInsetsDirectional.only(start: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff5d8d80).withOpacity(0.7),
                    ),
                    child: ImageWidget(
                      image: 'assets/images/EggAndAvocado_img‏.jpg',
                      imageHeight: 100,
                      imageWidth: 80,
                      isCover: false,
                    )),
                const SizedBox(
                  width: 18,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    TextWidget(
                      text: "Blueberry with egg for breakfast",
                      istextBold: true,
                      isColorOpacity: false,
                      size: 12,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/person_2_img.jpg'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        TextWidget(
                          text: "James Spade",
                          istextBold: false,
                          isColorOpacity: false,
                          size: 13,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 28,
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Color(0xff5d8d80),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
