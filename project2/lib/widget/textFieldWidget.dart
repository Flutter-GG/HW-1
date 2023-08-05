import 'package:flutter/material.dart';
import 'bold_text.dart';

class textFieldWidget extends StatelessWidget {
  const textFieldWidget({
    super.key,
    this.textInTextField = "",
    required this.textInHentInTextField,
    required this.iconInTextField,
    this.sizewidth = 50,
  });
  final String textInTextField;
  final String textInHentInTextField;
  final IconData iconInTextField;
  final int sizewidth;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bold_text(
            TextName: textInTextField,
            TextSize: 15,
          ),
          SizedBox(height: 15),
          Container(
            width: MediaQuery.of(context).size.width - sizewidth,
            height: MediaQuery.of(context).size.height - 875,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.grey.withOpacity(0.4),
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: textInHentInTextField,
                prefixIcon: Icon(
                  iconInTextField,
                  color: Colors.black.withOpacity(1),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscurePassword,
      decoration: InputDecoration(
        labelText: 'Password',
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _obscurePassword = !_obscurePassword;
            });
          },
          icon:
              Icon(_obscurePassword ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}

class MyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Field with Eye Icon'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            PasswordField(),
            // Add other form fields here
          ],
        ),
      ),
    );
  }
}
