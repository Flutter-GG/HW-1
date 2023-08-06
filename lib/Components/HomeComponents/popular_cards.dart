import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const ImageCard({required this.imagePath, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 100,  // You can adjust the height and width as per your needs.
              width: 100,
            ),
          ),
          Container(
            width: 100, // Match with the width above for consistency
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
