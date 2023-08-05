import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigatorBar extends StatelessWidget {
  const CustomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.transparent,
        color: Color.fromARGB(165, 54, 141, 140),
        items: const [
          Icon(Icons.home_outlined, size: 30,color: Colors.white,),
          Icon(Icons.cookie, size: 30, color: Colors.white,),
          Icon(Icons.person, size: 30, color: Colors.white,),
        ],
      );
  }
}