import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/view/search_Screen.dart';
import 'package:flutter_application_1/view/signUp_Screen.dart';
import 'package:flutter_application_1/widgets/text_widget.dart';

import '../widgets/button_Widget.dart';
import '../widgets/password_Widget.dart';
import '../widgets/textField_Widget.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: const Center(
              child: TextWidget(
                text: 'Login',
                isBold: true,
                fontSize: 28,
              ),
            )),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
          child: Column(children: [
            Expanded(
              flex: 2,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const TextWidget(
                      text: 'Email Address',
                    ),
                    const TextFieldWidget(),
                    const TextWidget(
                      text: 'Password',
                    ),
                    const PasswordWidget(),
                    ButtonWidget(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchWidget())),
                      text: 'Login',
                    ),
                  ]),
            ),
            TextButton(
                onPressed: () {},
                child: TextWidget(
                  text: 'Forgot Password?',
                  isBold: true,
                  color: appColors[0],
                )),
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: TextWidget(
                        text: 'Or Create new account',
                        color: Colors.black38,
                      ),
                    ),
                    ButtonWidget(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp())),
                      text: 'Sign Up',
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ))
          ]),
        )));
  }
}
