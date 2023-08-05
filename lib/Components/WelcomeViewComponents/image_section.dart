import 'package:flutter/material.dart';

class TopImageSection extends StatelessWidget {
  const TopImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Image.asset(
        'assets/images/FryingPan.jpeg',
        fit: BoxFit.cover,
      ),
    );
  }
}
