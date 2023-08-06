import 'package:flutter/material.dart';
import 'package:health_food/widgets/textWidgets.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({super.key, required this.path,  this.width,  this.height,  this.isNetwork=false});
final String path;
  final double? width;
  final double? height;

  final bool isNetwork;
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: !isNetwork
          ? Image.asset(
              path,
              width: width,
              height: height,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => SizedBox(
                height: height,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Icon(
                      Icons.error,
                      color: Color(0Xff042628),
                      size: 40,
                    ),
                    TextWidget(
                      text: 'Image not found',
                      fSize: 13,
                    )
                  ],
                ),
              ),
            )
          : Image.network(
              path,
              width: width,
              height: height,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => SizedBox(
                height: height,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error,
                      color: Color(0Xff042628),
                      size: 40,
                    ),
                    TextWidget(
                      text: 'Image not found',
                      fSize: 13,
                    )
                  ],
                ),
              ),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress?.expectedTotalBytes == null) {
                  return child;
                }
                return const CircularProgressIndicator(
                  color:Color(0Xff042628),
                );
              },
            ),
    );
  }
}