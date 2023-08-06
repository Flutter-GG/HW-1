import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartImage extends StatelessWidget {
  const StartImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Image.asset(
        "assets/images/cock.jpeg",
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.fill,
      ),
    );
  }
}
