import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/widgets/text_widget.dart';

class SquareImage extends StatelessWidget {
  const SquareImage(
      {super.key, required this.path, this.size = 80, this.isNetwork = false});
  final String path;
  final double size;
  final bool isNetwork;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: !isNetwork
          ? Image.asset(
              path,
              width: size,
              height: size,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => SizedBox(
                height: size,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error,
                      color: appColors[0],
                      size: 40,
                    ),
                    const TextWidget(
                      text: 'Image not found',
                      fontSize: 13,
                    )
                  ],
                ),
              ),
            )
          : Image.network(
              path,
              width: size,
              height: size,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => SizedBox(
                height: size,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error,
                      color: appColors[0],
                      size: 40,
                    ),
                    const TextWidget(
                      text: 'Image not found',
                      fontSize: 13,
                    )
                  ],
                ),
              ),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress?.expectedTotalBytes == null) {
                  return child;
                }
                return CircularProgressIndicator(
                  color: appColors[0],
                );
              },
            ),
    );
  }
}
