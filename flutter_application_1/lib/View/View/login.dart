import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/compunent/buttonClose.dart';
import 'package:flutter_application_1/View/compunent/textButtonTittle.dart';
import 'package:flutter_application_1/View/compunent/textfield.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: textButtonTittle(title: "Email Address", padding: 210)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(
              tittle: "Enter Email Address",
              width: 1,
              TextLogo: Icons.mail_outline,
              TextFieldheight: 400,
              TextFieldwidth: 100,
            ),
          ),
          textButtonTittle(title: "Passwoard", padding: 240),
          SizedBox(
            height: 15,
          ),
          textfield(
            tittle: "Enter Email Address",
            width: 1,
            TextLogo: Icons.lock_outline,
            TextFieldheight: 400,
            TextFieldwidth: 100,
          ),
          NavigationButton(
            title: "Login",
            TextcolorButton: Colors.white,
            colorButton: Colors.black,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Forgot Password?",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 300,
          ),
          Text(
            "or creat a new account",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w100,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          NavigationButton(
            title: "Sign Up",
            TextcolorButton: Colors.white,
            colorButton: Colors.black,
          ),
        ],
      ),
    );
  }
}
