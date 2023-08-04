import 'package:flutter/material.dart';
import 'package:flutter_hw1/custom_widgets/texts_widget.dart';

/* this file for editor choice and I mean by that,
the card in the search page called 'editor's choice,
this will be the main cards for this section it has the meal image and name of the meal, also the profile and name of the creator of this meal
it has button to open the page of the meal but it doesn't work becouse I don't know how to style it */
class CustomEditorChoiceWidget extends StatelessWidget {
  const CustomEditorChoiceWidget(
      {super.key,
      required this.mainMealName,
      this.mainImageAsset = "assets/images/error.jpg",
      required this.profileName,
      this.profileImageAsset = "assets/images/error.jpg",
      required this.containerWidth,
      this.containerHeight = 100,
      this.sizedBoxHeight = 10,
      this.mainFontSize = 16,
      this.profileFontSize = 13,
      this.onPress});
  final String mainMealName;
  final String mainImageAsset;
  final String profileName;
  final String profileImageAsset;
  final double containerWidth;
  final double containerHeight;
  final double sizedBoxHeight;
  final double mainFontSize;
  final double profileFontSize;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    CustomTextWidget(
                      customText1: mainMealName,
                      customFontSize1: mainFontSize,
                      ifTextOverFlow: TextOverflow.clip,
                    ),
                    SizedBox(height: sizedBoxHeight),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(500),
                          child: Image.asset(profileImageAsset,
                              fit: BoxFit.cover, height: 25, width: 25),
                        ),
                        const SizedBox(width: 10),
                        CustomTextWidget(
                          customText1: profileName,
                          customFontColor1: Colors.grey,
                          isBold1: true,
                          customFontSize1: profileFontSize,
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
                    onPressed: onPress,
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
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
    );
  }
}
