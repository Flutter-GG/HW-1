import 'dart:typed_data';

import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  TextFormFieldWidget({
    super.key,
    this.textHint = '',
    this.inputType,
    this.iconTextFiel,
  });

  final String textHint;
  final TextInputType? inputType;
  final IconData? iconTextFiel;

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        hintText: widget.textHint,
        fillColor: Colors.grey[300],
        prefixIcon: Icon(
          widget.iconTextFiel,
          color: const Color(0xff5d8d80).withOpacity(0.9),
        ),
      ),
    );
  }
}
