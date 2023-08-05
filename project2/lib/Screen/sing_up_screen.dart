import 'package:flutter/material.dart';
import 'package:project2/Screen/sign_In_screens.dart';
import 'package:project2/widget/buttonWidget.dart';
import 'package:project2/widget/smallText.dart';
import 'package:project2/widget/textFieldWidget.dart';

import '../widget/bold_text.dart';

class sing_up_screen extends StatelessWidget {
  const sing_up_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: bold_text(TextName: "Create Account"),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textFieldWidget(
                textInTextField: "User Name",
                textInHentInTextField: "User Name",
                iconInTextField: Icons.person_outlined,
              ),
              Row(
                children: [
                  textFieldWidget(
                    textInTextField: "First Name",
                    textInHentInTextField: "First Name",
                    iconInTextField: Icons.person_outlined,
                    sizewidth: 250,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  textFieldWidget(
                    textInTextField: "Last Name",
                    textInHentInTextField: "Last Name",
                    iconInTextField: Icons.person_outlined,
                    sizewidth: 250,
                  ),
                ],
              ),
              textFieldWidget(
                textInTextField: "Email Addres",
                textInHentInTextField: "Enter Email Addres ",
                iconInTextField: Icons.mail_outline,
              ),
              textFieldWidget(
                textInTextField: "Password",
                textInHentInTextField: "Enter Password",
                iconInTextField: Icons.lock_outline,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 15),
                child: buttonWidget(
                  Textinbutton: "Continue",
                  PageName: sign_in_screens(),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    smallText(TextName: "Be contining,you agree to the "),
                    bold_text(
                      TextName: 'Tearms of Service & Privacy Polisy',
                      TextSize: 13,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
