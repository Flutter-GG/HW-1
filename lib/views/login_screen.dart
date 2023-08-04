import 'package:flutter/material.dart';
import 'package:yum/views/signup_screen.dart';
import 'package:yum/widget/button_widget.dart';
import 'package:yum/widget/text_widget.dart';
import '../widget/formfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          //replace with our own icon data.
        ),
        backgroundColor: const Color(0xffF8F8F8),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const TextWidget(
          text: "Login",
          color: Color(0xff042628),
          weight: FontWeight.w800,
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: const TextWidget(
                        text: "Email Address", size: 15,
                        weight: FontWeight.w600,
                        color: Color(0xff042628),
                        // textAlign: TextAlign.left,
                      ),
                    ),
                    Center(
                      child: Container(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          width: MediaQuery.of(context).size.width - 50,
                          child: const CustomTextFormField(
                            hintText: "Enter email address",
                            icon: Icons.email_outlined,
                          )),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: const TextWidget(
                        text: "Password", size: 15, weight: FontWeight.w600,
                        color: Color(0xff042628),
                        // textAlign: TextAlign.left,
                      ),
                    ),
                    Center(
                      child: Container(
                          width: MediaQuery.of(context).size.width - 50,
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: const CustomTextFormField(
                              hintText: "Enter password",
                              icon: Icons.lock_outlined,
                              isPassword: true)),
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            CustomElevatedButton(
                              title: 'Login',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextWidget(
                              text: "Forget password?",
                              weight: FontWeight.w800,
                              size: 15,
                            )
                          ],
                        )),
                  ],
                )),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Column(
                        children: [
                          const TextWidget(
                            text: "Or create account", size: 15,
                            weight: FontWeight.w600,
                            color: Colors.grey,
                            // textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomElevatedButton(
                              title: 'Sign Up',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignupScreen()),
                                );
                              }),
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
