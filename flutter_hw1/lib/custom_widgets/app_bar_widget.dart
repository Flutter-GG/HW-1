import 'package:flutter/material.dart';
import 'package:flutter_hw1/custom_widgets/texts_widget.dart';

/* this file for app bar widget */
class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({super.key, required this.page});
  final String page;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        // after changing the Icon I need to add onPressed finction to work as expected
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: CustomTextWidget(
        customText1: page,
        customFontSize1: 23,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
