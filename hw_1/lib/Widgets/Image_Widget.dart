import 'package:flutter/widgets.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget(
      {super.key,
      this.image = '',
      this.imageWidth,
      this.imageHeight,
      this.isCover = false});
  final String image;
  final double? imageWidth;
  final double? imageHeight;
  final bool? isCover;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: imageWidth,
      height: imageHeight,
      fit: isCover != true ? BoxFit.cover : BoxFit.contain,
    );
  }
}
