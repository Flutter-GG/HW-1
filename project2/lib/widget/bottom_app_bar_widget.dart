import 'package:flutter/material.dart';

class bottom_app_bar_widget extends StatelessWidget {
  const bottom_app_bar_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            SizedBox(width: 48),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle),
            ),
          ],
        ),
      ),
    );
  }
}
