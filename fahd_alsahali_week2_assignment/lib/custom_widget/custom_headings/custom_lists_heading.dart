import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_headings/custom_title.dart';
import 'package:flutter/material.dart';

class CustomListsHeading extends StatelessWidget {
  const CustomListsHeading({super.key,
  required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTitle(
            title: title,
          ),
          const Text(
            "View All",
            style: TextStyle(
                fontSize: 18,
                color: Color(0xff70B9BE),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
