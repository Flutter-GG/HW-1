import "package:flutter/material.dart";

/* this file for text field if the text, added functionality if the user click on the eye Icon the password will apear and hide,
I'm not expert at flutter and used this method from this video 'https://www.youtube.com/watch?v=oIGH3U-1PVY' and used chatGPT to understand it */
class CustomFieldsWidget extends StatefulWidget {
  const CustomFieldsWidget({
    Key? key,
    required this.label,
    required this.customFontSize,
    this.isBold = false,
    required this.customHintText,
    required this.customPrefixIcon,
    this.customSuffixIcon,
  }) : super(key: key);

  final String label;
  final double customFontSize;
  final bool isBold;
  final String customHintText;
  final Icon customPrefixIcon;
  final Icon? customSuffixIcon;

  @override
  _CustomFieldsWidgetState createState() => _CustomFieldsWidgetState();
}

class _CustomFieldsWidgetState extends State<CustomFieldsWidget> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: widget.customFontSize,
              fontWeight: widget.isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: MediaQuery.of(context).size.width,
            child: TextField(
              decoration: InputDecoration(
                hintText: widget.customHintText,
                prefixIcon: widget.customPrefixIcon,
                suffixIcon: widget.customSuffixIcon != null
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                        child: _isPasswordVisible
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      )
                    : null,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
              ),
              obscureText:
                  widget.customSuffixIcon != null ? !_isPasswordVisible : false,
            ),
          ),
        ],
      ),
    );
  }
}
