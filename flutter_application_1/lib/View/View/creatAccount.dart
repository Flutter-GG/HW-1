import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/View/login.dart';
import 'package:flutter_application_1/View/View/search.dart';
import 'package:flutter_application_1/View/compunent/buttonClose.dart';
import 'package:flutter_application_1/View/compunent/textButtonTittle.dart';
import 'package:flutter_application_1/View/compunent/textfield.dart';
import 'package:flutter_application_1/View/compunent/textfieldsmall.dart';

class creatAccount extends StatelessWidget {
  const creatAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Creat Account",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: textButtonTittle(title: "Username", padding: 240),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: textfield(
                tittle: "Username",
                width: 1,
                TextLogo: Icons.person,
                TextFieldwidth: 100,
                TextFieldheight: 400),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                textButtonTittle(title: "First Name", padding: 20),
                SizedBox(
                  width: 50,
                ),
                textButtonTittle(title: "Last Name", padding: 30),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                textfieldsmall(
                  tittle: "First Name",
                ),
                SizedBox(
                  width: 40,
                ),
                textfieldsmall(
                  tittle: "Last Name",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: textButtonTittle(title: "Email Adress", padding: 210),
          ),
          SizedBox(
            height: 5,
          ),
          textfield(
              tittle: "Enter Email Adress ",
              width: 1,
              TextLogo: Icons.mail,
              TextFieldwidth: 100,
              TextFieldheight: 400),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: textButtonTittle(title: "Password", padding: 240),
          ),
          SizedBox(
            height: 5,
          ),
          textfield(
            tittle: "Enter Password",
            width: 1,
            TextLogo: Icons.lock_outline,
            TextFieldwidth: 100,
            TextFieldheight: 400,
            LeftTextLogo: Icons.remove_red_eye_outlined,
          ),
          NavigationButton(
            title: "Continue",
            TextcolorButton: Colors.white,
            colorButton: Color(0xff042627),
            a: login(),
          ),
          SizedBox(
            height: 20,
          ),
          Text("By continuing, you agree to the"),
          Text(
            "Terms of Services & Privacy Policy",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
