import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_buttons/custom_button.dart';
import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_text_field.dart';
import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_headings/custom_title.dart';
import 'package:fahd_alsahali_week2_assignment/screens/pre_authentication/sign_up_page.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const CustomTitle(title: "Login"),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 25),
              CustomTextField(
                title: "Email Address",
                hint: "Enter Email Address",
                width: MediaQuery.of(context).size.width - 60,
                icon: Icons.email,
              ),
              const SizedBox(height: 25),
              CustomTextField(
                title: "Password",
                hint: "Enter Password",
                width: MediaQuery.of(context).size.width - 60,
                icon: Icons.password,
              ),
              const SizedBox(height: 25),
              CustomButton(
                width: MediaQuery.of(context).size.width - 50,
                buttonText: "Login",
                onPressed: () {},
              ),
              const SizedBox(height: 25),
              const Text(
                "Forget password?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xff042628),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Or Create new account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14, color: Colors.grey.withOpacity(0.8)),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                       width: MediaQuery.of(context).size.width - 50,
                      buttonText: "Sign up",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
