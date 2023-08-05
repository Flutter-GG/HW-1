import 'package:flutter/material.dart';

class ImageHomePage extends StatelessWidget {
  const ImageHomePage(
      {super.key,
      this.path = "assets/images/ImageHome.png",
      this.isNetworking = false,
      this.size});
  final String path;
  final bool isNetworking;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return !isNetworking
        ? Image.asset(
            path,
            width: size,
            errorBuilder: (context, error, stackTrace) {
              return const Text("error");
            },
          )
        : Image.network(
            path,
            width: size,
            height: size,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(
                Icons.error,
                color: Colors.red,
              );
            },
          );
  }
}
