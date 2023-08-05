import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.location, this.width = 40,
   this.height = 20, this.isFromNetwork = false});

  final String location;
  final double width;
  final double height;
  final bool isFromNetwork;

  @override
  Widget build(BuildContext context) {
    return isFromNetwork? 
    Image.network(location, width: width, height: height,): 
    Image.asset(location, width: width, height: height,);
  }
}