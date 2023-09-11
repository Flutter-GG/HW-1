import 'package:flutter/material.dart';
import 'package:hw1_alawashiz/widgets/text_widget.dart';

PreferredSizeWidget AppBarWidget(String title) {
  return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: TextWidget(
          text: title,
          color: Color.fromARGB(255, 9, 14, 14),
          size: 25,
          isBold: true),
      leading: const BackButton(
        color: Color(0xff042628),
      ));
}

/*
class AppBarWidget2 extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget2({super.key, this.title = "d"});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: TextWidget(
            text: " ",
            color: Color.fromARGB(255, 9, 14, 14),
            size: 25,
            isBold: true),
        leading: const BackButton(
          color: Color(0xff042628),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
*/