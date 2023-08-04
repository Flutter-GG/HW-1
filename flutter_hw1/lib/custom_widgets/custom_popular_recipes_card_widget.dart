import "package:flutter/material.dart";
import "package:flutter_hw1/custom_widgets/texts_widget.dart";

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
        height: 165,
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
