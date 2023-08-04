import 'package:flutter/material.dart';
import 'package:flutter_hw1/custom_widgets/texts_widget.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.mainMealName,
      this.mainImageAsset = 'assets/images/error.jpg',
      required this.profileName,
      this.profileImageAsset = 'assets/images/error.jpg',
      required this.containerWidth,
      this.containerHeight = 100});
  final String mainMealName;
  final String mainImageAsset;
  final String profileName;
  final String profileImageAsset;
  final double containerWidth;
  final double containerHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            width: containerWidth,
            height: containerHeight,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(mainImageAsset,
                        fit: BoxFit.cover, height: 80, width: 80),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          customText1: mainMealName,
                          customFontSize1: 16,
                          ifTextOverFlow: TextOverflow.clip,
                          isTextAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(500),
                              child: Image.asset(profileImageAsset,
                                  fit: BoxFit.cover, height: 20, width: 20),
                            ),
                            const SizedBox(width: 10),
                            CustomText(
                              customText1: profileName,
                              customFontColor1: Colors.grey,
                              isBold1: true,
                              customFontSize1: 13,
                              ifTextOverFlow: TextOverflow.clip,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                        ),
                        child: const Icon(Icons.arrow_forward, size: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
