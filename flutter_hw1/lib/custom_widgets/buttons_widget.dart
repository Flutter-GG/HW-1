import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons(
      {super.key,
      this.bgColor = Colors.black,
      this.fgColor = Colors.white,
      this.customFintSize = 16,
      this.isBold = true,
      required this.customText,
      required this.isElevatedButton});
  final Color bgColor;
  final Color fgColor;
  final double customFintSize;
  final bool isBold;
  final String customText;
  final bool isElevatedButton;

  @override
  Widget build(BuildContext context) {
    return isElevatedButton == true
        ? ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                fixedSize: Size(MediaQuery.of(context).size.width, 50),
                backgroundColor: bgColor,
                foregroundColor: fgColor),
            onPressed: () {},
            child: Text(
              customText,
              style: TextStyle(
                  fontSize: customFintSize,
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
            ),
          )
        : TextButton(
            onPressed: () {},
            child: Text(
              customText,
              style: const TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          );
  }
}

// class CustomTextButton extends StatelessWidget {
//   const CustomTextButton(
//       {super.key, required this.customText, required this.isBold});
//   final String customText;
//   final bool isBold;

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: () {},
//       child: Text(
//         customText,
//         style: TextStyle(
//             color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }
