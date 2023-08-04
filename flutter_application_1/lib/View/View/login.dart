import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/View/buttonSheet.dart';
import 'package:flutter_application_1/View/View/creatAccount.dart';
import 'package:flutter_application_1/View/View/search.dart';
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
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: textButtonTittle(title: "Email Address", padding: 210)),
          Padding(
            padding: EdgeInsets.all(8.0),
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
            colorButton: Color(0xff042627),
            ViewName: search(),
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
            colorButton: Color(0xff042627),
            ViewName: creatAccount(),
          ),
        ],
      ),
    );
  }
}
