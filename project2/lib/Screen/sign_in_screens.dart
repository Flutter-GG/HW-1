import 'package:flutter/material.dart';
import 'package:project2/Screen/search_screen.dart';
import 'package:project2/Screen/sing_up_screen.dart';
import 'package:project2/widget/bold_text.dart';
import 'package:project2/widget/buttonWidget.dart';
import 'package:project2/widget/smallText.dart';
import '../widget/textFieldWidget.dart';
import '../widget/text_button_widget.dart';

class sign_in_screens extends StatelessWidget {
  const sign_in_screens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: bold_text(TextName: "Login"),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textFieldWidget(
                textInTextField: "Email Address ",
                textInHentInTextField: "Enter Email Address",
                iconInTextField: Icons.mail_outline,
              ),
              textFieldWidget(
                textInTextField: "Password",
                textInHentInTextField: "Enter Password",
                iconInTextField: Icons.lock_outline,
              ),
              buttonWidget(
                Textinbutton: "Login",
                PageName: search_screen(),
              ),
              SizedBox(height: 10),
              text_button_widget(
                TextInButton: "Forgot Password",
                TexrWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 260,
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: smallText(TextName: "Or Create new account"),
                    ),
                    buttonWidget(
                        Textinbutton: "Sing Up", PageName: sing_up_screen())
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
