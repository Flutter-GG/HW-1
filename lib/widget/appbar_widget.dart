import 'package:flutter/material.dart';

import 'text_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.bgColor = const Color(0xff042628),
    required this.title,
  });
  final Color? bgColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColor,
      elevation: 0,
      iconTheme: const IconThemeData(color: Color(0xff042628)),
      title: TextWidget(
        text: title,
        color: const Color(0xff042628),
        weight: FontWeight.w800,
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back),
        //replace with our own icon data.
      ),
    );
  }
}
