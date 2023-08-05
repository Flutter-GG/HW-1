import 'package:flutter/material.dart';
import 'package:hw_1/Widgets/Button_Widget.dart';
import 'package:hw_1/Widgets/Password_Widget.dart';
import 'package:hw_1/Widgets/TextField_widget.dart';
import 'package:hw_1/Widgets/Text_Widget.dart';
import 'package:hw_1/pages/search_page.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const TextWidget(
          text: 'Create Account',
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff5d8d80),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: ListTile(
                title: const TextWidget(
                    text: "Username",
                    size: 15,
                    istextBold: true,
                    isColorOpacity: true),
                subtitle: TextFormFieldWidget(
                  textHint: 'Username',
                  iconTextFiel: Icons.person_outlined,
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(children: [
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: const TextWidget(
                              text: "First Name",
                              size: 15,
                              istextBold: true,
                              isColorOpacity: true),
                          subtitle: TextFormFieldWidget(
                              textHint: 'First Name',
                              iconTextFiel: Icons.person_outlined),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: ListTile(
                          title: const TextWidget(
                              text: "Last Name",
                              size: 15,
                              istextBold: true,
                              isColorOpacity: true),
                          subtitle: TextFormFieldWidget(
                              textHint: 'Last Name',
                              iconTextFiel: Icons.person_outlined),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
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
                          inputType: TextInputType.emailAddress),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: ListTile(
                      title: const TextWidget(
                          text: "Password",
                          size: 15,
                          istextBold: true,
                          isColorOpacity: true),
                      subtitle: PasswordWidget(
                          textHint: 'Enter Password',
                          inputType: TextInputType.visiblePassword,
                          iconTextFiel: Icons.lock_outline),
                    ),
                  ),
                ])),
            const SizedBox(
              height: 80,
            ),
            ButtonsWidget(
                text: "Sign Up",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchPage()));
                }),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Column(
                children: [
                  TextWidget(
                      text: "By continuing, you agree to the",
                      isColorOpacity: false),
                  TextWidget(
                      text: " Terms of Services & Privacy Policy",
                      isColorOpacity: true,
                      istextBold: true),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
