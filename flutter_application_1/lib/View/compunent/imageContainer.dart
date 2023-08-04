import 'package:flutter/material.dart';

class imageContainer extends StatelessWidget {
  const imageContainer({
    super.key,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.shadowColor,
    required this.opacity,
    required this.paddingImage,
    required this.widthImage,
    required this.heightImage,
    required this.borderRadiusImage,
    required this.titleFood,
    required this.containerColor,
    required this.assetsName,
  });
  final double width;
  final double height;
  final double borderRadius;
  final Color shadowColor;
  final double opacity;
  final double paddingImage;
  final double widthImage;
  final double heightImage;
  final double borderRadiusImage;
  final String titleFood;
  final Color containerColor;
  final String assetsName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: containerColor,
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(opacity),
            spreadRadius: 0.1,
            blurRadius: 7,
            offset: Offset(1, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.all(paddingImage),
          child: Container(
            width: widthImage,
            height: heightImage,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadiusImage),
                image: DecorationImage(
                    image: AssetImage(assetsName), fit: BoxFit.cover)),
          ),
        ),
        Text(
          titleFood,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}


// Container(
//               width: 100,
//               height: 100,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Colors.black,
//                 image: DecorationImage(
//                     image: AssetImage("assets/image/Easy Boiled Lobster.jpg"),
//                     fit: BoxFit.cover),
//               ),
//             )