import 'package:flutter/material.dart';


class Titles extends StatefulWidget {
  final String rightHeadLine;
  final String txtButton;
  const Titles({
    required this.rightHeadLine,
    this.txtButton = "View all",
    Key? key,
  }) : super(key: key);

  @override
  State<Titles> createState() => _Titles();
}

class _Titles extends State<Titles> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.rightHeadLine,
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        const SizedBox(
          width: 150,
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 12),
          ),
          onPressed: () {},
          child: Text(
           widget.txtButton,
            style: const TextStyle(color: Colors.blueGrey),
          ),
        ),
       
       
      ],
    );
  }
}
