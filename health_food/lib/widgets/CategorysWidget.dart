import 'package:flutter/material.dart';
import 'package:health_food/widgets/textWidgets.dart';

class CategorysWidget extends StatelessWidget {
  const CategorysWidget({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(
            text: title,
            Weight:FontWeight.bold,
            fSize: 20,
          ),
          TextButton(
              onPressed: () {},
              child: const TextWidget(
                text: 'View all',
                Weight:FontWeight.bold,
                color: Color(0Xff70B9BE),
              ))
        ],
      ),
    );
  }
}