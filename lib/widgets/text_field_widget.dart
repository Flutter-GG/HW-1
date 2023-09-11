import 'package:flutter/material.dart';
import 'package:hw1_alawashiz/widgets/text_widget.dart';

class TextFieldWidget extends StatefulWidget {
  TextFieldWidget(
      {super.key,
      required this.preIcon,
      required this.hint,
      required this.lable});

  final String lable;
  final Icon preIcon;
  final String hint;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.orange,
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextWidget(
            text: widget.lable,
            size: 20,
            isBold: true,
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: widget.hint,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              prefixIcon: widget.preIcon,
              suffixIcon:
                  (widget.lable.toLowerCase().compareTo("password") == 0)
                      ? GestureDetector(
                          onTap: () => setState(() {
                            isVisible = !isVisible;
                          }),
                          child: isVisible
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        )
                      : null,
            ),
            obscureText: widget.lable.toLowerCase().compareTo("password") == 0 && !isVisible,
          ),
        ],
      ),
    );
  }
}
