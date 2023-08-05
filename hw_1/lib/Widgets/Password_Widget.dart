import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordWidget extends StatefulWidget {
  const PasswordWidget(
      {super.key, required this.textHint, this.inputType, this.iconTextFiel});

  final String textHint;
  final TextInputType? inputType;
  final IconData? iconTextFiel;

  @override
  State<PasswordWidget> createState() => _PasswordState();
}

class _PasswordState extends State<PasswordWidget> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 55,
      child: TextFormField(
        obscureText: isObscureText,
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
            suffix: IconButton(
                onPressed: () {
                  setState(() {
                    if (isObscureText) {
                      isObscureText = false;
                    } else {
                      isObscureText = true;
                    }
                  });
                },
                icon: Icon(
                    isObscureText ? Icons.visibility : Icons.visibility_off))),
      ),
    );
  }
}
