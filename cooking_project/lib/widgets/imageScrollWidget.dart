import 'package:flutter/material.dart';

class ImageScrollWidget extends StatelessWidget {
  const ImageScrollWidget(
      {super.key,
      this.path = 'assets/images/egg.png',
      required this.isNetworking,
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
