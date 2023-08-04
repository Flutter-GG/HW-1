import 'package:flutter/material.dart';
import 'package:flutter_hw1/custom_widgets/app_bar_widget.dart';
import 'package:flutter_hw1/custom_widgets/buttons_widget.dart';
import 'package:flutter_hw1/custom_widgets/fields_widget.dart';
import 'package:flutter_hw1/custom_widgets/texts_widget.dart';
// import 'package:flutter_hw1/pages/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarWidget(page: 'Login'),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      const CustomFieldsWidget(
                          label: 'Email Address',
                          isBold: true,
                          customFontSize: 16,
                          customHintText: 'Email Address',
                          customPrefixIcon: Icon(Icons.email_outlined)),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomFieldsWidget(
                        label: 'Password',
                        isBold: true,
                        customFontSize: 16,
                        customHintText: 'Password',
                        customPrefixIcon: Icon(Icons.lock_outline),
                        customSuffixIcon: Icon(Icons.remove_red_eye_outlined),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButtonsWidget(
                          customText: "Login",
                          elevatedButtonWidth:
                              MediaQuery.of(context).size.width),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButtonsWidget(
                          fgColor: Colors.black,
                          customFontSize: 14,
                          isElevatedButton: false,
                          customText: 'Forgot password?',
                          elevatedButtonWidth:
                              MediaQuery.of(context).size.width),
                      const SizedBox(
                        height: 300,
                      ),
                      const CustomTextWidget(
                        customText1: 'Or Create new account',
                        isBold1: false,
                        customFontSize1: 12,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButtonsWidget(
                          customFontSize: 14,
                          customText: 'Sign Up',
                          elevatedButtonWidth:
                              MediaQuery.of(context).size.width)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
