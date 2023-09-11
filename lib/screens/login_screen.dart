import 'package:flutter/material.dart';
import 'package:hw1_alawashiz/screens/creat_account.dart';
import 'package:hw1_alawashiz/screens/filter_screen.dart';
import 'package:hw1_alawashiz/screens/home_screen.dart';
import 'package:hw1_alawashiz/widgets/button_widget.dart';
import 'package:hw1_alawashiz/widgets/text_field_widget.dart';
import 'package:hw1_alawashiz/widgets/text_widget.dart';
import 'package:hw1_alawashiz/widgets/app_bar_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // to avoid problem when typing in a keyboard
      appBar: AppBarWidget("Login"),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(30), // Todo : have check
        child: Column(
          children: [
            TextFieldWidget(
              lable: "Email adress",
              hint: "Enter Email",
              preIcon: Icon(Icons.email_outlined),
            ),
            TextFieldWidget(
              lable: "Password",
              hint: "Enter the password",
              preIcon: Icon(Icons.lock_outline_rounded),
            ),
            ButtonWidget(
              text: "Login",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
            ButtonWidget(
              text: "Forgot password?",
              isTextButton: true,
              fgColor: Color(0xff042628),
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            SizedBox(
              height: 220,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextWidget(
                    text: "Or create a new account",
                    color: Colors.black54,
                    size: 16,
                  ),
                ),
                ButtonWidget(
                  text: "Sign Up",
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CreatAccount()));
                  },
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
