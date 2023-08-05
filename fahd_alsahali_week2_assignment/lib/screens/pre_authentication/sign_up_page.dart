import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_buttons/custom_button.dart';
import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_text_field.dart';
import 'package:fahd_alsahali_week2_assignment/custom_widget/custom_headings/custom_title.dart';
import 'package:fahd_alsahali_week2_assignment/screens/main/search_screen.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const CustomTitle(title: "Create Account"),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTextField(
                title: "Username",
                hint: "Username",
                width: MediaQuery.of(context).size.width - 60,
                icon: Icons.person,
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    title: "First Name",
                    hint: "First Name",
                    width: (MediaQuery.of(context).size.width - 60) / 2 - 13,
                    icon: Icons.person,
                  ),
                  const SizedBox(width: 26),
                  CustomTextField(
                    title: "Last Name",
                    hint: "Last Name",
                    width: (MediaQuery.of(context).size.width - 60) / 2 - 13,
                    icon: Icons.person,
                  ),
                ],
              ),
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
                buttonText: "Continue",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: MediaQuery.of(context).size.width-140,
                child: RichText(
                  textAlign: TextAlign.center,
                  text:const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(text: "By continuing, you agree to the "),
                    TextSpan(text: "Terms of Services", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: " & "),
                    TextSpan(text: "Privacy Policy", style: TextStyle(fontWeight: FontWeight.bold)),
                  ]
                 ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
