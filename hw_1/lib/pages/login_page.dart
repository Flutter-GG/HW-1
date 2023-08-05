import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hw_1/Widgets/Button_Widget.dart';
import 'package:hw_1/Widgets/Password_Widget.dart';
import 'package:hw_1/Widgets/TextField_widget.dart';
import 'package:hw_1/Widgets/Text_Widget.dart';
import 'package:hw_1/pages/createAccount_page.dart';
import 'package:hw_1/pages/search_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const TextWidget(text: 'Search', isColorOpacity: false),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff5d8d80),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Column(
                children: [
                  Container(
                    child: ListTile(
                      title: const TextWidget(
                          text: "Email Address",
                          size: 15,
                          istextBold: true,
                          isColorOpacity: true),
                      subtitle: TextFormFieldWidget(
                        textHint: 'Enter Email Address',
                        iconTextFiel: Icons.email_outlined,
                        inputType: TextInputType.emailAddress,
                      ),
                    ),
                  ),
                  Container(
                    child: const ListTile(
                        title: TextWidget(
                            text: "Password",
                            size: 15,
                            istextBold: true,
                            isColorOpacity: true),
                        subtitle: PasswordWidget(
                            textHint: 'Enter Password',
                            inputType: TextInputType.visiblePassword,
                            iconTextFiel: Icons.lock_outline)),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Column(
                      children: [
                        ButtonsWidget(
                            text: "Login",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SearchPage()));
                            }),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    child: const TextWidget(
                        text: "Forgot password?",
                        size: 18,
                        istextBold: true,
                        isColorOpacity: true),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 250,
                ),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextWidget(
                        text: "Or Create new accoun",
                        size: 18,
                        istextBold: false,
                        isColorOpacity: false),
                  ),
                ),
                ButtonsWidget(
                    text: "Sign Up",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateAccountPage()));
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
