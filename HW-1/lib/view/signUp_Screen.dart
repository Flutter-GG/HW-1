import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/search_Screen.dart';
import 'package:flutter_application_1/widgets/button_Widget.dart';
import 'package:flutter_application_1/widgets/password_Widget.dart';

import '../main.dart';
import '../widgets/textField_Widget.dart';
import '../widgets/text_widget.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                text: 'Create Account',
                isBold: true,
                fontSize: 28,
              ),
            )),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
                child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextWidget(
                          text: 'Username',
                        ),
                        const TextFieldWidget(
                            hintText: 'Username',
                            prefixIcon: Icons.account_circle_outlined),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextWidget(
                                  text: 'First Name',
                                ),
                                TextFieldWidget(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            25,
                                    hintText: 'First Name',
                                    prefixIcon: Icons.account_circle_outlined),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextWidget(
                                  text: 'Last Name',
                                ),
                                TextFieldWidget(
                                    hintText: 'Last Name',
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            25,
                                    prefixIcon: Icons.account_circle_outlined),
                              ],
                            )
                          ],
                        ),
                        const TextWidget(
                          text: 'Email Address',
                        ),
                        const TextFieldWidget(),
                        const TextWidget(
                          text: 'Password',
                        ),
                        const PasswordWidget(),
                        ButtonWidget(
                          text: 'Continue',
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SearchWidget())),
                        )
                      ]),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      const TextWidget(
                        text: 'By continuing, you agree to the ',
                        fontSize: 13,
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: TextWidget(
                                text: 'Terms of Services',
                                isBold: true,
                                color: appColors[0],
                                fontSize: 13,
                              )),
                          const TextWidget(text: '&'),
                          TextButton(
                              onPressed: () {},
                              child: TextWidget(
                                  text: 'Privacy Policy',
                                  isBold: true,
                                  fontSize: 13,
                                  color: appColors[0]))
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ))));
  }
}
