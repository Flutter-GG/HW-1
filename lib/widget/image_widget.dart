import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget(
      {super.key,
      this.path = "assets/images/imageInit.png",
      this.width = 50,
      this.url,
      this.isNetworking = false});
  final String? path;
  final double? width;
  final String? url;
  final bool? isNetworking;
  @override
  Widget build(BuildContext context) {
    return !isNetworking!
        ? Image.asset(
            path!,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return const Text("data");
            },
          )
        : Image.network(url!, width: width, fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
            return const Text("data");
          });
  }
}
