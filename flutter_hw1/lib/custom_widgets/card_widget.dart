import "package:flutter/material.dart";
import "package:flutter_hw1/custom_widgets/texts_widget.dart";

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
      this.profileFontSize = 13});
  final String mainMealName;
  final String mainImageAsset;
  final String profileName;
  final String profileImageAsset;
  final double containerWidth;
  final double containerHeight;
  final double sizedBoxHeight;
  final double mainFontSize;
  final double profileFontSize;

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
                      isTextAlign: TextAlign.start,
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
                    onPressed: () {},
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

class CustomPopularRecipesCardWidget extends StatelessWidget {
  const CustomPopularRecipesCardWidget(
      {super.key,
      required this.mainMealName,
      this.mainImageAsset = "assets/images/error.jpg",
      this.mainFontSize = 16});
  final String mainMealName;
  final String mainImageAsset;
  final double mainFontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 140,
        height: 170,
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
          child: Expanded(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(mainImageAsset,
                    fit: BoxFit.cover, height: 100, width: 150),
              ),
              SizedBox(height: 15),
              Expanded(
                child: CustomTextWidget(
                  customText1: mainMealName,
                  customFontSize1: mainFontSize,
                  isBold1: false,
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
